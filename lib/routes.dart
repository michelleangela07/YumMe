import 'package:flutter/widgets.dart';
import 'package:yumme_app/screens/categories/dessert/categories_dessert.dart';
import 'package:yumme_app/screens/categories/drinks/categories_drinks.dart';
import 'package:yumme_app/screens/categories/meat/categories_meat.dart';
import 'package:yumme_app/screens/categories/seafood/categories_seafood.dart';
import 'package:yumme_app/screens/categories/veggies/categories_veggies.dart';
import 'package:yumme_app/screens/complete_profile/complete_profile_screen.dart';
import 'package:yumme_app/screens/details/details_screen.dart';
import 'package:yumme_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:yumme_app/screens/home/home_screen.dart';
import 'package:yumme_app/screens/login_success/login_success_screen.dart';
import 'package:yumme_app/screens/otp/otp_screen.dart';
import 'package:yumme_app/screens/sign_in/sign_in_screen.dart';
import 'package:yumme_app/screens/splash/splash_screen.dart';
import 'package:yumme_app/screens/sign_up/sign_up_screen.dart';
import 'package:yumme_app/screens/article/article_screen.dart';
import 'package:yumme_app/screens/recipe/recipe_screen.dart';
import 'package:yumme_app/screens/favorite/favorite_screen.dart';
import 'package:yumme_app/screens/profile/profile_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  ArticleScreen.routeName: (context) => ArticleScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  RecipeScreen.routeName: (context) => RecipeScreen(),
  CategoriesMeat.routeName: (context) => CategoriesMeat(),
  CategoriesSeafood.routeName: (context) => CategoriesSeafood(),
  CategoriesVeggies.routeName: (context) => CategoriesVeggies(),
  CategoriesDessert.routeName: (context) => CategoriesDessert(),
  CategoriesDrinks.routeName: (context) => CategoriesDrinks(),
  FavoriteScreen.routeName: (context) => FavoriteScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
};