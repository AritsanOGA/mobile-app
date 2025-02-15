

class Customer {
  String email;
  String? phoneNumber;
  String? name;

  Customer({required this.email, this.name, this.phoneNumber});

  /// Converts instance of Customer to json
  Map<String, dynamic> toJson() {
    final customer = {
      "email": this.email,
      "phonenumber": this.phoneNumber ?? "",
      "name": this.name ?? ""
    };
    return customer;
    //return Utils.removeKeysWithEmptyValues(customer);
  }
}
