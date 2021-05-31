import 'package:flutter/material.dart';
import 'package:idiya/navigation_bar/products_details.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) =>
            EntryItem(data[index]),
      ),
    );
  }
}

// Create the Widget for the row
class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);
  final Entry entry;

  // This function recursively creates the multi-level list rows.
  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) {
      return ListTile(
          title: Text(root.title),
          onTap: () {
            print(root.press);
          });
    }
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title),
      children: root.children.map<Widget>(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}

class Entry {
  final String title;
  final String press;
  final List<Entry> children;

  Entry(this.title, this.press, [this.children = const <Entry>[]]);
}

final List<Entry> data = <Entry>[
  Entry(
    'Chapter A',
    "Press A",
    <Entry>[
      Entry(
        'Section A0',
        "Press A0",
        <Entry>[
          Entry(
            'Item A0.1',
            "Press 0.1",
          ),
          Entry(
            'Item A0.2',
            "Press 2",
          ),
          Entry(
            'Item A0.3',
            "Press 3",
          ),
        ],
      ),
      Entry(
        'Section A1',
        "Press A1",
      ),
      Entry(
        'Section A2',
        "Press A2",
      ),
    ],
  ),
  Entry(
    'Chapter B',
    "Press A",
    <Entry>[
      Entry(
        'Section A0',
        "Press A0",
        <Entry>[
          Entry(
            'Item A0.1',
            "Press 0.1",
          ),
          Entry(
            'Item A0.2',
            "Press 2",
          ),
          Entry(
            'Item A0.3',
            "Press 3",
          ),
        ],
      ),
      Entry(
        'Section A1',
        "Press A1",
      ),
      Entry(
        'Section A2',
        "Press A2",
      ),
    ],
  ),
];
