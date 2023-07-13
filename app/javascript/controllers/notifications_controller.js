import { Controller } from "@hotwired/stimulus";
import { createConsumer } from "@rails/actioncable"

export default class extends Controller {
  connect() {
    console.log("notifs ver.7");
    this.channel = createConsumer().subscriptions.create(
      { channel: "NotificationChannel" },
      { received: data => this.handleReceivedData(data) }
    );
  }

  disconnect() {
    console.log("Unsubscribed from the notifications")
    this.channel.unsubscribe()
  }

  handleReceivedData(data) {
    const messagesUnread = data.messages_unread;
    const footerElement = document.querySelector(".conversation-icon.notification");
    if (messagesUnread) {
      footerElement.classList.add("unread");
    } else {
      footerElement.classList.remove("unread");
    }
  }
}
