kode peserta : FSDO002ONL015
Nama Peserta : Pieter Chrsitian Wenji
Tugas : Final Project

POST: "/api/AuthManagement/Register" => Register akun baru untuk mendapatkan token
POST: "/api/AuthManagement/Login" => Login untuk akun lama untuk mendapatkan token
POST: "/api/AuthManagement/RefreshToken" => Untuk merefresh token bila expired

GET: "/api/PaymentDetail" => Mendapatkan daftar payment detail
GET: "/api/PaymentDetail/{id}" => Mendaptkan daftar payment dari id yang spesifik dari parameter

POST: "/api/PaymentDetail" => Menambahkan data payment detail dari body json
format :
{
  "cardOwnerName": "string",
  "cardNumber": "string",
  "expirationDate": "2021-12-01T04:29:07.416Z",
  "securityCode": "string"
}

PUT: "/api/PaymentDetail/{id}" => mengubah data / update dari data movie id yang di parameter
format : 
{
  "paymentDetailId": 0,
  "cardOwnerName": "string",
  "cardNumber": "string",
  "expirationDate": "2021-12-01T04:30:22.049Z",
  "securityCode": "string"
}

DELETE: "/api/PaymentDetail/{id}" => Menghapus data payment detail, sesuai dengan id yang ada di parameter


