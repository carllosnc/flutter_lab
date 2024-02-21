import 'package:flutter/material.dart';
import './query.dart';

class HttpRequestPage extends StatefulWidget {
  const HttpRequestPage({super.key});

  @override
  State<HttpRequestPage> createState() => _HttpRequestPageState();
}

class _HttpRequestPageState extends State<HttpRequestPage> with UserQuery {
  @override
  void initState() {
    super.initState();

    getUsers();
  }

  @override
  Widget build(BuildContext context) {
    // if true, show a CircularProgressIndicator
    if (isLoading) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    // is isError for true, show the error message
    if (isError) {
      return Scaffold(
        body: Center(child: Text(errorMessage!)),
      );
    }

    // is IsSucess for true, show the list of users
    return Scaffold(
      appBar: AppBar(
        title: const Text('HTTP Request'),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          var user = users[index];

          return ListTile(
            title: Text(user.name),
            subtitle: Text(user.email),
          );
        },
      ),
    );
  }
}
