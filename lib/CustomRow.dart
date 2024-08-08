import 'package:flutter/material.dart';

class CustomRow extends StatefulWidget {
  final AssetImage elsora;
  final String klam;
  final IconButton zorar;

  const CustomRow({
    super.key,
    required this.elsora,
    required this.klam,
    required this.zorar,
  });

  @override
  State<CustomRow> createState() => _CustomRowState();
}

class _CustomRowState extends State<CustomRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 12,),
        Image(
          image: widget.elsora,
          width: 50,
          height: 50,
        ),
        const SizedBox(
          width: 15,
        ),
        Text(
          widget.klam,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 17,
          ),
        ),
        const Spacer(),
        widget.zorar,
        
      ],
    );
  }
}
