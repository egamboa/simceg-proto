class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
        "/register" (controller: "index")
        "/"(controller:"index")
        "500"(view:'/error')
	}
}
