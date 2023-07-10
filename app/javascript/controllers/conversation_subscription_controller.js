import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

export default class extends Controller {
  static values = { conversationId: Number }
  static targets = ["messages"]

  connect() {
    this.currentUserId = document.body.dataset.currentUserId;

    console.log(this.messagesTarget)
    this.channel = createConsumer().subscriptions.create(
      { channel: "ConversationChannel", id: this.conversationIdValue },
      { received: data => this.#insertMessageAndScrollDown(data)}
    )
    console.log(`Subscribed to the conversation with the id ${this.conversationIdValue}.`)
  }

  #insertMessageAndScrollDown(data) {
    const tempDiv = document.createElement('div');
    tempDiv.innerHTML = data;

    const newMessage = tempDiv.firstChild;

    const userId = newMessage.dataset.userId;
    console.log('UserId: ', userId, ', CurrentUserId: ', this.currentUserId);
    if (userId == this.currentUserId) {
      newMessage.classList.add('message-user');
      newMessage.querySelector('.bubble').classList.add('bubble-user');
    } else {
      newMessage.classList.add('message-other');
      newMessage.querySelector('.bubble').classList.add('bubble-other');
    }

    this.messagesTarget.appendChild(newMessage);
    this.messagesTarget.scrollIntoView({ behavior: 'smooth', block: 'end' });
  }

  disconnect() {
    console.log("Unsubscribed from the chatroom")
    this.channel.unsubscribe()
  }

  resetForm(event) {
    event.target.reset()
  }
}
