// Place your Spring DSL code here
beans = {
 	//userDetailsService(com.una.simceg.MyUserDetailsService)
 	localeResolver(org.springframework.web.servlet.i18n.SessionLocaleResolver) {
      defaultLocale = new Locale("en","EN")
      java.util.Locale.setDefault(defaultLocale)
   }
}
