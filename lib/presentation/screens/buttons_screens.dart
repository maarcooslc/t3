import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:t3/presentation/screens/custom_button.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttoms_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Página de botones')), // AppBar
      body: _ButtomsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pop(),
        child: const Icon(Icons.arrow_back_ios_new_rounded),
      ), // FloatingActionButton
    ); // Scaffold
  }
}

class _ButtomsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Elevated Buttom'),
            ), // ElevatedButton
            const ElevatedButton(onPressed: null, child: Text('Disabled')),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.access_alarm_rounded),
              label: const Text('Elevated icon'),
            ), // ElevatedButton.icon
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.alternate_email_outlined),
              label: const Text('Filled'),
            ), // FilledButton.icon
            OutlinedButton(onPressed: () {}, child: const Text('Outline')),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.terminal_outlined),
              label: const Text('Outline'),
            ), // OutlinedButton.icon
            TextButton(onPressed: () {}, child: const Text('Text Icon')),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.account_balance_outlined),
              label: const Text('Text icon'),
            ), // TextButton.icon
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.alt_route_outlined),
            ), // IconButton
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.app_registration_rounded),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(colors.primary),
                iconColor: const WidgetStatePropertyAll(Colors.white),
              ),
            ),
            CustomButton()
          ],
        ),
      ),
    );
  }
}
