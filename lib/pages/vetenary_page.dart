import 'package:animal_rescue/pages/single_clinic.dart';
import 'package:flutter/material.dart';

class VetenaryPage extends StatelessWidget {
  const VetenaryPage({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> clityList = const [
    {
      "address":
          "676, Om Shanti Co-op HSG. Society, Senapati Bapat Chowk, 12, HM Patil Marg, Near Shivaji Park Telephone Exchange, Shivaji Park",
      "id": "Clinic_01",
      "image":
          "https://www.ibm.com/blogs/blockchain/wp-content/uploads/2020/08/webimage-9864DEFC-F9C9-4DFB-B0A3589333004339.jpg",
      "lat": 19.023647,
      "lng": 72.83699,
      "name": "Shivaji Park Animal Clinic",
      "phone": "7014333352",
      //"region": "South Asia"
    },
    {
      "address":
          "shop number 3, Sanskruti tower, Iraniwadi Rd Number 3, opposite bhagat colony, Kandivali West, Mumbai, Maharashtra 400067",
      "id": "Clinic_02",
      "image":
          "https://mahanlaw.com/wp-content/uploads/2019/11/VetPracticeTransitionMahan.jpg",
      "lat": 19.023647,
      "lng": 72.83699,
      "name": "Little Paws Pet Clinic",
      "phone": " 096196 38286",
      "region": "South Asia"
    },
    {
      "address":
          "Shop no 14, Ganga vihar chs, 3-A, Rd Number 3, Reserve Bank of India Staff Quarters, Raheja Twp, Malad East, Mumbai, Maharashtra 400097",
      "id": "clinic_03",
      "image":
          "https://www.veterinarypracticenews.com/wp-content/uploads/2020/09/opener-2.jpg",
      "lat": 19.076090,
      "lng": 72.877426,
      "name": "Blossom Pet Clinic",
      "phone": "098929 44962",
      "region": "South Asia"
    },
    {
      "address":
          " Laxman Nivas, 11 & 5A, near Belgium Waffle, Parel, Mumbai, Maharashtra 400012",
      "id": "Clinic_04",
      "image":
          "https://image.shutterstock.com/image-photo/french-bulldog-veterinary-clinic-two-260nw-1929344141.jpg",
      "lat": 19.076090,
      "lng": 72.877426,
      "name": "Dynamic Pet Clinic",
      "phone": "081699 33922",
      "region": "South Asia"
    },
    {
      "address": "14th Rd, Khar West, Mumbai, Maharashtra 400052",
      "id": "Clinic_05",
      "image":
          "https://www.timeshighereducation.com/student/sites/default/files/styles/default/public/vet.jpg?itok=RkhnE_sY",
      "lat": 19.076090,
      "lng": 72.877426,
      "name": "Happy Tales",
      "phone": "022 2648 3199",
      "region": "South Asia"
    },
    {
      "address":
          "cottage Plot No 16, Shop No 4 Royal, near Ship Chowk, Sector 13, Kharghar, Navi Mumbai, Maharashtra 410210",
      "id": "Clinic_06",
      "image":
          "https://feeds.abplive.com/onecms/images/uploaded-images/2022/04/30/1bdc6974e8480c5b04322ee90481fad0_original.jpg",
      "lat": 19.0338,
      "lng": 73.0196,
      "name": "New Hope Animal Hospital",
      "phone": "098331 49004",
      "region": "South Asia"
    },
    {
      "address":
          " plot no 29, Nandidham chs, Sector 42A, Seawoods, Maharashtra 400706",
      "id": "Clinic_07",
      "image":
          "https://content3.jdmagicbox.com/comp/def_content/veterinary_doctors/default-veterinary-doctors-5.jpg?clr=273f27",
      "lat": 19.0338,
      "lng": 73.0196,
      "name": "PETSMATE",
      "phone": "072086 34347",
      "region": "South Asia"
    },
    {
      "address":
          "Shop no.5, Sagar Darshan CHS, Sector 18A, Nerul, Navi Mumbai, Maharashtra 400706",
      "id": "Clinic_08",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRn0FZfSnbCoTXENtbZWXOkOmSRFheJLRUFz5CVy4F8ep9Q1BImow2iWHUfWcrlRWSsWxE&usqp=CAU",
      "lat": 19.0338,
      "lng": 73.0196,
      "name": "Cure & Care|Pet Clinic",
      "phone": "075884 28296",
      "region": "South Asia"
    },
    {
      "address":
          "Shop no.1, Plot no.21, Sai Sadan CHS, Sector 40, Seawood, near Neurogen Hospital, Navi Mumbai, Maharashtra 400706",
      "id": "Clinic_09",
      "image":
          "https://cdn.xxl.thumbs.canstockphoto.com/3-kittens-in-doctor-hands-in-veterinary-clinic-little-fluffy-group-of-cats-at-vet-appointment-man-stock-photo_csp91478429.jpg",
      "lat": 19.0338,
      "lng": 73.0196,
      "name": "Petwell Clinic",
      "phone": "096196 97914",
      "region": "South Asia"
    },
    {
      "address":
          " Shelter Complex, Sector 8, Kharghar shop 4 ,plot no. 12/b, near shanghai restaurant, beside manasparsh hospital, Navi Mumbai, Maharashtra 410210",
      "id": "Clinic_10",
      "image":
          "https://image.shutterstock.com/image-photo/dog-cat-stethoscope-on-white-260nw-464012624.jpg",
      "lat": 19.0338,
      "lng": 73.0196,
      "name": "Pet Blooms Pet Clinic",
      "phone": "098330 12281",
      "region": "South Asia"
    },
  ];

  getDetails(Map singleCityData, BuildContext context) {
    print(singleCityData);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SingleClinic(
          clinicData: singleCityData,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Veternary"),
      ),
      body: ListView.builder(
        itemCount: clityList.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            child: Column(
              children: [
                Image.network(
                  clityList[index]['image'],
                  height: 200,
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        clityList[index]['name'],
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        getDetails(clityList[index], context);
                      },
                      child: const Text("View Details"),
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
