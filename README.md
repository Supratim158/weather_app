# ðŸŒ¦ï¸ Weather App

A cross-platform Flutter app to fetch and display current weather data based on your location or city name.

---

## ðŸ“Œ Table of Contents

- [About](#about)  
- [Screenshots](#screenshots)  
- [Features](#features)  
- [Getting Started](#getting-started)  
  - [Prerequisites](#prerequisites)  
  - [Installation](#installation)  
- [Usage](#usage)  
- [Environment Variables](#environment-variables)  
- [Testing](#testing)  
- [Supported Platforms](#supported-platforms)  
- [Project Structure](#project-structure)  
- [Contributing](#contributing)  
- [License](#license)  
- [Contact](#contact)

---

## About

The Weather App is a simple, intuitive application built using Flutter, allowing users to view live weather information. It leverages location services (GPS or manual city input) to display temperature, humidity, wind speed, weather condition, and a 5-day forecast.

---

## Screenshots

_Optional: Add screenshots for mobile, web, and desktop views here._

---

## Features

- âš™ï¸ Fetches current weather by GPS location or city name  
- ðŸŒ¡ï¸ Displays key metrics: temperature, humidity, wind speed, description, and icon  
- ðŸ“… Shows a 5-day weather forecast (if supported)  
- ðŸŒ Supports Android, iOS, Web, Windows, macOS, Linux  
- âš¡ Built with Flutterâ€™s latest stable release  

---

## Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) (â‰¥ `3.0.0`)  
- A weather API key (e.g., [OpenWeatherMap](https://openweathermap.org/))  
- Location permissions enabled on your device

### Installation

1. Clone the repo  
   ```bash
   git clone https://github.com/Supratim158/weather_app.git
   cd weather_app
   ```
2. Install dependencies  
   ```bash
   flutter pub get
   ```
3. Add your weather API key  
   - Rename `.env.example` to `.env`  
   - Insert your API key:  
     ```dotenv
     WEATHER_API_KEY=your_openweathermap_api_key
     ```
4. Enable location services on device/emulator.

---

## Usage

Run the app on your target platform:

- **Mobile (Android/iOS):**  
  ```bash
  flutter run
  ```
- **Web:**  
  ```bash
  flutter run -d chrome
  ```
- **Desktop (Windows/Linux/macOS):**  
  ```bash
  flutter run -d windows   # or macos/linux
  ```

Use the search bar or GPS button to retrieve weather data. Refresh or search for other cities to update.

---

## Environment Variables

Use the `flutter_dotenv` package to load API keys. Example:

```dart
import 'package:flutter_dotenv/flutter_dotenv.dart';

const apiKey = dotenv.env['WEATHER_API_KEY'];
```

---

## Testing

Basic tests are included in the `test/` directory:

```bash
flutter test
```

Tests cover weather data model serialization and API response handling.

---

## Supported Platforms

- âœ… Android  
- âœ… iOS  
- âœ… Web  
- âœ… Windows  
- âœ… macOS  
- âœ… Linux  

---

## Project Structure

```
lib/
â”œâ”€â”€ main.dart           - App entry point
â”œâ”€â”€ models/             - Data classes for weather & forecast
â”œâ”€â”€ services/           - API & location services
â”œâ”€â”€ screens/            - UI screens/widgets
â”œâ”€â”€ widgets/            - Custom reusable widgets
test/
â”œâ”€â”€ unit/               - Unit tests
â”œâ”€â”€ widget/             - Widget tests
```

---

## Contributing

Contributions welcome! To contribute:

1. Fork the repository  
2. Create a new branch (`git checkout -b feature/YourFeature`)  
3. Make your changes and add tests if applicable  
4. Open a Pull Request

Please follow Flutterâ€™s [style guidelines](https://flutter.dev/docs/development/tools/formatting).

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

## Contact

Created by **Supratim158**.  
Feel free to reach out via GitHub Discussions or open an issue.

---

â­ If you find this project useful, please **star** the repo! Good luck and happy coding. ðŸ˜Š