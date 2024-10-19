import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rct/common%20copounents/app_bar_back_button.dart';
import 'package:rct/common%20copounents/card_container.dart';
import 'package:rct/constants/constants.dart';
import 'package:rct/constants/linkapi.dart';
import 'package:rct/view-model/cubits/sketches/sketches_cubit.dart';
import 'package:rct/view-model/cubits/sketches/sketches_state.dart';
import 'package:rct/view/designs%20and%20sketches/details_of_Sketch_Screen.dart';
import 'package:rct/view/designs%20and%20sketches/sketches_form_screen.dart';

class SketchesScreen extends StatefulWidget {
  const SketchesScreen({super.key});

  @override
  State<SketchesScreen> createState() => _SketchesScreenState();
}

class _SketchesScreenState extends State<SketchesScreen> {
  @override
  void initState() {
    super.initState();
    context.read<SketchesCubit>().loadSketches(context);
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SketchesCubit>();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: BackButtonAppBar(context),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                child: BlocBuilder<SketchesCubit, SketchesState>(
                  builder: (context, state) {
                    if (state is SketchesLoading) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (state is SketchesFailure) {
                      print("Error in sketches screen: $state ");
                      return Image.asset(
                          "$imagePath/modul-lettering-404-with-gears-and-exclamation-mark-text.png");
                    } else if (state is SketchesSuccess) {
                      var data = state.sketches;
                      return GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          bool isFavorite = cubit.isFavorite(data[index]);

                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailsOfScetches(
                                          productId:
                                              data[index]["id"].toString())));
                            },
                            child: CardContainer(
                              image: "$linkServerName/${data[index]["image"]}",
                              title: "${data[index]["name"]}",
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => SketchForm(
                                            id: data[index]["id"],
                                          )),
                                );
                              },
                              favoriteIcon: IconButton(
                                icon: Icon(
                                  isFavorite
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color: Colors.red,
                                ),
                                onPressed: () {
                                  cubit.toggleFavorite(data[index]);
                                },
                              ),
                            ),
                          );
                        },
                      );
                    } else {
                      return const Text('No data found');
                    }
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
