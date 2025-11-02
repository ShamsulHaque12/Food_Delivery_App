# Food Delivery App

A simple Flutter food-delivery demo app built mainly with StatefulWidgets. Users can browse categories and restaurants, view food details, add items to a shopping bag, mark favorites, and update their profile. Basic auth flow (splash → onboarding → login/signup → forgot password → verification) is included.

## Key Features
- Authentication: splash, onboarding sliders, login, signup, forgot password, OTP verification.
- Home & Browse: categories, featured items, restaurant pages.
- Food Details: size/options, quantity selector, add to cart.
- Shopping Bag: view/edit cart, item quantity, remove item, subtotal.
- Favorites: mark/unmark favorite items.
- Profile: view and update user information.
- Bottom navigation and reusable popup/modal components.

## Quick Start
Requirements: Flutter SDK, Android/iOS device or emulator.

Install dependencies:
```sh
flutter pub get
```

Run:
```sh
flutter run
```

Run tests:
```sh
flutter test
```

Build:
```sh
flutter build apk
flutter build ios
```

## Important Files (one-line purpose)
- lib/main.dart — app entry, MaterialApp and route setup.
- lib/auth/splash_screen.dart — splash and navigation decision.
- lib/auth/firstslider.dart — onboarding sliders.
- lib/auth/login_page.dart — login form and navigation.
- lib/auth/signup_page.dart — signup form and validation.
- lib/auth/forgot_password.dart — password-reset request UI.
- lib/auth/verification_code.dart — OTP input and verification UI.
- lib/home_pages/home_page.dart — main home screen and category selection.
- lib/home_pages/food_details_page.dart — food detail, size, quantity, add-to-cart.
- lib/home_pages/restrurent_detail_page.dart — restaurant detail and menu.
- lib/home_pages/pop_up_page.dart — reusable modal/popups.
- lib/home_pages/profile_screen.dart — profile view and edit UI.
- lib/home_pages/shopping_bag/view/shopping_bag_screen.dart — cart UI and controls.
- lib/home_pages/all_categories/view/see_all_categories.dart — category list UI.
- lib/home_pages/all_categories/controller/see_all_categories_controller.dart — category logic/controller.
- lib/home_pages/all_categories/model/food_category.dart — category data model.
- lib/nav_bar/nav_bar_routes.dart — bottom navigation and route handling.
- assets/... — images, food images and fonts (declared in pubspec.yaml).
- pubspec.yaml — dependencies, assets and fonts configuration.
- test/widget_test.dart — basic widget test.

## Notes & Recommendations
- Current state: most state is local to StatefulWidgets; no global state management.
- Recommend adding persistence (shared_preferences or hive) for cart/favorites/profile.
- Recommend adopting Provider/GetX/Bloc for global state (cart/favorites sync).
- Add backend/network layer and more unit/widget tests for core flows.
