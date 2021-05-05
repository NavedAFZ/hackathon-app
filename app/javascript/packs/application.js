// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
// import Rails from "@rails/ujs"
// import Turbolinks from "turbolinks"
// import * as ActiveStorage from "@rails/activestorage"
// import "channels"
// import "bootstrap"
// require('jquery')
// //  require('datatables')
// Rails.start()
// Turbolinks.start()
// ActiveStorage.start()

// require ('jquery_ujs')
//  require ('dataTables/jquery.dataTables')
//  require ('dataTables/bootstrap/3/jquery.dataTables.bootstrap')

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require( 'datatables.net-bs4' )
import $ from 'jquery';
global.$ = jQuery;