import app/models/item.{type Item}
import app/pages/home
import lustre/element.{type Element}

pub fn home(items: List(Item)) -> Element(t) {
  home.root(items)
}
