import 'package:dough/dough.dart';
import 'package:flutter/material.dart';

class CustomDoughDemo extends StatefulWidget {
  const CustomDoughDemo({super.key});

  @override
  _CustomDoughDemoState createState() => _CustomDoughDemoState();
}

class _CustomDoughDemoState extends State<CustomDoughDemo> {
  final doughController = DoughController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final myDraggableChild = Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: theme.colorScheme.primary,
      ),
      width: 100,
      height: 100,
      child: Center(
        child: Text(
          'Draggable',
          textAlign: TextAlign.center,
          style: theme.textTheme.bodyMedium,
        ),
      ),
    );

    final myFeedbackWidget = Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: theme.colorScheme.secondary,
      ),
      width: 100,
      height: 100,
      child: Center(
        child: Text(
          'Feedback',
          textAlign: TextAlign.center,
          style: theme.textTheme.bodySmall,
        ),
      ),
    );

    // The default draggable dough widget.
    final myDefaultDraggableDough = DraggableDough<String>(
      data: 'My data!',
      feedback: myFeedbackWidget,
      childWhenDragging: Container(),
      child: myDraggableChild,
    );

    final myDraggableDoughWithNewSettings = DoughRecipe(
      data: DoughRecipeData(
        adhesion: 4,
        viscosity: 300,
        usePerspectiveWarp: true,
        perspectiveWarpDepth: 0.02,
        exitDuration: const Duration(milliseconds: 600),
        draggableRecipe: DraggableDoughRecipeData(
          breakDistance: 100,
          useHapticsOnBreak: true,
        ),
      ),
      child: myDefaultDraggableDough,
    );

    return myDraggableDoughWithNewSettings;
  }
}
