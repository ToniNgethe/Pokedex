import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/data/models/pokemon.dart';
import 'package:pokedex/utils/app_styles.dart';

class SelectedPokemonAppBar extends StatelessWidget {
  final Pokemon pokemon;

  const SelectedPokemonAppBar({Key? key, required this.pokemon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      expandedHeight: 200.h,
      floating: true,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: SafeArea(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    Text(
                      '${pokemon.name}',
                      style: AppStyles.textTitle.copyWith(fontSize: 32.sp),
                    ),
                    Text(
                      '${pokemon.typesList?.join((", "))}',
                      style: AppStyles.normalTextStyle
                          .copyWith(color: Colors.black),
                    ),
                    const Spacer(),
                    Text('#${pokemon.id}',
                        style: AppStyles.normalTextStyle
                            .copyWith(color: Colors.black))
                  ],
                ),
              ),
              const Spacer(),
              Align(
                alignment: Alignment.bottomRight,
                child: CachedNetworkImage(
                  width: 136.w,
                  height: 125.h,
                  imageUrl: '${pokemon.art}',
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
