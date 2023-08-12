class ApiConfigration{
final baseUrl = 'https://mr-sushruth-backend-ecommerce.vercel.app/';

  final String registerUser = 'api/v1/user/create';
  final String registerEmail = 'api/v1/user/email/';
  final String userLogin = 'api/v1/user/login';
  final String userLoginOtp = 'api/v1/user/verify-otp/';//add otp after
  final String getAllCategory='api/v1/catg';
  final String getCategorisedList = 'api/v1/catg/';//add category id 
  final String productdetailsByID = 'api/v1/product/';//add id after
  final String addProductToCart = 'api/v1/cart/';//add product Id after
  final String applyCoupon = 'api/v1/cart/coupon';

}