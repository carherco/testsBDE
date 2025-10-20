# Symfony Exam Simulator

This is a Symfony 6.4 application that transforms the original PHP exam simulator into a modern Symfony application.

## Features

- Topic selection for exams
- Configurable number of questions and time limits
- Timer functionality
- Results with detailed feedback
- Dark mode toggle
- Responsive Bootstrap design

## Setup Instructions

### 1. Database Setup

Make sure you have MySQL running and the `testsBDE` database exists with data.

If you need to create the database and import data:

```bash
# Create database (if needed)
mysql -u root -p -e "CREATE DATABASE IF NOT EXISTS testsBDE CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"

# Import the original data
mysql -u root -p testsBDE < ../sql/create_tables.sql
```

### 2. Configure Database Connection

Update the `.env` file with your MySQL credentials:

```
DATABASE_URL="mysql://username:password@127.0.0.1:3306/testsBDE?serverVersion=8.0.32&charset=utf8mb4"
```

### 3. Install Dependencies

```bash
composer install
```

### 4. Run the Application

```bash
# Using Symfony CLI (recommended)
symfony serve

# Or using PHP built-in server
php -S localhost:8000 -t public
```

### 5. Access the Application

Open your browser and go to:
- http://localhost:8000 (if using Symfony CLI)
- http://localhost:8000 (if using PHP built-in server)

## Project Structure

```
src/
├── Controller/
│   └── ExamController.php      # Main controller with all exam logic
├── Entity/
│   ├── Tema.php               # Topic entity
│   └── Pregunta.php           # Question entity
templates/
├── base.html.twig             # Base template
└── exam/
    ├── index.html.twig        # Home page with topic selection
    ├── exam.html.twig         # Exam page
    └── result.html.twig       # Results page
public/
├── css/
│   └── style.css              # Custom styles
└── js/
    └── dark-toggle.js         # Dark mode functionality
```

## Key Differences from Original PHP App

1. **MVC Architecture**: Proper separation of concerns with controllers, entities, and templates
2. **Doctrine ORM**: Database operations using Doctrine instead of raw MySQL queries
3. **Twig Templates**: Template engine for better separation of logic and presentation
4. **Symfony Components**: Leveraging Symfony's routing, forms, and other components
5. **Modern PHP**: Using PHP 8+ features like attributes and match expressions

## Database Schema

The application uses the same database schema as the original:

- `temas` table: Contains exam topics
- `preguntas` table: Contains questions with multiple choice options

## Troubleshooting

### Database Connection Issues

1. Verify MySQL is running
2. Check database credentials in `.env`
3. Ensure the `testsBDE` database exists
4. Verify the database contains the required tables and data

### Permission Issues

Make sure the `var/` directory is writable:

```bash
chmod -R 777 var/
```

## Development

To add new features or modify the application:

1. Controllers are in `src/Controller/`
2. Templates are in `templates/`
3. Entities are in `src/Entity/`
4. Static assets are in `public/`

The application follows Symfony best practices and conventions.
