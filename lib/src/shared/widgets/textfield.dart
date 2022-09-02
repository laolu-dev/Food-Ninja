import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo/src/shared/resources/resources.dart';

final textFieldController = StateProvider<bool>((ref) {
  return true;
});

class AppTextField extends StatelessWidget {
  final String hint;
  final bool? isPassword;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  const AppTextField({
    Key? key,
    required this.hint,
    this.keyboardType,
    this.controller,
    this.isPassword,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isPassword ?? false,
      keyboardType: keyboardType,
      validator: validator,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        hintText: hint,
        hintStyle: const TextStyle(
          fontFamily: 'BentonSansRegular',
          fontSize: 14,
          color: Color.fromRGBO(59, 59, 59, .5),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color.fromARGB(7, 0, 0, 0),
          
          ),
          borderRadius: BorderRadius.circular(22),
        ),
      ),
    );
  }
}

class SignupField extends ConsumerWidget {
  final String hint;
  final String image;
  final bool? isPassword;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  const SignupField({
    Key? key,
    this.controller,
    required this.image,
    required this.hint,
    this.validator,
    this.isPassword,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final password = ref.watch(textFieldController.state);
    return TextFormField(
      obscureText: password.state,
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        prefixIcon: Image.asset(image, width: 12, height: 12),
        suffixIcon: isPassword == null
            ? null
            : IconButton(
                onPressed: () => password.state = !password.state,
                icon: Image.asset(Res.image.show),
              ),
        hintText: hint,
        hintStyle: const TextStyle(
          fontFamily: 'BentonSansRegular',
          fontSize: 14,
          color: Color.fromRGBO(59, 59, 59, .5),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color.fromARGB(7, 0, 0, 0),
          ),
          borderRadius: BorderRadius.circular(22),
        ),
      ),
    );
  }
}
