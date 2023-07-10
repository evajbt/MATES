import { Controller } from "@hotwired/stimulus";
import Hammer from "hammerjs";

export default class extends Controller {
  static targets = ['card'];

  connect() {
    console.log("on tinder pas ns ? ver. 44");

    // Initialize Hammer.js
   this.cardTargets.forEach(cardElement => {
      const hammer = new Hammer(cardElement);

      // Add swipe event listeners
      hammer.on("swipeleft", this.handleSwipeLeft.bind(this));
      hammer.on("swiperight", this.handleSwipeRight.bind(this));
    });

    this.cardTargets.forEach((cardElement, index) => {
      if (index === 0) {
        cardElement.style.transform = "none";
      } else {
        const rotationOffset = this.#randomRotationOffset();
      const limitedRotation = this.#limitedRotationOffset(index);
      const scalingFactor = this.#scalingFactor(index);
      cardElement.style.transition = 'transform 0.3s ease'; // Adjust transition duration and easing as desired
      cardElement.style.willChange = 'transform';
      cardElement.style.transform = `translate(0, 0) rotateZ(calc(${rotationOffset}deg + (${index} - 1) * 2deg)) translateY(calc((${index} - 1) * 10px)) rotateZ(calc(${limitedRotation}deg)) scale(${scalingFactor})`;
      }
    });
  }

  #randomRotationOffset() {
    const minRotation = -5; // Adjust the minimum rotation angle as desired
    const maxRotation = 5; // Adjust the maximum rotation angle as desired
    return Math.floor(Math.random() * (maxRotation - minRotation + 1)) + minRotation;
  }

  #limitedRotationOffset(index) {
    const maxRotation = 5; // Adjust the maximum rotation angle as desired
    return Math.min((index - 1) * 2, maxRotation);
  }

  #scalingFactor(index) {
    const scaleFactor = 0.95; // Adjust the scaling factor as desired
    return Math.pow(scaleFactor, index - 1);
  }

   handleSwipeLeft(event) {
    event.preventDefault();
    const cardElement = event.target.closest(".search-card");
    cardElement.classList.add('animate__animated', 'animate__fadeOutBottomLeft');
    this.#displayNextCardInfos(cardElement);
  }

  handleSwipeRight(event) {
    event.preventDefault();
    const cardElement = event.target.closest(".search-card");
    cardElement.classList.add('animate__animated', 'animate__fadeOutTopRight');
    this.#displayNextCardInfos(cardElement);
    const form = cardElement.querySelector("form");
    const formData = new FormData(form);

    fetch(form.action, {
      method: form.method,
      headers: { "Accept": "application/json" },
      body: formData
    })
      .then(response => response.json())
      .then(data => {
        console.log(data);
        // Handle the response data as needed
      })
      .catch(error => {
        console.error("Error:", error);
        // Handle any errors that occur during the fetch request
    });
  }

  #displayNextCardInfos(cardElement) {
    const nextCard = cardElement.nextElementSibling;
    if (nextCard) {
      nextCard.style.transform = "none";
      nextCard.querySelectorAll(".search-card-infos").forEach(info => {
        info.classList.toggle("hidden");
      });
      nextCard.classList.remove("hidden");
    }
  }

}
