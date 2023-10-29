import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});
  @override
  State<FilterScreen> createState() {
    return _FiltersScreen();
  }
}

class _FiltersScreen extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Filters',
          style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            const Text('Domain',
                style: TextStyle(
                    color: Colors.purple, fontWeight: FontWeight.bold)),
            Wrap(
              children: [
                OutlinedButton(onPressed: () {}, child: const Text("Sales")),
                const SizedBox(
                  width: 6,
                ),
                OutlinedButton(
                    onPressed: () {}, child: const Text("Marketing")),
                const SizedBox(
                  width: 6,
                ),
                OutlinedButton(
                    onPressed: () {}, child: const Text("UI Designing")),
                const SizedBox(
                  width: 6,
                ),
                OutlinedButton(onPressed: () {}, child: const Text("Finance")),
                const SizedBox(
                  width: 6,
                ),
                OutlinedButton(onPressed: () {}, child: const Text("IT")),
                const SizedBox(
                  width: 6,
                ),
                OutlinedButton(
                    onPressed: () {}, child: const Text('Management')),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const Text('Gender',
                style: TextStyle(
                    color: Colors.purple, fontWeight: FontWeight.bold)),
            Wrap(
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('Male'),
                ),
                const SizedBox(
                  width: 6,
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('Female'),
                ),
                const SizedBox(
                  width: 6,
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('Agender'),
                ),
                const SizedBox(
                  width: 6,
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('Bigender'),
                ),
                const SizedBox(
                  width: 6,
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('Polygender'),
                ),
                const SizedBox(
                  width: 6,
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('Binarygender'),
                ),
              ],
            ),
            const Text('Availablity',style: TextStyle(
                    color: Colors.purple, fontWeight: FontWeight.bold)),
             Wrap(
              children: [
                OutlinedButton(onPressed: () {}, child: const Text('Available')),
                const SizedBox(width: 12,),
                OutlinedButton(onPressed: () {}, child: const Text('Not Available')),

              ],
             ),
          ],
        ),
      ),
    );
  }
}
