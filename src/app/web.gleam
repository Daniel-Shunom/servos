import app/codes
import app/models/item.{type Item}
import gleam/bool
import gleam/string_tree
import wisp

pub type Context {
  Context(static_dir: String, items: List(Item))
}

fn build_res(msg: String, res: wisp.Response) -> wisp.Response {
  string_tree.from_string(msg)
  |> wisp.html_body(res, _)
}

pub fn middleware(
  req: wisp.Request,
  ctx: Context,
  handle_req: fn(wisp.Request) -> wisp.Response,
) -> wisp.Response {
  let req = wisp.method_override(req)
  use <- wisp.serve_static(req, under: "/static", from: ctx.static_dir)
  use <- wisp.log_request(req)
  use <- wisp.rescue_crashes()
  use req <- wisp.handle_head(req)
  use <- def_response()

  handle_req(req)
}

pub fn def_response(handle_req: fn() -> wisp.Response) -> wisp.Response {
  let res = handle_req()
  use <- bool.guard(when: res.body != wisp.Empty, return: res)
  case res.status {
    404 | 405 -> build_res(codes.not_found(), res)
    400 | 422 -> build_res(codes.bad_request(), res)
    413 -> build_res(codes.too_large(), res)
    500 -> build_res(codes.server_error(), res)
    _ -> res
  }
}
