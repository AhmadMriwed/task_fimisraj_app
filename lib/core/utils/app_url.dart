//final  baseUrl ="http://localhost:8080/";
//  const baseServ ="http://127.0.0.1:8000/";
const baseServ = "https://ptc.yorkacademy.uk/";
const baseUrl = "${baseServ}api/";
   const storageUrl = "${baseServ}storage/";
const user = "user/";

const users = "users";

class AppUrl {

  /// User
  ///*******************************************************************************
  ///<------------------------------------------------------------------------------
  // static final getUser = "${baseUrl}";
  static const login = "${baseUrl}login";
  static const register = "${baseUrl}register";
  static const logout = "${baseUrl}logout";
  static const getProfile = '${baseServ}api';

  ///------------------------------------------------------------------------------>





  ///Users
  ///*******************************************************************************
  ///<------------------------------------------------------------------------------
  static const searchUsersByTerm = "$baseUrl$users";
///------------------------------------------------------------------------------>
  ///
  ///*******************************************************************************
  ///<------------------------------------------------------------------------------
  ///------------------------------------------------------------------------------>

  ///*******************************************************************************
  ///<------------------------------------------------------------------------------
  ///------------------------------------------------------------------------------>

  ///*******************************************************************************
  ///<------------------------------------------------------------------------------
  ///------------------------------------------------------------------------------>

  ///*******************************************************************************
  ///<------------------------------------------------------------------------------
  ///------------------------------------------------------------------------------>

}
