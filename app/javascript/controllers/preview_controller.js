import { Controller } from "@hotwired/stimulus";
import { marked } from "marked";

function parse(text) {
  return marked.parse(text);
}

export default class extends Controller {}
