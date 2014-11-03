// Place your Spring DSL code here
beans = {
	localeResolver(FixedLocaleResolver) {
		locale = new Locale("es", "ES")
	 }
}
