import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["printText"]

  connect() {
    console.log("Hello from our first Stimulus controller")
  }

  make_pdf() {

    const opt = {
      margin:       1,
      filename:     'mywillpdf',
      image:        { type: 'jpeg', quality: 1.00 },
      html2canvas:  { scale: 2 },
      jsPDF:        { unit: 'in', format: 'letter', orientation: 'portrait' }
    };
    html2pdf(this.printTextTarget.innerText, opt);
  }
}
