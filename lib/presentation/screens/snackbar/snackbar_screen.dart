import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackbarScreen({super.key});

  void showCustomSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbar = SnackBar(
      content: const Text('Hola mundo'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible:
          false, //Para evitar cerrar el dialogo al presionar fuera del dialogo
      builder: (context) => AlertDialog(
        title: const Text('Estas seguro?'),
        content: const Text(
            'Lorem qui occaecat commodo magna deserunt quis proident. Minim aliqua voluptate sit sint velit laborum amet nulla magna consequat. Mollit labore eu dolore proident deserunt proident dolor cillum et est esse nisi irure ea. Amet sunt velit eiusmod enim consectetur deserunt aliquip magna.'),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: const Text('Cancelar'),
          ),
          FilledButton(
            onPressed: () => context.pop(),
            child: const Text('Aceptar'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Diálogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context, children: [
                  const Text(
                      'Ut ea nisi nisi velit sunt adipisicing consequat enim occaecat aute elit laboris consequat. Magna est ullamco voluptate adipisicing commodo ullamco consequat ut aliquip. Pariatur non duis proident et non velit. Non cillum eiusmod minim laborum excepteur anim ad. Enim est consectetur irure est consequat dolor dolore velit laboris esse sunt adipisicing. Aliqua ipsum cupidatat eu consectetur. Qui consectetur irure culpa laborum.')
                ]);
              },
              child: const Text('Licencias usadas'),
            ),
            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Mostrar diálogo'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackBar(context),
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
