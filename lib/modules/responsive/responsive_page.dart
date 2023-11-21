import 'package:flutter/material.dart';

class ResponsivePage extends StatefulWidget {
  const ResponsivePage({super.key});

  @override
  State<ResponsivePage> createState() => _ResponsivePageState();
}

class _ResponsivePageState extends State<ResponsivePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 100,
                      child: ColoredBox(color: Colors.red),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 100,
                      child: ColoredBox(color: Colors.purple),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 100,
                      child: ColoredBox(color: Colors.green),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 400,
                width: 300,
                color: const Color.fromARGB(255, 208, 205, 8),
                child: const FittedBox(
                  fit: BoxFit.fill,
                  child: Placeholder(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Flexible(
                    child: Container(
                      color: Colors.red,
                      width: 300,
                      height: 100,
                      child: FractionallySizedBox(
                        widthFactor: 0.9,
                        heightFactor: 0.8,
                        child: Container(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  Container(
                    color: Colors.red,
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    color: Colors.green,
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    color: Colors.blue,
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    color: Colors.yellow,
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    color: Colors.orange,
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    color: Colors.purple,
                    width: 100,
                    height: 100,
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth < 600) {
                    return Column(
                      children: [
                        Container(
                          color: Colors.red,
                          width: 400,
                          height: 100,
                        ),
                        Container(
                          color: Colors.green,
                          width: 400,
                          height: 100,
                        ),
                        Container(
                          color: Colors.blue,
                          width: 400,
                          height: 100,
                        ),
                      ],
                    );
                  } else {
                    return Row(
                      children: [
                        Container(
                          color: Colors.red,
                          width: 100,
                          height: 100,
                        ),
                        Container(
                          color: Colors.green,
                          width: 100,
                          height: 100,
                        ),
                        Container(
                          color: Colors.blue,
                          width: 100,
                          height: 100,
                        ),
                      ],
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
