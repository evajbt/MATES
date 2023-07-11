import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

export default class extends Controller {
  static values = { conversationId: Number, currentUserId: Number }
  static targets = ["messages"]

  connect() {
    this.channel = createConsumer().subscriptions.create(
      { channel: "ConversationChannel", id: this.conversationIdValue },
      { received: data => this.#insertMessageAndScrollDown(data)}
    )
    console.log(`Subscribed to the conversation with the id ${this.conversationIdValue}.`)
    this.messagesTarget.scrollIntoView({ behavior: 'smooth', block: 'end' });
  }

  #insertMessageAndScrollDown(data) {
    const currentUserIsSender = this.currentUserIdValue === data.sender_id
    if (currentUserIsSender) {
      const userMessage = this.#buildUserMessage(data.message)
      this.messagesTarget.insertAdjacentHTML("beforeend", userMessage)
    } else {
      const otherMessage = this.#builOtherdUserMessage(data.message)
      this.messagesTarget.insertAdjacentHTML("beforeend", otherMessage)
    }

    this.messagesTarget.scrollIntoView({ behavior: 'smooth', block: 'end' });
  }

  #buildUserMessage(message) {
    return `
      <div class="message-user">
        <div class="bubble bubble-user">
          ${ message }
        </div>
      </div>
    `
  }

    #builOtherdUserMessage(message) {
    return `
      <div class="message-other">
        <div class="bubble bubble-other">
          ${ message }
        </div>
      </div>
    `
  }


  disconnect() {
    console.log("Unsubscribed from the chatroom")
    this.channel.unsubscribe()
  }

  resetForm(event) {
    event.target.reset()
  }
}
