class popularproduct {
  final String product, namepro, rate, viewer, like;
  final double price;
  popularproduct(
      {required this.like,
      required this.namepro,
      required this.price,
      required this.product,
      required this.rate,
      required this.viewer});
  static List<popularproduct> lspro = [
    popularproduct(
        like: '121',
        namepro: 'Coconute oil',
        price: 12.55,
        product:
            'https://www.pngfind.com/pngs/m/253-2534052_view-product-cosmetics-hd-png-download.png',
        rate: '4.5',
        viewer: '1101'),
    popularproduct(
        like: '223',
        namepro: 'EESANCE',
        price: 10.99,
        product:
            'https://img.freepik.com/premium-vector/vector-bottle-serum-cosmetic_68094-115.jpg?w=2000',
        rate: '5.0',
        viewer: '233'),
    popularproduct(
        like: '22',
        namepro: 'Mesturereligus',
        price: 15.99,
        product:
            'https://www.shutterstock.com/image-vector/blue-skin-care-gift-set-260nw-1183791751.jpg',
        rate: '6.0',
        viewer: '121'),
    popularproduct(
        like: '130',
        namepro: 'Spray',
        price: 8.57,
        product:
            'https://www.shutterstock.com/image-vector/cosmetic-magazine-template-turquoise-refreshing-260nw-750704893.jpg',
        rate: '7.5',
        viewer: '980'),
    popularproduct(
        like: '122',
        namepro: 'GUCCI',
        price: 24.99,
        product:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSshKK1IyB0Uuipscs5Ty4z8Yb-G3HZ1r-geJ9h9jnSQ4ka95EjUVBMhz4NFDsPiwCpV7Q&usqp=CAU',
        rate: '8.0',
        viewer: '235'),
  ];
}
