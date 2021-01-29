import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _confirmpasswordController = TextEditingController();

  @override
  void didChangeDependencies() {
    super.dispose();
    _passwordController.dispose();
    _confirmpasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: 50.0,
          horizontal: 10.2,
        ),
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    autovalidate: true,
                    validator: (String value) {
                      return null;
                    },
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        labelText: 'Mobile',
                        hintText: 'This is your username.',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.5))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    autovalidate: true,
                    validator: (String value) {
                      if (value.isEmpty) {
                        return 'Username connot be enputy';
                      } else if (value.length < 3) {
                        return 'Username must be at least 3 caracters long.';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: 'Username',
                        hintText: 'This is your username.',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.5))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    obscureText: true,
                    controller: _passwordController,
                    validator: (String value) {
                      if (value.isEmpty) {
                        return 'Password  connot be enputy';
                      } else if (value.length < 6) {
                        return 'Password must be at least 6 caracters long.';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'This is your password.',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.5))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    obscureText: true,
                    controller: _confirmpasswordController,
                    validator: (String value) {
                      if (value != _passwordController.value.text) {
                        return 'Passwords do not match';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: 'Confirm Password ',
                        hintText: 'This is your password.',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.5))),
                  ),
                )
              ],
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_formKey.currentState.validate()) {
            debugPrint('All validations passed!!');
          };
        },
        child: Icon(Icons.done),
      ),
    );
  }
}
