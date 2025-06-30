import 'package:bookly_app/features/home/presentation/views/widgets/custom_container.dart';
import 'package:flutter/material.dart';

class CustomListview extends StatelessWidget {
  const CustomListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 10),


          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: CustomContainer(),
            );
          }),
    );
  }
}
