import { Controller } from '@hotwired/stimulus'
import ldBar from '@loadingio/loading-bar'

export default class extends Controller {
  // static targets = [ 'test' ]

  connect() {
    console.log(this.element)
    // console.log(this.testTarget)
    new ldBar(
      ".ldBar", /* Element or Selector for target element */
      {} /* check Reference for supported options */
    );
  }
}
