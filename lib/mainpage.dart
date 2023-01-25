import 'package:flutter/material.dart';
class  MainPage extends MaterialPageRoute<void> {
  MainPage()
      : super(builder: (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
  actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: handleClick,
            itemBuilder: (BuildContext context) {
              return {'Logout', 'Settings'}.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
      ),
        
      
      body: const Center(
        child: Text(
          'This will be the main page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  });
}void handleClick(String value) {
    switch (value) {
      case 'Logout':
        break;
      case 'Settings':
        break;
    }
}