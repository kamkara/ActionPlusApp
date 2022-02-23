// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"


// application.js
import "trix"
import "@rails/actiontext"



// add this line
const images = require.context('../images', true)


// import js components
//import "./components/wow.min.js"
//import "./components/easing.min.js"
//import "./components/waypoints.min.js"
//import "./components/owl.carousel.min.js"
//import "./components/main.js"

