import 'dart:math';

import 'package:flutter/material.dart';
import './database.dart';
import './dog.dart';

class SqlitePage extends StatefulWidget {
  const SqlitePage({super.key});

  @override
  State<SqlitePage> createState() => _SqlitePageState();
}

class _SqlitePageState extends State<SqlitePage> {
  @override
  void initState() {
    super.initState();
    dogDatabase.getDogs();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () async {
              var name = "Dog ${Random().nextInt(100).toString()}";
              var age = 20;

              await dogDatabase.insertDog(
                Dog(
                  name: name,
                  age: age,
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () async {
              await dogDatabase.eraseDogs();
            },
          ),
        ],
      ),
      body: StreamBuilder<List<Map<String, Object?>>>(
        stream: dogDatabase.data.stream,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                var dog = Dog.fromMap(snapshot.data![index]);

                return ListTile(
                  trailing: const Icon(
                    Icons.pets,
                  ),
                  title: Text(dog.name),
                  subtitle: Text('${dog.age}'),
                );
              },
            );
          } else {
            return const Text('Loading...');
          }
        },
      ),
    );
  }
}
