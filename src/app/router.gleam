import app/pages
import app/pages/layout.{layout}
import app/routes/routes.{items_middleware}
import app/web.{type Context}
import gleam/http
import lustre/element
import wisp.{type Request, type Response}

pub fn handle_request(req: Request, ctx: Context) -> Response {
  use req <- web.middleware(req, ctx)
  use ctx <- items_middleware(req, ctx)
  case wisp.path_segments(req) {
    // Homepage
    [] -> {
      layout([pages.home(ctx.items)])
      |> element.to_document_string_tree()
      |> wisp.html_response(200)
    }

    ["items", "create"] -> {
      use <- wisp.require_method(req, http.Post)
      routes.post_create_item(req, ctx)
    }

    ["items", id] -> {
      use <- wisp.require_method(req, http.Delete)
      routes.delete_item(req, ctx, id)
    }

    ["items", id, "completion"] -> {
      use <- wisp.require_method(req, http.Patch)
      routes.patch_toggle_todo(req, ctx, id)
    }

    // All the empty responses
    ["internal-server-error"] -> wisp.internal_server_error()
    ["unprocessable-entity"] -> wisp.unprocessable_entity()
    ["method-not-allowed"] -> wisp.method_not_allowed([])
    ["entity-too-large"] -> wisp.entity_too_large()
    ["bad-request"] -> wisp.bad_request()
    _ -> wisp.not_found()
  }
}
