package com.hangar.anadep
import grails.plugin.springsecurity.userdetails.GrailsUser
import org.springframework.security.core.GrantedAuthority
import org.springframework.security.core.userdetails.User

class MyUserDetails extends GrailsUser {

   final String name
   MyUserDetails(String username, String name, String password, boolean enabled,
                 boolean accountExpired, boolean accountLocked,
                 boolean passwordExpired,String email,
                 long id) {
      super(username, name, password, enabled, accountExpired,
            accountLocked, passwordExpired, email, id)
      this.name = name
   }
}


  