# Toastr

**Toastr** is a lightweight, customizable toast notification package for Flutter applications.  
It offers multiple toast styles, optional icons — making your UI more interactive and user-friendly.

---

## Installation

Add the dependency to your `pubspec.yaml`:

```yaml
dependencies:
  toastr: ^0.0.1
```

Then run:

```bash
flutter pub get
```

---

## Usage

Import the package:

```dart
import 'package:toastr/toastr.dart';
```

Show a basic toast:

```dart
Toastr.show(
  context: context,
  message: 'This is a toast!',
  type: ToastType.success, //optional field
  toastStyle: ToastStyle.filled, //optional field
  showIcon: true, //optional field
  showCloseButton: true, //optional field
  alignment: Alignment.bottomCenter, //optional field
);
```

---

## Features

- ✅ Four toast styles: `flat`, `filled`, `minimal`, `flatFilled`  
  ![Styles](https://github.com/AaryanSharmaNeupane/toastr/blob/main/assets/Styles.png?raw=true)
- ✅ Toast types: `success`, `error`, `warning`, `info`
- ✅ Optional icons and close button
- ✅ Fade-in animation for smooth UX
- ✅ Flexible placement using `OverlayEntry` and `Alignment`
- ✅ Full control over margin, color, and appearance

---

## Properties

Below are all the customizable parameters supported by `Toastr.show()`:

| Property          | Type            | Default              | Description                                        |
| ----------------- | --------------- | -------------------- | -------------------------------------------------- |
| `message`         | `String`        | —                    | The message text displayed inside the toast        |
| `closeDuration`   | `Duration`      | `2 seconds`          | How long the toast stays before closing            |
| `alignment`       | `Alignment`     | `Alignment.center`   | Position on screen (topLeft, bottomCenter, etc.)   |
| `margin`          | `EdgeInsets`    | `EdgeInsets.all(30)` | Space from screen edges                            |
| `type`            | `ToastType`     | `ToastType.success`  | Determines the color scheme (success, error, etc.) |
| `icon`            | `IconData`      | `Icons.info`         | The icon to display when `showIcon` is true        |
| `showIcon`        | `bool`          | `false`              | Whether to show a leading icon                     |
| `showCloseButton` | `bool`          | `false`              | Whether to show a close (X) button                 |
| `toastStyle`      | `ToastStyle`    | `ToastStyle.flat`    | Visual style of the toast (see below)              |
| `messageStyle`    | `TextStyle?`    | —                    | Custom text style for the message                  |
| `borderStyle`     | `BorderRadius?` | —                    | Rounded corners for the toast                      |
| `primaryColor`    | `Color?`        | —                    | Override the default color from `type`             |

---

## Toast Styles

| Style                   | Description                                                                                 |
| ----------------------- | ------------------------------------------------------------------------------------------- |
| `ToastStyle.flat`       | A clean, no-fill style. Best for subtle in-app messages that don't interrupt the interface. |
| `ToastStyle.filled`     | A solid background with strong colors. Great for alerts or bold confirmations.              |
| `ToastStyle.flatFilled` | Combines flat design with a colored border and clean layout — balanced and visible.         |
| `ToastStyle.minimal`    | A modern, distraction-free layout with slim borders — perfect for sleek UI.                 |

---

## Contributors

Contributions are always welcome!  
If you have ideas, bug reports, or feature requests, [open an issue](https://github.com/AaryanSharmaNeupane/toastr/issues).

To contribute directly, please read the [`CONTRIBUTING.md`](https://github.com/AaryanSharmaNeupane/toastr/blob/main/CONTRIBUTING.md) file for contribution guidelines.

---

## License

This project is licensed under the [MIT License](LICENSE).  
You’re free to use, modify, and distribute it — just include credit where due.

---

## Author

**Aaryan Sharma**  
[GitHub](https://github.com/AaryanSharmaNeupane)

---

> Made with ❤️
