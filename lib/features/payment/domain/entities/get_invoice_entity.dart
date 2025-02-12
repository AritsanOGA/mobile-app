import 'package:equatable/equatable.dart';

class GetInvoiceEntity extends Equatable {
  final int id;
  final int jobId;
  final int noOfCandidate;
  final String identity;
  final int employerId;
  final int invoiceNumber;
  final int paid;
  final int userId;
  final String package;
  final int percentage;
  final String balance;
  final String amount;
  final String balWithVat;
  final String amountWithVat;
  final String totalWithVat;
  final String total;
  final String vat;
  final String status;
  final DateTime createdAt;
  final DateTime updatedAt;
  final List<Payment> payments;
  final Users users;

  const GetInvoiceEntity({
    required this.id,
    required this.jobId,
    required this.noOfCandidate,
    required this.identity,
    required this.employerId,
    required this.invoiceNumber,
    required this.paid,
    required this.userId,
    required this.package,
    required this.percentage,
    required this.balance,
    required this.amount,
    required this.balWithVat,
    required this.amountWithVat,
    required this.totalWithVat,
    required this.total,
    required this.vat,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.payments,
    required this.users,
  });

  @override
  List<Object?> get props => [
        id,
        jobId,
        noOfCandidate,
        identity,
        employerId,
        invoiceNumber,
        paid,
        userId,
        package,
        percentage,
        balance,
        amount,
        balWithVat,
        amountWithVat,
        totalWithVat,
        total,
        vat,
        status,
        createdAt,
        updatedAt,
        payments,
        users
      ];

  // factory GetInvoiceEntity.fromJson(Map<String, dynamic> json) =>
  //     GetInvoiceEntity(
  //       id: json["id"],
  //       jobId: json["job_id"],
  //       noOfCandidate: json["no_of_candidate"],
  //       identity: json["identity"],
  //       employerId: json["employer_id"],
  //       invoiceNumber: json["invoice_number"],
  //       paid: json["paid"],
  //       userId: json["user_id"],
  //       package: json["package"],
  //       percentage: json["percentage"],
  //       balance: json["balance"],
  //       amount: json["amount"],
  //       balWithVat: json["bal_with_vat"],
  //       amountWithVat: json["amount_with_vat"],
  //       totalWithVat: json["total_with_vat"],
  //       total: json["total"],
  //       vat: json["vat"],
  //       status: json["status"],
  //       createdAt: DateTime.parse(json["created_at"]),
  //       updatedAt: DateTime.parse(json["updated_at"]),
  //       payments: List<Payment>.from(json["payments"].map((x) => Payment.fromJson(x))),
  //       users: Users.fromJson(json["users"]),
  //     );
}

// Payment Model with Equatable
class Payment extends Equatable {
  final int id;
  final int paid;
  final int confirmed;
  final int balancePaid;
  final int invoiceId;
  final String transactionId;
  final String currency;
  final int paymentStatus;
  final String amount;
  final int percentage;
  final int noOfCandidate;
  final String trxId;
  final String trxRef;
  final String paymentMethod;
  final int userId;
  final String bank;
  final String phone;
  final String email;
  final String package;
  final String depositorName;
  final String paymentGateway;
  final String location;
  final String teller;
  final DateTime purchaseDate;
  final dynamic expirationDate;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String status;

  const Payment({
    required this.id,
    required this.paid,
    required this.confirmed,
    required this.balancePaid,
    required this.invoiceId,
    required this.transactionId,
    required this.currency,
    required this.paymentStatus,
    required this.amount,
    required this.percentage,
    required this.noOfCandidate,
    required this.trxId,
    required this.trxRef,
    required this.paymentMethod,
    required this.userId,
    required this.bank,
    required this.phone,
    required this.email,
    required this.package,
    required this.depositorName,
    required this.paymentGateway,
    required this.location,
    required this.teller,
    required this.purchaseDate,
    required this.expirationDate,
    required this.createdAt,
    required this.updatedAt,
    required this.status,
  });

  @override
  List<Object?> get props => [
        id,
        paid,
        confirmed,
        balancePaid,
        invoiceId,
        transactionId,
        currency,
        paymentStatus,
        amount,
        percentage,
        noOfCandidate,
        trxId,
        trxRef,
        paymentMethod,
        userId,
        bank,
        phone,
        email,
        package,
        depositorName,
        paymentGateway,
        location,
        teller,
        purchaseDate,
        expirationDate,
        createdAt,
        updatedAt,
        status
      ];

  // factory Payment.fromJson(Map<String, dynamic> json) => Payment(
  //       id: json["id"],
  //       paid: json["paid"],
  //       confirmed: json["confirmed"],
  //       balancePaid: json["balance_paid"],
  //       invoiceId: json["invoice_id"],
  //       transactionId: json["transaction_id"],
  //       currency: json["currency"],
  //       paymentStatus: json["payment_status"],
  //       amount: json["amount"],
  //       percentage: json["percentage"],
  //       noOfCandidate: json["no_of_candidate"],
  //       trxId: json["trx_id"],
  //       trxRef: json["trx_ref"],
  //       paymentMethod: json["payment_method"],
  //       userId: json["user_id"],
  //       bank: json["bank"],
  //       phone: json["phone"],
  //       email: json["email"],
  //       package: json["package"],
  //       depositorName: json["depositor_name"],
  //       paymentGateway: json["payment_gateway"],
  //       location: json["location"],
  //       teller: json["teller"],
  //       purchaseDate: DateTime.parse(json["purchase_date"]),
  //       expirationDate: json["expiration_date"],
  //       createdAt: DateTime.parse(json["created_at"]),
  //       updatedAt: DateTime.parse(json["updated_at"]),
  //       status: json["status"],
  //     );
}

// Users Model with Equatable
class Users extends Equatable {
  final int id;
  final String fullName;
  final String email;
  final String role;
  final String status;
  final String phone;
  final String profileImage;
  final DateTime createdAt;
  final DateTime updatedAt;

  const Users({
    required this.id,
    required this.fullName,
    required this.email,
    required this.role,
    required this.status,
    required this.phone,
    required this.profileImage,
    required this.createdAt,
    required this.updatedAt,
  });

  @override
  List<Object?> get props => [
        id,
        fullName,
        email,
        role,
        status,
        phone,
        profileImage,
        createdAt,
        updatedAt
      ];

 
}
