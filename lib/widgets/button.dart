import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String title;

  const Button({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 358,
      height: 56,
      decoration: BoxDecoration(
        color: const Color(0xFF46CAFE),
        borderRadius: BorderRadius.circular(50),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        onPressed: () {
          // Adicione lógica de clique aqui
        },
        child: Center(
          child: Text(title,
              style: const TextStyle(
                  color: Colors.black,
                  fontFamily: 'Poppins',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                  height: 1.5)),
        ),
      ),
    );
  }
}
