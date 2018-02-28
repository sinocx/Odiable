const stepForm = () => {
  const step = document.getElementById("step-1");
  const next = document.getElementById("next");
  const step2 = document.getElementById("step-2");
    // console.log("hello")
    next.addEventListener("click", (event) => {
      event.preventDefault();
      // event.stopPropagation();
      step.classList.add('hidden');
      step2.classList.remove('hidden');

    });
}


const stepBack = () => {
  const step2 = document.getElementById("step-2");
  const previous = document.getElementById("previous");
  const step = document.getElementById("step-1");

  previous.addEventListener("click", (event) => {
    event.preventDefault();
    step2.classList.add("hidden");
    step.classList.remove("hidden");
  });

}

export  { stepForm, stepBack };


// document.addEventListener("keyup", (event) => {
//   // console.log(event)
//   // const go = document.querySelector(".active")
//   // go.classList.remove("active")
//   // go.nextElementSibling.classList.add("active")

//   if (event.key === "q") {
//     const player1 = document.querySelector("#player1_race .active");
//     player1.classList.remove("active");
//     player1.nextElementSibling.classList.add("active");
//     player1.classList.add("red");
//     if (document.querySelector("#player1_race .active") === document.querySelector("#player1_race .last")) {
//       alert("Player 1 win");
//       location.reload();
//     }
//   } else if (event.key === "p") {
//     const player2 = document.querySelector("#player2_race .active");
//     player2.classList.remove("active");
//     player2.nextElementSibling.classList.add("active");
//     player2.classList.add("blue");
//     if (document.querySelector("#player2_race .active") === document.querySelector("#player2_race .last")) {
//       alert("Player 2 win");
//       location.reload();
//     }
//   }
// });
