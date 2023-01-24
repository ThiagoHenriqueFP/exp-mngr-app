import 'package:flutter/material.dart';

class StatsCard extends StatelessWidget {
  const StatsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Gasto mensal',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              child: Container(
                width: MediaQuery.of(context).size.width - 72,
                height: 250,
                decoration: BoxDecoration(
                  color: const Color(0xEEEEEEEE),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Novembro 2022',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: 'R\$',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: ' 505,55',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500),
                                      )
                                    ]),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Meta',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: 'R\$',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: ' 650,00',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500),
                                      )
                                    ]),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 115,
                            height: 115,
                            child: CircularProgressIndicator(
                              value: 0.75,
                              strokeWidth: 20,
                              backgroundColor: Colors.yellow[200],
                              valueColor: const AlwaysStoppedAnimation<Color>(
                                  Color.fromARGB(255, 9, 60, 51)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 18, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 32,
                                      width: 32,
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 9, 60, 51),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                                      child: Text('Valor gasto'),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 32,
                                      width: 32,
                                      decoration: BoxDecoration(
                                          color: Colors.yellow[200],
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                                      child: Text('Meta'),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
