class categories {
  final String pic, title, subtitle;
  categories({
    required this.pic,
    required this.subtitle,
    required this.title,
  });
  static List<categories> lscategories = [
    categories(
        pic:
            'https://img.freepik.com/free-vector/cosmetics-products-advertising_1284-32872.jpg?size=626&ext=jpg&ga=GA1.2.46474826.1677906147&semt=sph',
        subtitle:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
        title: 'New collection for your beauty'),
    categories(
        pic:
            'https://img.freepik.com/free-vector/cosmetics-product-men-composition_1284-24655.jpg?size=626&ext=jpg&ga=GA1.2.46474826.1677906147&semt=sph',
        subtitle: ' If you are going to use a passage of Lorem Ipsum,',
        title: 'Cosmetic for men'),
    categories(
        pic:
            'https://img.freepik.com/free-vector/realistic-ad-template-natural-cream_23-2148255735.jpg?size=626&ext=jpg&ga=GA1.2.46474826.1677906147&semt=sph',
        subtitle: 'Lorem Ipsum comes from sections 1.10.32 and 1.10.33 ',
        title: 'Cosmetic ads')
  ];
}
