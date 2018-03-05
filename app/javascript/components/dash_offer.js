const showOffer = () => {
  const eventOnOffer = document.querySelectorAll("[data-product-id]")
  console.log(eventOnOffer)
  eventOnOffer.forEach( (element) => {
    element.addEventListener("click", (event) => {
      event.preventDefault();
      const productId = event.currentTarget.dataset.productId;
      const toggleElement = document.querySelector(`.dash-offer-details[data-offer-id='${productId}']`);
      toggleElement.classList.toggle("hidden")
    });
  });
};


export { showOffer };
