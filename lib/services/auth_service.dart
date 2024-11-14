// lib/services/auth_service.dart

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

String baseUrl = 'http://localhost:5000/api/v1';

// login() function
Future<void> loginHandler(
    BuildContext context, String email, String password) async {
  // Create a Map object to store the email and password
  Map<String, String> data = {
    'email': email,
    'password': password,
  };

  // Encode the data to JSON
  String body = json.encode(data);

  try {
    // Send a POST request to the login endpoint
    http.Response response = await http.post(
      Uri.parse('$baseUrl/auth/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: body,
    );

    // Check if the response status code is 200
    if (response.statusCode == 200) {
      // print the response body in console
      var responseData = json.decode(response.body);
      print(
          "responseData: ${responseData['accessToken']}, ${responseData['user']}"); // Debugging
      // alert(context, 'Login Successful', responseData['accessToken']);
      // Navigate to the admin dashboard
      Navigator.pushNamed(context, '/admin/dashboard');
    } else {
      // Show an alert dialog with the error message
      alert(context, 'Login Failed', 'Invalid email or password');
    }
  } catch (e) {
    alert(context, 'Login Error', 'An error occurred: $e');
  }
}

Future<void> registerHandler(BuildContext context, String name, String email,
    String password, String confirmPassword) async {
  if (password != confirmPassword) {
    alert(context, 'Registration Failed', 'Passwords do not match');
    return;
  }

  Map<String, String> data = {
    'name': name,
    'email': email,
    'password': password,
  };

  String body = json.encode(data);
  // print("Data being sent to server: $data"); // Debugging

  try {
    http.Response response = await http.post(
      Uri.parse('$baseUrl/auth/register'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: body,
    );

    if (response.statusCode == 200) {
      // alert(context, 'Registration Successful', 'User registered successfully');
      // go to login screen
      Navigator.pushNamed(context, '/login');
    } else {
      Map<String, dynamic> errorBody = json.decode(response.body);
      String errorMessage = errorBody['message'] ?? 'An unknown error occurred';
      alert(context, 'Registration Failed', errorMessage);
    }
  } catch (e) {
    print("Error: $e"); // Debugging
    alert(context, 'Registration Error', 'An error occurred: $e');
  }
}

// Helper function to show an alert dialog
void alert(BuildContext context, String title, String message) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('OK'),
          ),
        ],
      );
    },
  );
}
