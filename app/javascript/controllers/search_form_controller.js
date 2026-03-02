import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["searchInput"]

  clearInput() {
    this.dispatch("clear", { detail: { isAlreadyEmpty: this.isEmpty } })
    if (!this.isEmpty) {
      this.searchInputTarget.value = ""
      this.searchInputTarget.focus()
    }
  }

  get isEmpty() {
    return !this.searchInputTarget.value
  }
}
