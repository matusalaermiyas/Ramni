import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ramniui/styles/colors.dart';

class FilterCheckbox extends StatefulWidget {
  final String label;
  final bool checked;
  const FilterCheckbox({required this.label, this.checked = false, super.key});

  @override
  State<FilterCheckbox> createState() => _FilterCheckboxState();
}

class _FilterCheckboxState extends State<FilterCheckbox> {
  bool isChecked = false;

  @override
  void initState() {
    super.initState();
    isChecked = widget.checked;
  }

  void _handleCheckboxChange() {
    setState(() {
      isChecked = !isChecked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleCheckboxChange,
      child: Row(
        children: [
          Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
                border: Border.all(
                    color: isChecked
                        ? Colors.transparent
                        : const Color(0xFF8B98B4)),
                color: isChecked ? primaryColor : Colors.white,
                borderRadius: BorderRadius.circular(8)),
            child: isChecked
                ? Center(
                    child: SvgPicture.asset('assets/svgs/thick.svg'),
                  )
                : null,
          ),
          SizedBox(
            width: 13,
          ),
          Text(
            widget.label,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
