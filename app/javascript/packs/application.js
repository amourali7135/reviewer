// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("trix")
require("@rails/actiontext")



// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
import { initSchedule } from '../plugins/init_schedule';
import {  initAutocomplete  } from "../plugins/init_autocomplete";
import { initSelect2} from "../plugins/init_select2";
import { initStarRating } from '../plugins/init_star_rating';
import { initRestaurantform } from "../plugins/init_restaurantform";
import { initReviewform } from "../plugins/init_reviewform";
import { initAttachmentnone } from "../plugins/init_attachmentnone";
import { initServiceform } from "../plugins/init_serviceform";
import { initChatroomCable } from "../channels/chatroom_channel";


document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  initSchedule();
  initAutocomplete();
  initSelect2();
  initStarRating();
  initRestaurantform();
  initReviewform();
  initAttachmentnone();
  initServiceform();
  initChatroomCable();
});

require("trix")
require("@rails/actiontext")