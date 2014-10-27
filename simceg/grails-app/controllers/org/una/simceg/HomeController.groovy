package org.una.simceg

class HomeController {

    def index() {
		render(view: "index")
	}
	
	def about(){
		render(view: "about")
	}
	
	def contact(){
		render(view: "contact")
	}
}
