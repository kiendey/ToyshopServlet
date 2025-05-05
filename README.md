# ToyshopServlet
A Commerce website made with Java Servlet

## Description
ToyshopServlet is an e-commerce web application built using Java Servlet technology. It provides a platform for selling toys online with features for both customers and administrators.

## Features
- User authentication and authorization
- Product browsing and searching
- Shopping cart functionality
- Order management
- Admin dashboard
- Product management (CRUD operations)
- Responsive design

## Technologies Used
- Java Servlet
- JSP (JavaServer Pages)
- Hibernate for database connectivity
- MySQL Database
- HTML/CSS
- JavaScript
- Bootstrap for responsive design

## Prerequisites
- JDK 8 or higher
- Apache Tomcat 8.5 or higher
- MySQL 5.7 or higher
- Maven (for dependency management)

## Setup and Installation
1. Clone the repository
```bash
git clone https://github.com/yourusername/ToyshopServlet.git
```

2. Configure MySQL database
- Create a new database named `toyshop`
- Import the provided SQL script from `database/toyshop.sql`

3. Configure database connection
- Update `src/main/resources/database.properties` with your database credentials

4. Build the project
```bash
mvn clean install
```

5. Deploy to Tomcat server
- Copy the generated WAR file to Tomcat's webapps directory
- Start Tomcat server

## Project Structure
```
ToyshopServlet/
├── src/
│   ├── main/
│   │   ├── java/         # Java source files
│   │   ├── webapp/       # Web resources
│   │   └── resources/    # Configuration files
│   └── test/            # Test files
├── database/           # Database scripts
└── pom.xml            # Maven configuration
```

## Usage
- Access the application at: `http://localhost:8080/ToyshopServlet`
- Default admin credentials:
  - Username: admin
  - Password: admin123

## Contributing
Contributions are welcome! Please feel free to submit pull requests.

## License
This project is licensed under the MIT License - see the LICENSE file for details.
