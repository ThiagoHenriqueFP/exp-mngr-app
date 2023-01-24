import 'package:flutter/material.dart';

import 'CreateDebt.dart';

class ButtonRow extends StatelessWidget {
  const ButtonRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 124,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(color: Colors.transparent),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(36, 0, 36, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: null,
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.transparent),
              ),
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    color: const Color(0xEEEEEEEE),
                    borderRadius: BorderRadius.circular(20)),
                child: const Icon(
                  Icons.edit_note_rounded,
                  size: 54,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CreateDebt(),
                  ),
                );
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.transparent),
              ),
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    color: const Color(0xEEEEEEEE),
                    borderRadius: BorderRadius.circular(20)),
                child: const Icon(
                  Icons.add_rounded,
                  size: 54,
                  color: Colors.grey,
                ),
              ),
            ),
            TextButton(
              onPressed: null,
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.transparent),
              ),
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    color: const Color(0xEEEEEEEE),
                    borderRadius: BorderRadius.circular(20)),
                child: const Icon(
                  Icons.account_balance_rounded,
                  size: 54,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
