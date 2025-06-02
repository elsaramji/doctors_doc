 String? phoneValidator(String? value) {
      if (value == null || value.isEmpty) {
      return "Phone number is required";
    }
    if (value.length < 10) {
      return "Phone number must be at least 10 digits";
    }
    // Add more validation if needed
    return null;
  }

  String? passwordValidator(String? value) {
             if (value == null || value.isEmpty) {
      return "Password is required";
    }
    if (value.length < 6) {
      return "Password must be at least 6 characters";
    }
    // Add more validation if needed
    return null;
  }

  String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Email is required";
    }
    if (!RegExp(
      r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
    ).hasMatch(value)) {
      return "Please enter a valid email address";
    }
    return null;
  }