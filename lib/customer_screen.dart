import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomerScreen extends StatefulWidget {
  const CustomerScreen({super.key});

  @override
  State<CustomerScreen> createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {
  bool isChecked = false;
  bool showAllTags = false;
  String selectedTag = '';

  final List<String> tags = [
    '#TechTalk',
    '#Gratitude',
    '#Mindful',
    '#InspireDaily',
    '#ConnectionGoals'
  ];

  final Map<IconData, List<dynamic>> actions = {
    Icons.person_add: ['Assign to', null],
    Icons.notifications: ['Reminders', null],
    FontAwesomeIcons.paperPlane: ['Send a message', null],
  };

  List<Widget> tagsList(List<String> tagList, Color color, double size, String section) {
    List<Widget> tag = [];
    for (int i = 0; i < tagList.length; i++) {
      bool isSelected = selectedTag == tagList[i];
      tag.add(
        TextButton(
          style: TextButton.styleFrom(
            backgroundColor:
                isSelected ? Color.fromRGBO(190, 190, 190, 1) : color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            padding: EdgeInsets.all(12.0),
          ),
          onPressed: () {
            if (section == 'Tags') {
              setState(() {
                selectedTag = tagList[i];
              });
            }
          },
          child: Text(
            tagList[i],
            style: TextStyle(
                fontSize: size,
                fontWeight: FontWeight.w500,
                color: Colors.black),
          ),
        ),
      );
    }
    return tag;
  }

  List<Widget> createTagList() {
    List<Widget> tag =
        tagsList(tags, Color.fromRGBO(241, 241, 241, 1), 14.0, 'Tags');
    return tag;
  }

  List<Widget> actionsList() {
    List<Widget> actionList = [];
    actions.forEach((icon, lable) {
      actionList.add(OutlinedButton(
          onPressed: () {
            // Navigator.push(
            //     context, MaterialPageRoute(builder: (context) => lable[1]));
          },
          style: ElevatedButton.styleFrom(
              iconColor: Colors.black,
              padding: EdgeInsets.all(8),
              backgroundColor: Color.fromRGBO(250, 250, 250, 1),
              side: BorderSide(color: Color.fromRGBO(224, 224, 224, 1)),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                size: 20,
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                lable[0],
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ],
          )));
    });
    return actionList;
  }

  CircleAvatar cardIcon(IconData icon) {
    return CircleAvatar(
      radius: 14,
      backgroundColor: Color.fromRGBO(248, 248, 251, 1),
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          icon,
          size: 12,
        ),
      ),
    );
  }

  Map<String, Map<String, dynamic>> customerDetails = {
    'Beby Jovanca': {
      'name': 'Beby Jovanca',
      'image':
          'https://images.unsplash.com/photo-1544005313-94ddf0286df2?q=80&w=1376&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'tags': ['#TechTalk', '#Gratitude', '#InspireDaily', '#Mindful', '#ConnectionGoals'],
      'checkboxValue': false,
    },
    'Nancy Green': {
      'name': 'Nancy Green',
      'image':
          'https://plus.unsplash.com/premium_photo-1661645988351-345320df9e53?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YnVzaW5lc3MlMjBwZXJzb258ZW58MHx8MHx8fDA%3D',
      'tags': ['#InspireDaily', '#Mindful', '#ConnectionGoals'],
      'checkboxValue': true,
    },
    'John Smith': {
      'name': 'John Smith',
      'image':
          'https://plus.unsplash.com/premium_photo-1678197937465-bdbc4ed95815?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'tags': [
        '#TechTalk',
        '#Gratitude',
        '#InspireDaily',
        '#Mindful',
        '#ConnectionGoals'
      ],
      'checkboxValue': true,
    },
    'Sophia Davis': {
      'name': 'Sophia Davis',
      'image':
          'https://images.unsplash.com/photo-1464863979621-258859e62245?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDl8fHxlbnwwfHx8fHw%3D',
      'tags': ['#Mindful', '#ConnectionGoals'],
      'checkboxValue': true,
    },
    'Liam Johnson': {
      'name': 'Liam Johnson',
      'image':
          'https://images.unsplash.com/photo-1560250097-0b93528c311a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGJ1c2luZXNzJTIwcGVyc29ufGVufDB8fDB8fHww',
      'tags': ['#TechTalk', '#InspireDaily', '#Mindful', '#ConnectionGoals'],
      'checkboxValue': true,
    },
    'Emma Wilson': {
      'name': 'Emma Wilson',
      'image':
          'https://images.unsplash.com/photo-1506633541287-7c7544a7a706?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'tags': ['#Gratitude', '#Mindful'],
      'checkboxValue': true,
    },
    'Olivia Brown': {
      'name': 'Olivia Brown',
      'image':
          'https://images.unsplash.com/photo-1626193080663-0587c0d0f994?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'tags': ['#InspireDaily', '#TechTalk'],
      'checkboxValue': false,
    },
    'Noah Anderson': {
      'name': 'Noah Anderson',
      'image':
          'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGhhbmRzdW0lMjBtZW58ZW58MHx8MHx8fDA%3D',
      'tags': ['#ConnectionGoals', '#Gratitude'],
      'checkboxValue': true,
    },
    'William Martinez': {
      'name': 'William Martinez',
      'image':
          'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGhhbmRzdW0lMjBtZW58ZW58MHx8MHx8fDA%3D',
      'tags': ['#Mindful', '#TechTalk'],
      'checkboxValue': false,
    },
  };

  Map<String, bool> showMoreTagsMap = {};
  List<Widget> cardTagList(String customerName, List<String> customerTags) {
    List<Widget> tag = [];

    if (showMoreTagsMap[customerName] ?? false) {
      tag = tagsList(
          customerTags, Color.fromRGBO(241, 241, 241, 1), 12.0, 'card');
    } else if (customerTags.length > 2) {
      tag = tagsList(customerTags.sublist(0, 2),
          Color.fromRGBO(241, 241, 241, 1), 12.0, 'card');
    } else {
      tag = tagsList(
          customerTags, Color.fromRGBO(241, 241, 241, 1), 12.0, 'card');
    }

    return tag;
  }

  List<Widget> customerCard() {
    List<Widget> cards = [];
    customerDetails.forEach((key, customer) {
      if (selectedTag.isEmpty || customer['tags'].contains(selectedTag)) {
        cards.add(Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 30,
              height: 30,
              child: Checkbox(
                  value: customer['checkboxValue'],
                  onChanged: (newValue) {
                    setState(() {
                      customer['checkboxValue'] = newValue!;
                    });
                  }),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(8, 16, 8, 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                    width: 1, color: Color.fromRGBO(230, 230, 230, 1)),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.15),
                      offset: Offset(0, 2),
                      blurRadius: 5)
                ],
              ),
              constraints: BoxConstraints(
                maxWidth: 320,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: CircleAvatar(
                      foregroundImage: NetworkImage(customer['image']),
                      radius: 30,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              customer['name'].length > 12
                                  ? '${customer['name'].substring(0, 10)}...'
                                  : customer['name'],
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 20),
                            ),
                            Row(
                              spacing: 4,
                              children: [
                                cardIcon(Icons.phone_outlined),
                                cardIcon(Icons.message_outlined),
                                cardIcon(FontAwesomeIcons.whatsapp),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Wrap(
                          spacing: 16,
                          runSpacing: 2,
                          children:
                              cardTagList(customer['name'], customer['tags']),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        if (customer['tags'].length > 2)
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                showMoreTagsMap[customer['name']] =
                                    !(showMoreTagsMap[customer['name']] ??
                                        false);
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(190, 190, 190, 1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              padding: EdgeInsets.all(12.0),
                              child: Text(
                                showMoreTagsMap[customer['name']] == true
                                    ? 'Show less'
                                    : '+${customer['tags'].length - 2} more Tags',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
      }
    });
    if (cards.isEmpty) {
      cards.add(
        Center(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'No records found for "$selectedTag"',
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w500, color: Colors.red),
            ),
          ),
        ),
      );
    }
    return cards;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
        title: Text('Customers'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.location_on)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Tags', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              const SizedBox(height: 10),
              Wrap(
                spacing: 16,
                runSpacing: 10,
                children: createTagList(),
              ),
              const SizedBox(height: 24),
              const Text('Actions', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              const SizedBox(height: 10),
              Wrap(
                spacing: 16,
                runSpacing: 10,
                children: actionsList(),
              ),
              SizedBox(height: 24),
              Wrap(
                spacing: 16,
                runSpacing: 20,
                children: customerCard(),
              )
            ],
          ),
        ),
      ),
    );
  }
}


