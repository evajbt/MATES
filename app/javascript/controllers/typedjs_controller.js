import { Controller } from "@hotwired/stimulus";
import Typed from 'typed.js';

export default class extends Controller {
  connect() {
    console.log("Eva v2");
    const options = {
      strings: ["It's a match !"],
      typeSpeed: 100,
      showCursor: false // sans cursor
    };
    new Typed(this.element, options);
  }
}
