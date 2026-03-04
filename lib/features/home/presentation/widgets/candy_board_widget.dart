import 'package:flutter/material.dart';
import '../../domain/entities/candy_board.dart';

class CandyBoardWidget extends StatelessWidget {
  final CandyBoard candyBoard;
  const CandyBoardWidget({super.key, required this.candyBoard});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 8,
        childAspectRatio: 1.0,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
      ),
      itemCount: candyBoard.board.length * candyBoard.board.length,
      itemBuilder: (context, index) {
        final row = index ~/ 8;
        final column = index % 8;
        return Container(
          color: Colors.primaries[(row + column) % Colors.primaries.length],
          child: Center(
            child: Text(
              candyBoard.board[row][column].toString(),
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
        );
      },
    );
  }
}