import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInvert;

  final _blackColor = const Color(0x0ff1f212);

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInvert,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      //아이템이 오버플로우 됐을떄 그 부분에 어떤걸 할젓인지
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: isInvert ? Colors.white : _blackColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: isInvert ? _blackColor : Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 32,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      amount,
                      style: TextStyle(
                        color: isInvert ? _blackColor : Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      code,
                      style: TextStyle(
                          fontSize: 20, color: Colors.white.withOpacity(0.8)),
                    ),
                  ],
                )
              ],
            ),
            //아이콘 크기만 커지고 부모위젯은 안커짐, 트랜스폼으로 위치 조절
            Transform.scale(
              scale: 2.2,
              child: Transform.translate(
                offset: const Offset(8, 15),
                child: Icon(
                  icon,
                  color: isInvert ? _blackColor : Colors.white,
                  size: 88,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
