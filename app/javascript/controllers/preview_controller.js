import { Controller } from "@hotwired/stimulus";
import { marked } from "marked";

function parse(text) {
  return marked.parse(text);
}

export default class extends Controller {
  static targets = ["input", "output"];
  static values = { name: String };

  connect() {
    const value = this.inputTarget.value;

    this.outputTarget.innerHTML = parse(value);
  }

  updateOutput() {
    const value = this.inputTarget.value;

    const nameToCheck = this.nameValue;

    if (value.includes(nameToCheck)) {
      this.outputTarget.classList.add("error");
    } else {
      this.outputTarget.classList.remove("error");
    }
    this.outputTarget.innerHTML = parse(value);
  }
}
