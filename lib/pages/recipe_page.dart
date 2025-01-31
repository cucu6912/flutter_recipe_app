import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/components/recipe_list_item.dart';
import 'package:flutter_recipe_app/components/recipe_menu.dart';
import 'package:flutter_recipe_app/components/recipe_title.dart';

class RecipePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, //배경색 white로 설정
      appBar: _buildRecipeAppBar(), //비어 있는 AppBar 연결해두기
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20), //수평으로 여백 주기
        child: ListView(
          //위에서 아래로 내려가는 구조이기 때문에 Column 위젯 사용
          children: [
            RecipeTitle(),
            RecipeMenu(),
            RecipeListItem("coffee", "Made Coffee"),
            RecipeListItem("burger", "Made Burger"),
            RecipeListItem("pizza", "Made Pizza"),
          ],
        ),
      ),
    );
  }

  AppBar _buildRecipeAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1.0,
      actions: [
        Icon(
          CupertinoIcons.search,
          color: Colors.black,
        ),
        SizedBox(
          width: 15,
        ),
        Icon(
          CupertinoIcons.heart,
          color: Colors.redAccent,
        ),
        SizedBox(
          width: 15,
        )
      ],
    );
  }
}
