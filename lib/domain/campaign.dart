class Campaign{
  String campaignDescription;
  String campaignTitle;
  String iconPhoto;
  String campaignCompany;
  String detailPhoto;

  Campaign({
    this.campaignTitle,this.campaignDescription,this.iconPhoto,this.detailPhoto,this.campaignCompany
});

  Campaign.fromJsonMap(Map<String, dynamic> map):
        campaignDescription = map["campaignDescription"],
        campaignTitle = map["campaignTitle"],
        iconPhoto = map["iconPhoto"],
        campaignCompany = map["campaignCompany"],
        detailPhoto = map["detailPhoto"];
}