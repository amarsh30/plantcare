class CategoryPlant {
  CategoryPlant({
    this.title = '',
    this.flush = '',
    this.temperature = '',
    this.imageAssets = '',
});

  String title;
  String flush;
  String temperature;
  String imageAssets;

  static List<CategoryPlant> plantList = <CategoryPlant>[
    CategoryPlant(
      title: 'Plant 1',
      flush: '3/Day',
      temperature: '32C',
      imageAssets: 'assets/images/plant1.jpg',
    ),
    CategoryPlant(
      title: 'Plant 2',
      flush: '3/Day',
      temperature: '32C',
      imageAssets: 'assets/images/plant2.jpeg',
    ),
    CategoryPlant(
      title: 'Plant 3',
      flush: '3/Day',
      temperature: '32C',
      imageAssets: 'assets/images/plant3.jpeg',
    ),
    CategoryPlant(
      title: 'Plant 4',
      flush: '3/Day',
      temperature: '32C',
      imageAssets: 'assets/images/plant4.jpeg',
    ),
    CategoryPlant(
      title: 'Plant 5',
      flush: '3/Day',
      temperature: '32C',
      imageAssets: 'assets/images/plant5.jpeg',
    ),
    CategoryPlant(
      title: 'Plant 6',
      flush: '3/Day',
      temperature: '32C',
      imageAssets: 'assets/images/palnt6.jpeg',
    ),
    CategoryPlant(
      title: 'Plant 7',
      flush: '3/Day',
      temperature: '32C',
      imageAssets: 'assets/images/plant7.jpeg',
    ),
    CategoryPlant(
      title: 'Plant 8',
      flush: '3/Day',
      temperature: '32C',
      imageAssets: 'assets/images/plant8.jpeg',
    ),
    CategoryPlant(
      title: 'Plant 9',
      flush: '3/Day',
      temperature: '32C',
      imageAssets: 'assets/images/plant9.jpeg',
    ),
    CategoryPlant(
      title: 'Plant 10',
      flush: '3/Day',
      temperature: '32C',
      imageAssets: 'assets/images/plant10.jpeg',
    ),
  ];

}