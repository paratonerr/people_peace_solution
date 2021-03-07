import 'package:flutter/material.dart';
import 'package:people_peace_solution/domain/campaign.dart';
import 'package:people_peace_solution/domain/singletons.dart';
import 'package:people_peace_solution/ui/provider/detail_provider.dart';
import 'package:people_peace_solution/ui/widget/campaign_widget.dart';
import 'package:people_peace_solution/utils/routes.dart';
import 'package:provider/provider.dart';
import 'package:after_layout/after_layout.dart';

class CampaignScreen extends StatefulWidget {
  @override
  _CampaignScreenState createState() => _CampaignScreenState();
}

class _CampaignScreenState extends State<CampaignScreen> with AfterLayoutMixin<CampaignScreen> {

  DetailProvider _detailProvider;
  @override
  void afterFirstLayout(BuildContext context) {
    // TODO: implement afterFirstLayout
  }
  @override
  Widget build(BuildContext context) {
    _detailProvider=Provider.of<DetailProvider>(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
backgroundColor: Colors.white,
      body: Campaign_Widget(detailProvider: _detailProvider,),

    );
  }


}

