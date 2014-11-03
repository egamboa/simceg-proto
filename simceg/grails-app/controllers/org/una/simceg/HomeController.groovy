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
	
	def services(){
		render(view: "services")
	}
	def newUser(){
		render(view: "register", model: [user: new User()])
	}
	def register() {
		render('registrando')
	}
}
