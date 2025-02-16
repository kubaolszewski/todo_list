import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../cubit/home_cubit.dart';
import '../../cubit/home_state.dart';

class HomeTodosListSection extends StatelessWidget {
  const HomeTodosListSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Column(
          spacing: 10.h,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: state.todos.length,
                itemBuilder: (context, index) => Card(
                  child: Container(
                    height: 100,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                    ),
                    child: Center(
                      child: Text(
                        state.todos[index].title,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
