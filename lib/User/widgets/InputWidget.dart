import "package:flutter/material.dart";


class inputWidget extends StatelessWidget {
  const inputWidget({
    super.key,
    required this.controllerCuy,
    required this.titleInput,
    required this.logo,
  });

  final TextEditingController controllerCuy;
  final String titleInput;
  final Widget logo;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: TextField(
        controller: controllerCuy,
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          floatingLabelBehavior:
              FloatingLabelBehavior.never,
          filled: true,
          fillColor: Colors.white,
          label: Text(titleInput),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          prefixIcon: logo,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 15,
          ),
        ),
      ),
    );
  }
}
