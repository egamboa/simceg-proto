import org.hibernate.sql.Update;

dataSource {
  pooled = true
  driverClassName = "com.mysql.jdbc.Driver"
  dialect = 'org.hibernate.dialect.MySQL5InnoDBDialect'
  properties {
      maxActive = 50
      maxIdle = 25
      minIdle = 1
      initialSize = 1
 
      numTestsPerEvictionRun = 3
      maxWait = 10000
 
      testOnBorrow = true
      testWhileIdle = true
      testOnReturn = true
 
      validationQuery = "select now()"
 
      minEvictableIdleTimeMillis = 1000 * 60 * 5
      timeBetweenEvictionRunsMillis = 1000 * 60 * 5
   }
}
hibernate {
  cache.use_second_level_cache=true
  cache.use_query_cache=true
  cache.provider_class='net.sf.ehcache.hibernate.EhCacheProvider'
}
// environment specific settings
environments {
  development {
    dataSource {
      dbCreate = "update" // one of 'create', 'create-drop','update'
      url = "jdbc:mysql://localhost:3306/simceg"
      username = "root"
      password = "root"
      //loggingSql = trued
    }
  }
  test {
    dataSource {
      dbCreate = "none" // one of 'create', 'create-drop','update'
      url = "jdbc:mysql://localhost:3306/simceg"
      username = "root"
      password = "root"
      //loggingSql = trued
    }
  }
  production {
    dataSource {
      dbCreate = "none" // one of 'create', 'create-drop','update'
      url = "jdbc:mysql://localhost:3306/simceg"
      username = "root"
      password = "root"
      //loggingSql = trued
    }
  }
}