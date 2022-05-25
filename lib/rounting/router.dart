import 'package:ecommerce_admin_tut/extension/string_extensions.dart';
import 'package:ecommerce_admin_tut/pages/brands/brands_page.dart';
import 'package:ecommerce_admin_tut/pages/categories/categories_page.dart';
import 'package:ecommerce_admin_tut/pages/login/login.dart';
import 'package:ecommerce_admin_tut/pages/phone_verify/phone_verify_page.dart';
import 'package:ecommerce_admin_tut/pages/registration/registration.dart';
import 'package:ecommerce_admin_tut/widgets/layout/layout.dart';

import '../pages/home/home_page.dart';
import '../pages/orders/orders_page.dart';
import '../pages/otp_screen/otp_page.dart';
import '../pages/products/products_page.dart';
import '../pages/users/users_page.dart';
import 'package:ecommerce_admin_tut/rounting/route_names.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  var routingData = settings.name!.getRoutingData;
  print('generateRoute: ${settings.name}');
  switch (routingData.route) {
    case HomeRoute:
      return _getPageRoute(HomePage(), settings);
    case UsersRoute:
      return _getPageRoute(UsersPage(), settings);
    case ProductsRoute:
      return _getPageRoute(ProductsPage(), settings);
    case OrdersRoute:
      return _getPageRoute(OrdersPage(), settings);
    case LoginRoute:
      return _getPageRoute(LoginPage(), settings);
    case PhoneVerifyRoute:
      return _getPageRoute(PhoneVerifyPage(), settings);
    case OTPRoute:
      return _getPageRoute(OTPPage(), settings);
    case RegistrationRoute:
      return _getPageRoute(RegistrationPage(), settings);
    case LayoutRoute:
      return _getPageRoute(LayoutTemplate(), settings);
    case CategoriesRoute:
      return _getPageRoute(CategoriesPage(), settings);
    case BrandsRoute:
      return _getPageRoute(BrandsPage(), settings);
    default:
      return _getPageRoute(LoginPage(), settings);
  }
}

PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  return _FadeRoute(child: child, routeName: settings.name);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String? routeName;
  _FadeRoute({required this.child, this.routeName})
      : super(
    settings: RouteSettings(name: routeName),
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        ) =>
    child,
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
        ) =>
        FadeTransition(
          opacity: animation,
          child: child,
        ),
  );
}
