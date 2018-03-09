const stepForm = () => {
  const step = document.getElementById("step-1");
  const next = document.getElementById("next");
  const step2 = document.getElementById("step-2");
    // console.log("hello")
  if (step) {
    next.addEventListener("click", (event) => {
      event.preventDefault();
      // event.stopPropagation();
      step.classList.add('hidden');
      step2.classList.remove('hidden');

    });
  }
}


const stepBack = () => {
  const step2 = document.getElementById("step-2");
  const previous = document.getElementById("previous");
  const step = document.getElementById("step-1");
  if (previous) {
    previous.addEventListener("click", (event) => {
      event.preventDefault();
      step2.classList.add("hidden");
      step.classList.remove("hidden");
    });
  }

}

export  { stepForm, stepBack };

