// Load all the controllers within this directory and all subdirectories.
// Controller files must be named *_controller.js.

import { Application } from "@hotwired/stimulus"
import Carousel from 'stimulus-carousel'
import { definitionsFromContext } from "stimulus/webpack-helpers"


const application = Application.start()
application.register('carousel', Carousel)
const context = require.context("controllers", true, /_controller\.js$/)
application.load(definitionsFromContext(context))
