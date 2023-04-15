import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  //TODO 18: Create call back function

  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //TODO 1: object from TextEditingController

  //TODO 2: Variable to save the user Email

  //TODO 4: Create a method to save Shared Preferences data

  //TODO 7: Create a method to read Shared Preferences data

  //TODO 8: Call the initState method

  //TODO 9: Call the dispose method

  @override
  Widget build(BuildContext context) {
    //TODO 19: Create a variable to change the theme
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shared Preferences Demo'),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Dark Mode',
                  style: TextStyle(fontSize: 20),
                ),
                Switch.adaptive(
                    //TODO 21: Change the value properity
                    value: false,
                    //TODO 22: callback the method to change the theme
                    onChanged: null),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: TextField(
                //TODO 3: Access to User's Text by Controller
                decoration: const InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(fontSize: 20),
                  labelText: 'Email',
                  labelStyle: TextStyle(fontSize: 20),
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    //TODO 5: Call the Method to save the data

                    //TODO 6: Clear Text Field
                  },
                  child: const Text('Save Data'),
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => Dialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Text(
                                      'You Entered this Email:',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    //TODO 10: Show User Email in Text widget
                                    Text(''),
                                    ElevatedButton(
                                      onPressed: () => Navigator.pop(context),
                                      child: const Text(
                                        'Close',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ));
                  },
                  child: const Text('Show Data'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
