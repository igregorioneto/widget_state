import 'package:flutter/material.dart';

class TapBox extends StatefulWidget {
  const TapBox({
    Key? key,
    this.active = false,
    required this.onChanged,
  }) : super(key: key);

  final bool active;
  final ValueChanged<bool> onChanged;

  @override
  State<TapBox> createState() => _TapBoxState();
}

class _TapBoxState extends State<TapBox> {
  bool _highlight = false;

  void _handleTapDown(TapDownDetails details) {
    setState(() {
      _highlight = true;
    });
  }

  void _handleTapUp(TapUpDetails details) {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTapCancel() {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTap() {
    widget.onChanged(!widget.active);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _handleTapDown,
      onTapUp: _handleTapUp,
      onTap: _handleTap,
      onTapCancel: _handleTapCancel,
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: widget.active ? Colors.lightGreen[700] : Colors.grey[600],
          border: _highlight
              ? Border.all(
                  color: Colors.teal[700]!,
                  width: 10,
                )
              : null,
        ),
        child: Center(
            child: Text(
          widget.active ? 'Active' : 'Inactive',
          style: const TextStyle(
            fontSize: 32,
            color: Colors.white,
          ),
        )),
      ),
    );
  }
}
