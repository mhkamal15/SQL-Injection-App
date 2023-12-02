# SQL Injection Application

**Developed by Malek Kamal for we45 Solutions India Pvt Ltd**

This web application demonstrates various security vulnerabilities related to SQL Injection. It allows users to execute SQL queries and demonstrates how unsafe queries can lead to data breaches.

## Features

- Execute SQL queries safely using prepared statements to prevent SQL Injection attacks.
- Simple web interface to input and execute SQL queries.
- Response display to view the results of executed queries.

## Development Details

- Developed in November 2023 by Malek Kamal for we45 Solutions India Pvt Ltd.
- Built with Java using the Spring Boot framework.
- Utilizes MySQL database for data storage.
- Dockerfile included for easy containerization and deployment.
- Uses Maven for dependency management and build automation.

## Prerequisites

- Java 11 or above installed
- Maven installed
- Docker (optional, for containerization)

## Installation and Usage

1. Clone the repository:
   ```
   git clone https://github.com/<your-username>/sql-injection-app.git
   cd sql-injection-app
   ```

2. Build the project:
   ```
   mvn clean package
   ```

3. Run the application:
   ```
   java -jar target/we45-sql-injection-app.jar
   ```

4. Access the application in your browser:
   ```
   http://localhost:8080/
   ```

## Configuration

The application's configuration properties can be modified in the `application.properties` file. You can customize the database connection details, such as URL, username, and password.

```properties
spring.datasource.url=jdbc:mysql://db-host:3306/my-database
spring.datasource.username=db-user
spring.datasource.password=db-password
```

## Docker Support

You can also run the application using Docker for easy containerization. Make sure Docker is installed and follow these steps:

1. Build the Docker image:
   ```
   docker build -t sql-injection-app .
   ```

2. Run the Docker container:
   ```
   docker run -p 8080:8080 sql-injection-app
   ```

## Contributing

Contributions are welcome! If you find any issues or have improvements to suggest, please open an issue or submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE.md). Feel free to use, modify, and distribute it.

---

#### Disclaimer

This project is intended for educational and demonstration purposes only. Use at your own risk. we45 Solutions India Pvt Ltd and Malek Kamal are not liable for any misuse or damage caused by utilizing this application.
