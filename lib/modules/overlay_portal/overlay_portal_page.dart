import 'package:flutter/material.dart';

class OverlayPortalPage extends StatelessWidget {
  const OverlayPortalPage({super.key});

  @override
  Widget build(BuildContext context) {
    OverlayPortalController controller1 = OverlayPortalController();
    OverlayPortalController controller2 = OverlayPortalController();

    return Scaffold(
      appBar: AppBar(title: const Text('Overlay Portal')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                controller1.show();
              },
              child: OverlayPortal(
                controller: controller1,
                overlayChildBuilder: (context) => Positioned(
                  right: 100,
                  bottom: 300,
                  child: GestureDetector(
                    onTap: () {
                      controller1.hide();
                    },
                    child: Container(
                      color: Colors.red,
                      height: 50,
                      width: 100,
                      child: const Center(child: Text('Overlay')),
                    ),
                  ),
                ),
                child: const Text('Show Overlay'),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: () {
                controller2.show();
              },
              child: OverlayPortal(
                controller: controller2,
                overlayChildBuilder: (context) => Positioned(
                  bottom: 0,
                  child: GestureDetector(
                    onTap: () {
                      controller2.hide();
                    },
                    child: Container(
                      height: 150,
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: const Center(child: Text('Overlay')),
                    ),
                  ),
                ),
                child: const Text('Show Overlay'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
