import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'lib/assets/images/signal.png',
                width: 150,
                height: 150,
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          labelText: 'Email',
                          prefixIcon: const Icon(Icons.email),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          labelText: 'Password',
                          prefixIcon: const Icon(Icons.lock),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 40,
                            vertical: 10,
                          ),
                          // backgroundColor:
                          //     Theme.of(context).colorScheme.primaryContainer,
                        ),
                        child: const Text(
                          'Login',
                          style: TextStyle(fontSize: 20, color: Colors.black54
                              //     .colorScheme
                              //     .onPrimaryContainer),
                              ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      signUp(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Row signUp() {
  return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
    const Text(
      "Don't have a account?",
      style: TextStyle(
        color: Colors.white54,
        fontFamily: 'Karla',
      ),
    ),
    GestureDetector(
      // onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUpPage()));},

      onTap: () {},
      child: const Text(
        " Sign Up",
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'Karla',
        ),
      ),
    )
  ]);
}
