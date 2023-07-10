import { Application } from "@hotwired/stimulus"
import { application } from "./profiles_controller.js";


const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
