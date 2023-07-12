import { Controller } from "@hotwired/stimulus"
import Typed from 'typed.js';

// Connects to data-controller="typedjs"
export default class extends Controller {
  connect() {
    console.log("Eva v2");
    const options = {
      strings: ["It's a match !"],
      typeSpeed: 100
    };
      new Typed(this.element, options);
  }
}
