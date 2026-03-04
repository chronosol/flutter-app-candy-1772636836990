import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../widgets/candy_board_widget.dart';
import '../../domain/entities/candy_board.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final candyBoard = CandyBoard(board: List.generate(
      8,
      (index) => List.generate(8, (index) => 0),
    ));

    return Scaffold(
      appBar: AppBar(title: Text('Candy Match')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: CandyBoardWidget(candyBoard: candyBoard),
        ),
      ),
    );
  }
}