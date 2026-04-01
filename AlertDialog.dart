AlertDialog(
            // To display the title it is optional
            title: Text('Welcome'), 
            // Message which will be pop up on the screen
            content: Text('GeeksforGeeks'), 
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('CANCEL'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('ACCEPT'),
              ),
            ],
          );