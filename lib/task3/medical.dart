import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Medical extends StatefulWidget {
  const Medical({Key? key}) : super(key: key);

  @override
  State<Medical> createState() => _FirstPageState();
}

class _FirstPageState extends State<Medical> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _buildCardViewWidget(title: 'Allergies',subtitle: 'No'),
        _buildCardViewWidget(title: 'Current Medications',subtitle: 'add mediations'),
        _buildCardViewWidget(title: 'Past Medications',subtitle: 'add mediations'),
        _buildCardViewWidget(title: 'Chronic Disease',subtitle: 'add mediations'),
        _buildCardViewWidget(title: 'Injuries',subtitle: 'add mediations'),
        _buildCardViewWidget(title: 'Surgeries',subtitle: 'add mediations'),

      ],

    );
  }
  _buildCardViewWidget({required String title,required String subtitle}){
    return  Card(
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.black38,
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        ),
        trailing: Text(
          subtitle,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
