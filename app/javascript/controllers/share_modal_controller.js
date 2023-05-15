import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  copyLink() {
    navigator.clipboard.writeText(this.element.dataset.shareUrl)
  }

  shareWhatsapp() {
    console.log('Whatsapp clicked');
  }

  shareFacebook() {
    console.log('Facebook clicked');
  }

  shareTwitter() {
    console.log('TwitterLink clicked');
  }
}