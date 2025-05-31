import gleam/option.{type Option}
import wisp

pub type ItemStatus {
  Completed
  Uncompleted
}

pub type Item {
  Item(id: String, title: String, status: ItemStatus)
}

pub fn create_item(
  id: Option(String),
  title: String,
  is_completed: Bool,
) -> Item {
  let id = option.unwrap(id, wisp.random_string(64))
  case is_completed {
    True -> Item(id: id, title: title, status: Completed)
    False -> Item(id: id, title: title, status: Uncompleted)
  }
}

pub fn toggle_todo(item: Item) -> Item {
  let new_status = case item.status {
    Completed -> Uncompleted
    Uncompleted -> Completed
  }
  Item(..item, status: new_status)
}

pub fn check_status(status: ItemStatus) -> Bool {
  case status {
    Completed -> True
    Uncompleted -> False
  }
}
