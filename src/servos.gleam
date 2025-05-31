import app/router
import app/web.{Context}
import dot_env
import dot_env/env
import gleam/erlang/process
import mist
import wisp
import wisp/wisp_mist

fn initialize_env() -> Nil {
  dot_env.new()
  |> dot_env.set_path(".env")
  |> dot_env.set_debug(False)
  |> dot_env.load()
}

fn get_static_dir() -> String {
  //NOTE -> pass in the root directory
  let assert Ok(priv_dir) = wisp.priv_directory("servos")
  priv_dir <> "/static"
}

fn get_env(val_key: String) -> String {
  let assert Ok(secret) = env.get_string(val_key)
  secret
}

pub fn main() {
  wisp.configure_logger()
  initialize_env()

  let ctx = Context(static_dir: get_static_dir(), items: [])
  let hnd = router.handle_request(_, ctx)

  let assert Ok(_) =
    get_env("SECRET_KEY")
    |> wisp_mist.handler(hnd, _)
    |> mist.new()
    |> mist.port(8000)
    |> mist.start_http()

  process.sleep_forever()
}
