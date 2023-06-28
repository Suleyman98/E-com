import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/custom_icon_button.dart';
import 'home_search.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 280.w,
      leading: const HomeSearch(),
      actions: const [
        CustomIconButton(icon: Icons.favorite_border),
        CustomIconButton(icon: Icons.notification_add)
      ],
    );
  }

  @override
  Size get preferredSize => Size(50.w, 50.h);
}
