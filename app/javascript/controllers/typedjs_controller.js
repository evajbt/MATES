import { Controller } from "@hotwired/stimulus"
import Typed from 'typed.js';

export default class extends Controller {
  static targets = ["input"];

  connect() {
    var options = {
      strings: ["Say hi to your mate!"],
      typeSpeed: 30,
      showCursor: false
    };
    new Typed(this.inputTarget, options);
  }
}
