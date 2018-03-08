// import flatpickr from "flatpickr"
// import "flatpickr/dist/flatpickr.min.css" // Note this is important!

// flatpickr(".datepicker", {})


import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css"
import { French } from "flatpickr/dist/l10n/fr.js"
// Note this is important!


flatpickr(".datepicker", {
     "locale": French,
     enableTime: true // locale for this instance only
   });
