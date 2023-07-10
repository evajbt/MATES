import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

document.addEventListener('ajax:success', (event) => {
  // Only fire for events originating from the profile update form
  if (!event.target.classList.contains('profile-update')) return;

  const [data, _status, xhr] = event.detail;
  const imageUrl = xhr.getResponseHeader('Location');

  if (imageUrl) {
    document.getElementById('profile-image').src = imageUrl;
  }
});

export { application }
