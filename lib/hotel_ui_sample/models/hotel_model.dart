class HotelModel {
  
  String name;
  String location;
  int distance;
  String imageUrl;
  int price;
  int starReviews;
  int reviews;

  HotelModel({required this.name,required this.location,required this.distance,required this.imageUrl,required this.price,required this.starReviews,required this.reviews});

}

List<HotelModel> hotels = [
  HotelModel(
    name: 'Grand Royal Hotel',
    location: 'wembley, London',
    distance: 2,
    imageUrl: 'assets/hotel/hotel_1.png',
    price: 180,
    starReviews: 4,
    reviews: 80,
  ),
  HotelModel(
    name: 'Queen hotel',
    location: 'wembley, London',
    distance: 2,
    imageUrl: 'assets/hotel/hotel_2.png',
    price: 220,
    starReviews: 4,
    reviews: 80,
  ),
  HotelModel(
    name: 'Friends Hostel.Area B',
    location: 'Hebron, Palestine',
    distance: 1,
    imageUrl: 'assets/hotel/hotel_3.png',
    price: 30,
    starReviews: 4,
    reviews: 34,
  ),
  HotelModel(
    name: 'Abu Mazen Hotel',
    location: 'Hebron, Palestine',
    distance: 3,
    imageUrl: 'assets/hotel/hotel_4.png',
    price: 100,
    starReviews: 4,
    reviews: 16,
  ),
  HotelModel(
    name: 'Alsharif Family Hotel',
    location: 'Hebron, Palestine',
    distance: 1,
    imageUrl: 'assets/hotel/hotel_5.png',
    price: 50,
    starReviews: 3,
    reviews: 10,
  ),
  HotelModel(
    name: 'Hebron Hope Center',
    location: 'Hebron, Palestine',
    distance: 2,
    imageUrl: 'assets/hotel/hotel_1.png',
    price: 40,
    starReviews: 4,
    reviews: 22,
  ),
  HotelModel(
    name: 'Laverda Group Hotel',
    location: 'Hebron, Palestine',
    distance: 2,
    imageUrl: 'assets/hotel/hotel_2.png',
    price: 70,
    starReviews: 3,
    reviews: 8,
  ),
  HotelModel(
    name: 'Assaraya Palace Hotel',
    location: 'Palestine',
    distance: 20,
    imageUrl: 'assets/hotel/hotel_3.png',
    price: 80,
    starReviews: 4,
    reviews: 25,
  ),
  HotelModel(
    name: 'Al Yasmeen Hotel',
    location: 'Nablus, Palestine',
    distance: 60,
    imageUrl: 'assets/hotel/hotel_4.png',
    price: 90,
    starReviews: 4,
    reviews: 30,
  ),
  HotelModel(
    name: 'Al Yasmeen Hotel',
    location: 'Nablus, Palestine',
    distance: 60,
    imageUrl: 'assets/hotel/hotel_5.png',
    price: 90,
    starReviews: 4,
    reviews: 30,
  ),
];
