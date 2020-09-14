# spring-boot-persistence-h2


**Step1:   
Generate a spring boot project**    
[https://start.spring.io/](https://start.spring.io/) and include the dependencies spring data jpa and h2 along with web

```xml
    <dependency>
		<groupId>org.springframework.boot</groupId>
		<artifactId>spring-boot-starter-data-jpa</artifactId>
	</dependency>
	
	<dependency>
		<groupId>com.h2database</groupId>
		<artifactId>h2</artifactId>
		<scope>runtime</scope>
	</dependency>

    <dependency>
	    <groupId>org.springframework.boot</groupId>
	    <artifactId>spring-boot-starter-web</artifactId>
    </dependency>
```

**Step2:  
Accessing h2 console**  
By default, the H2 console is not enabled in Spring.
To enable it, we need to add the following property to *application.properties*:

```
spring.h2.console.enabled=true

#set the DB name
spring.datasource.url=jdbc:h2:mem:myapplndb
```

After starting the application, we can navigate to *http://localhost:8080/h2-console*

By default, Spring Boot configures the application to connect to an in-memory store with the username **sa** and an empty password. 
We can override those parameters by adding the following properties to the application.properties file:

```yaml
spring.h2.console.enabled=true
spring.datasource.url=jdbc:h2:mem:myapplndb
spring.datasource.driverClassName=org.h2.Driver
spring.datasource.username=sa
spring.datasource.password=
```
**Step3:   
Seeding the DB**  
We can prepare **data.sql** and run it against the configured H2 database during application startup.   
Please the data.sql and place it under **resources** folder   
  
```sql
DROP TABLE IF EXISTS employee;

CREATE TABLE employee (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  first_name VARCHAR(250) NOT NULL,
  last_name VARCHAR(250) NOT NULL,
  salary INT DEFAULT NULL
);

INSERT INTO employee (first_name, last_name, salary) VALUES
  ('John', 'Mathew', '20000'),
  ('Ashi', 'C', '30000'),
  ('Diana', 'Martin', '28000');
```



**Happy Coding**

[//]: # (These are reference links used in the body of this note and get stripped out when the markdown processor does its job. There is no need to format nicely because it shouldn't be seen. Thanks SO - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax)

[readme editor]: <https://dillinger.io/>
[Ref1]: <https://www.baeldung.com/spring-boot-h2-database>
 

