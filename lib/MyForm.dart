import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Validation Example'),
      ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                 controller: _usernameController,
                 decoration: InputDecoration(labelText: 'username'),
                 validator: (value) {
                   if (value == null || value.isEmpty) {
                     return "Please enter your username";
                   }
                   return null;
    },
    ),
    SizedBox(height: 16),
    TextFormField(
     controller: _passwordController,
     obscureText: true,
     decoration: InputDecoration(labelText: 'Password'),
     validator: (value) {
       if (value == null || value.isEmpty) {
         return 'Please Enter Your Password';
         }
       else if (value.length <8) {
         return 'Password must be at least 8 characters';
         }
          return null;
        },
     ),

    TextFormField(
     controller: _emailController,
     decoration: InputDecoration(
         labelText: 'email'),
      validator:  (value) {
            if(value == null || value.isEmpty) {
            return "Please  Enter Your Email";
         }
            return null;
    },
    ),
    SizedBox(height: 16),
    ElevatedButton(
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          String username = _usernameController.text;
          String password = _passwordController.text;
          String email = _emailController.text;
          print('Username: $username');
          print('Password: $password');
          print("Email: $email");
    }
    },
    child: Text('submit'),
    ),
    ],
    ),
    ),
    ),
    );
  }
}
