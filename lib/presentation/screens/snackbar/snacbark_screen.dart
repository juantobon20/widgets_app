import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {

  static const name = "SnackbarScreen";

  const SnackbarScreen({super.key});
  void showCustomSnackbar(BuildContext context) {

    ScaffoldMessenger.of(context).clearSnackBars();

    final snackBar = SnackBar(
      content: const Text('Hola Mundo'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(
      snackBar
    );
  }

  void openDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) => AlertDialog(
        title: const Text('¿Estas seguro?'),
        content: const Text('Nostrud mollit ad cillum cillum eiusmod enim nisi labore. Eiusmod cillum aliquip deserunt cupidatat culpa sit duis adipisicing consequat ex ut incididunt. Est anim anim aliqua amet qui dolore nisi in. Tempor nostrud nisi officia nulla est occaecat sint commodo sunt. Non aliqua consequat est sunt nulla incididunt deserunt aute enim occaecat quis sit.'),
        actions: [
          TextButton(onPressed: () => context.pop(), child: const Text('Cancelar')),

          FilledButton(onPressed: () => context.pop(), child: const Text('Aceptar'))
        ],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar y dialogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: ()  {
                showAboutDialog(
                  context: context,
                  children: [
                    const Text('Consectetur laboris ipsum enim et ullamco et elit ipsum amet non. In culpa sint adipisicing Lorem laboris. Mollit elit ullamco aute proident esse pariatur aute veniam nostrud sit culpa dolor pariatur amet. Qui do aute officia ut id ad commodo irure magna ut commodo sunt fugiat.')
                  ]
                );
              }, 
              child: const Text('Licencias usadas')
            ),

            FilledButton.tonal(
              onPressed: () => openDialog(context), 
              child: const Text('Mostrar dialogo')
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context), 
        label: const Text('Mostar snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}