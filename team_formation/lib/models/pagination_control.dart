import 'package:flutter/material.dart';

class PaginationControls extends StatelessWidget {
  final int currentPage;
  final int totalPages;
  final Function(int) onPageChanged;

 const PaginationControls({
    required this.currentPage,
    required this.totalPages,
    required this.onPageChanged,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: currentPage > 1 ? () => onPageChanged(currentPage - 1) : null,
          child: const Text('Previous'),
        ),
        Text('Page $currentPage of $totalPages'),
        ElevatedButton(
          onPressed: currentPage < totalPages ? () => onPageChanged(currentPage + 1) : null,
          child: const Text('Next'),
        ),
      ],
    );
  }
}