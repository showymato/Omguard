class DetailCardModel {
  String number,
      personImage,
      personName,
      email,
      countryImage,
      countryName,
      status,
      jobTitle;

  DetailCardModel({
    required this.number,
    required this.personImage,
    required this.personName,
    required this.email,
    required this.countryImage,
    required this.countryName,
    required this.status,
    required this.jobTitle,
  });
}

List<DetailCardModel> detailsList = [
  DetailCardModel(
    number: "510",
    personImage: "assets/images/profile.jpeg", // Update with actual image path
    personName: "Aarav Sharma",
    email: "aarav.sharma@omguard.com",
    countryImage: "assets/images/in.svg",
    countryName: "India",
    status: "Full time",
    jobTitle: "Cyber Security Specialist",
  ),
  DetailCardModel(
    number: "620",
    personImage: "assets/images/profile.jpeg", // Update with actual image path
    personName: "Isha Patel",
    email: "isha.patel@omguard.com",
    countryImage: "assets/images/in.svg",
    countryName: "India",
    status: "Full time",
    jobTitle: "Security Software Developer",
  ),
  DetailCardModel(
    number: "1203",
    personImage: "assets/images/profile.jpeg", // Update with actual image path
    personName: "Rajesh Gupta",
    email: "rajesh.gupta@omguard.com",
    countryImage: "assets/images/in.svg",
    countryName: "India",
    status: "Full time",
    jobTitle: "Data Analyst",
  ),
  DetailCardModel(
    number: "45",
    personImage: "assets/images/profile.jpeg", // Update with actual image path
    personName: "Neha Verma",
    email: "neha.verma@omguard.com",
    countryImage: "assets/images/in.svg",
    countryName: "India",
    status: "Full time",
    jobTitle: "Product Designer",
  ),
  DetailCardModel(
    number: "157",
    personImage: "assets/images/profile.jpeg", // Update with actual image path
    personName: "Siddharth Rao",
    email: "siddharth.rao@omguard.com",
    countryImage: "assets/images/in.svg",
    countryName: "India",
    status: "Full time",
    jobTitle: "Compliance Officer",
  ),
  DetailCardModel(
    number: "1203",
    personImage: "assets/images/profile.jpeg", // Update with actual image path
    personName: "Pooja Desai",
    email: "pooja.desai@omguard.com",
    countryImage: "assets/images/in.svg",
    countryName: "India",
    status: "Full time",
    jobTitle: "Incident Response Analyst",
  ),
];
