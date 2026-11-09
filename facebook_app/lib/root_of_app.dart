import 'package:facebook_app/shared/facebook_first_header.dart';
import 'package:facebook_app/features/home/presentation/widgets/home_page_view_body.dart';
import 'package:facebook_app/shared/tabs_bar.dart';
import 'package:flutter/material.dart';

class RootOfApp extends StatefulWidget {
  const RootOfApp({super.key});

  @override
  State<RootOfApp> createState() => _RootOfAppState();
}

class _RootOfAppState extends State<RootOfApp>
    with SingleTickerProviderStateMixin {
  late TabController _tabBarController;

  @override
  void initState() {
    _tabBarController = TabController(initialIndex: 0, length: 6, vsync: this);
    _tabBarController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _tabBarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            // --------------- FirstHeader ---------------
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: FacebookFirstHeader(),
            ),
            // ------------------- Tabs -------------------
            TabsBar(tabBarController: _tabBarController),
            // -------------- Tabs View Body --------------
            Expanded(
              child: TabBarView(
                controller: _tabBarController,
                children: [
                  // ---------- Home Body ----------
                  HomePageViewBody(),
                  const Center(child: Text('Watch')),
                  const Center(child: Text('Store')),
                  const Center(child: Text('Profile')),
                  const Center(child: Text('Notifications')),
                  const Center(child: Text('Menu')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
