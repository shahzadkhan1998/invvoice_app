import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:invoice_app/l10n/app_localizations.dart';
import '../../services/notification_service.dart';
import '../../widgets/app_bottom_nav.dart';
import '../../providers/invoice_provider.dart';
import '../dashboard/dashboard_screen.dart';
import '../invoices/invoice_list_screen.dart';
import '../clients/client_list_screen.dart';
import '../settings/settings_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  bool _permissionRequested = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_permissionRequested) {
      _permissionRequested = true;
      NotificationService().requestPermissions();
    }
  }

  void _switchTab(int index) => setState(() => _currentIndex = index);

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final overdueCount = context.select<InvoiceProvider, int>(
      (p) => p.overdueInvoices.length,
    );

    final screens = [
      DashboardScreen(onSeeAllInvoices: () => _switchTab(1)),
      const InvoiceListScreen(),
      const ClientListScreen(),
      const SettingsScreen(),
    ];

    return Scaffold(
      extendBody: true,
      body: IndexedStack(
        index: _currentIndex,
        children: screens,
      ),
      bottomNavigationBar: AppBottomNav(
        currentIndex: _currentIndex,
        onTap: _switchTab,
        items: [
          AppNavItem(
            icon: Icons.grid_view_outlined,
            activeIcon: Icons.grid_view_rounded,
            label: l10n.bottomNavDashboard,
          ),
          AppNavItem(
            icon: Icons.receipt_long_outlined,
            activeIcon: Icons.receipt_long_rounded,
            label: l10n.bottomNavInvoices,
            badge: overdueCount,
          ),
          AppNavItem(
            icon: Icons.people_outline,
            activeIcon: Icons.people_rounded,
            label: l10n.bottomNavClients,
          ),
          AppNavItem(
            icon: Icons.tune_outlined,
            activeIcon: Icons.tune_rounded,
            label: l10n.bottomNavSettings,
          ),
        ],
      ),
    );
  }
}
