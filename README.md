# Arch - Flutter Clean Architecture Project

A Flutter project implementing clean architecture principles with a focus on maintainability, testability, and scalability.

## Project Structure

```
lib/
├── core/
│   ├── bloc/         # Base bloc classes for state management
│   ├── constants/    # App-wide constants
│   ├── di/          # Dependency injection setup
│   ├── errors/      # Error handling classes
│   ├── network/     # Network layer (API client, interceptors)
│   ├── theme/       # App theme configuration
│   └── utils/       # Utility functions and helpers
├── data/
│   ├── datasources/ # Data sources (remote and local)
│   ├── models/      # Data models
│   └── repositories/# Repository implementations
├── domain/
│   ├── entities/    # Business objects
│   ├── repositories/# Repository interfaces
│   └── usecases/   # Business logic use cases
├── presentation/
│   ├── bloc/        # Feature-specific blocs
│   ├── pages/       # UI pages/screens
│   └── widgets/     # Reusable widgets
└── main.dart        # App entry point
```

## Architecture Overview

### Core Layer
- **Bloc**: Base classes for state management using flutter_bloc
- **Network**: API client setup with Dio, including interceptors for logging and error handling
- **Theme**: Material theme configuration with light and dark mode support
- **DI**: Dependency injection using get_it and injectable

### Data Layer
- Implements repository interfaces from the domain layer
- Handles data sources (API, local storage)
- Contains data models and their serialization

### Domain Layer
- Contains business logic
- Defines repository interfaces
- Contains use cases that implement business rules

### Presentation Layer
- UI components (pages and widgets)
- Feature-specific blocs
- Handles user interaction and state management

## State Management
- Uses flutter_bloc for state management
- Each feature has its own bloc with states and events
- Clean separation of concerns between UI and business logic

## Error Handling
- Custom error classes for different types of errors
- Global error handling middleware
- User-friendly error messages
- Error logging and reporting

## API Request Handling
- Repository pattern for data operations
- Dio for HTTP requests
- Interceptors for logging, error handling, and authentication
- Response caching where appropriate

## Getting Started

1. Clone the repository
2. Run `flutter pub get` to install dependencies
3. Run `flutter pub run build_runner build` to generate necessary files
4. Run the app using `flutter run`

## Dependencies

- flutter_bloc: State management
- dio: HTTP client
- get_it & injectable: Dependency injection
- freezed: Code generation for immutable models
- equatable: Value equality
- shared_preferences: Local storage
- hive: Local database

## Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a new Pull Request
