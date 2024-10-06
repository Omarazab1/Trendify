class EndPoints{
  static const String baseUrl = "https://api.github.com/";
  static String signIn = "user/signin";
  static String signUp = "user/signup";
  static String getUserDataEndPoint(id) {
    return "user/get-user/$id";
  }
}

class ApiKeys{
  static String status = "status";
  static String errorMessage = "ErrorMessage";
  static String email = "email";
  static String password = "password";
  static String token = "token";
  static String message = "message";
  static String id = "id";
  static String name = "name";
  static String phone = "phone";
  static String confirmPassword = "confirmPassword";
  static String location = "location";
  static String profilePic = "profilePic";


}