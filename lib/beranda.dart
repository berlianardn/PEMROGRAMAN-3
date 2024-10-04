import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contractor Consultant',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Consultant Dashboard'),
        backgroundColor: Colors.blueGrey,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: CustomSearchDelegate());
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/profile.jpg'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Berliana',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Dashboard'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.work),
              title: Text('Projects'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProjectsPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Clients'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => ClientsPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.schedule),
              title: Text('Schedule'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => SchedulePage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                Navigator.pop(context);
                // Tambahkan fungsi logout
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: <Widget>[
            _buildCard(
              icon: Icons.work_outline,
              title: 'Projects',
              color: Colors.teal,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProjectsPage()));
              },
            ),
            _buildCard(
              icon: Icons.people_outline,
              title: 'Clients',
              color: Colors.orangeAccent,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ClientsPage()));
              },
            ),
            _buildCard(
              icon: Icons.attach_money,
              title: 'Invoices',
              color: Colors.blue,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => InvoicesPage()));
              },
            ),
            _buildCard(
              icon: Icons.schedule,
              title: 'Schedule',
              color: Colors.purpleAccent,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SchedulePage()));
              },
            ),
            _buildCard(
              icon: Icons.bar_chart,
              title: 'Reports',
              color: Colors.green,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ReportsPage()));
              },
            ),
            _buildCard(
              icon: Icons.settings,
              title: 'Settings',
              color: Colors.redAccent,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage()));
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard({IconData? icon, String? title, Color? color, required VoidCallback onTap}) => Card(
    elevation: 5,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    child: InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(icon, size: 50, color: color),
          SizedBox(height: 10),
          Text(
            title!,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  );
}

// Search Delegate
class CustomSearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text('Results for "$query"'),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Center(
      child: Text('Search for projects, clients, or reports'),
    );
  }
}

// Dummy pages for each menu
class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard')),
      body: Center(child: Text('Overview of projects, clients, and reports')),
    );
  }
}

class ProjectsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Projects')),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ListTile(
            leading: Icon(Icons.business),
            title: Text('Project A'),
            subtitle: Text('Client: ABC Construction\nStatus: Ongoing'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // Navigasi ke detail proyek
            },
          ),
          ListTile(
            leading: Icon(Icons.business),
            title: Text('Project B'),
            subtitle: Text('Client: XYZ Engineering\nStatus: Completed'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // Navigasi ke detail proyek
            },
          ),
        ],
      ),
    );
  }
}

class ClientsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Clients')),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ListTile(
            leading: Icon(Icons.person),
            title: Text('ABC Construction'),
            subtitle: Text('Contact: John Doe\nPhone: +62 8123456789'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // Navigasi ke detail klien
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('XYZ Engineering'),
            subtitle: Text('Contact: Jane Smith\nPhone: +62 8129876543'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // Navigasi ke detail klien
            },
          ),
        ],
      ),
    );
  }
}

class SchedulePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Schedule')),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ListTile(
            leading: Icon(Icons.event),
            title: Text('Site Visit - Project A'),
            subtitle: Text('Date: 12 Oct 2024\nTime: 09:00 AM'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // Detail jadwal
            },
          ),
          ListTile(
            leading: Icon(Icons.event),
            title: Text('Client Meeting - XYZ Engineering'),
            subtitle: Text('Date: 15 Oct 2024\nTime: 02:00 PM'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // Detail jadwal
            },
          ),
        ],
      ),
    );
  }
}

class InvoicesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Invoices')),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ListTile(
            leading: Icon(Icons.attach_money),
            title: Text('Invoice #001'),
            subtitle: Text('Client: ABC Construction\nAmount: \$10,000'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // Detail invoice
            },
          ),
          ListTile(
            leading: Icon(Icons.attach_money),
            title: Text('Invoice #002'),
            subtitle: Text('Client: XYZ Engineering\nAmount: \$15,000'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // Detail invoice
            },
          ),
        ],
      ),
    );
  }
}

class ReportsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Reports')),
      body: Center(
        child: Text('Monthly and annual reports available here.'),
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: Center(
        child: Text('Adjust your preferences here.'),
      ),
    );
  }
}
