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
    // Se isLoading for true, exibe um loading
    if (isLoading) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    // Se isError for true, exibe um Text com a mensagem de erro
    if (isError) {
      return Scaffold(
        body: Center(child: Text(errorMessage!)),
      );
    }

    // Se isSucess for true, exibe a lista de usuários
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
