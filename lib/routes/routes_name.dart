abstract class NamesRoute {
  static const homepage = '/homepage';
  static const product = '/product';
  // ignore: slash_for_doc_comments
  /** 
   * Add ':' and '?' because further we wan't to add parameters
   *   Example of the result :
   *   '/product/user1?name=Shoes&ukuran=XL'
   */
  static const productDetail = '/product/:id?';
}
