import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Disfruta de la mejor ropa de alquiler", "Reutiliza para ahorrar recursos", "Cuidando al mundo una prenda a la vez"],
      typeSpeed: 50,
      loop: true
    })
  }
}
