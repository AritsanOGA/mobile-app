import 'package:artisan_oga/features/payment/domain/entities/get_invoice_entity.dart';

class GetInvoiceModel extends GetInvoiceEntity {
  GetInvoiceModel({
    required super.id,
    required super.jobId,
    required super.noOfCandidate,
    required super.identity,
    required super.employerId,
    required super.invoiceNumber,
    required super.paid,
    required super.userId,
    required super.package,
    required super.percentage,
    required super.balance,
    required super.amount,
    required super.balWithVat,
    required super.amountWithVat,
    required super.totalWithVat,
    required super.total,
    required super.vat,
    required super.status,
    required super.createdAt,
    required super.updatedAt,
    required super.payments,
    required super.users,
  });

  factory GetInvoiceModel.fromJson(Map<String, dynamic> json) =>
      GetInvoiceModel(
        id: json['id'] as int? ?? 0,
        jobId: json['job_id'] as int? ?? 0,
        noOfCandidate: json['no_of_candidate'] as int? ?? 0,
        identity: json['identity'] as String? ?? '',
        employerId: json['employer_id'] as int? ?? 0,
        invoiceNumber: json['invoice_number'] as int? ?? 0,
        paid: json['paid'] as int? ?? 0,
        userId: json['user_id'] as int? ?? 0,
        package: json['package'] as String? ?? '',
        percentage: json['percentage'] as int? ?? 0,
        balance: json['balance'] as String? ?? '',
        amount: json['amount'] as String? ?? '',
        balWithVat: json['bal_with_vat'] as String? ?? '',
        amountWithVat: json['amount_with_vat'] as String? ?? '',
        totalWithVat: json['total_with_vat'] as String? ?? '',
        total: json['total'] as String? ?? '',
        vat: json['vat'] as String? ?? '',
        status: json['status'] as String? ?? '',
        createdAt: DateTime.parse(json['created_at'] ?? ''),
        updatedAt: DateTime.parse(json['updated_at'] ?? ''),
        payments: (json['payments'] as List<dynamic>?)
                ?.map((e) => PaymentModel.fromJson(e as Map<String, dynamic>))
                .toList() ??
            [],
        users: UsersModel.fromJson(json['users'] as Map<String, dynamic>),
      );
}

class PaymentModel extends Payment {
  PaymentModel({
    required super.id,
    required super.paid,
    required super.confirmed,
    required super.balancePaid,
    required super.invoiceId,
    required super.transactionId,
    required super.currency,
    required super.paymentStatus,
    required super.amount,
    required super.percentage,
    required super.noOfCandidate,
    required super.trxId,
    required super.trxRef,
    required super.paymentMethod,
    required super.userId,
    required super.bank,
    required super.phone,
    required super.email,
    required super.package,
    required super.depositorName,
    required super.paymentGateway,
    required super.location,
    required super.teller,
    required super.purchaseDate,
    required super.expirationDate,
    required super.createdAt,
    required super.updatedAt,
    required super.status,
  });

  factory PaymentModel.fromJson(Map<String, dynamic> json) => PaymentModel(
        id: json['id'] as int? ?? 0,
        paid: json['paid'] as int? ?? 0,
        confirmed: json['confirmed'] as int? ?? 0,
        balancePaid: json['balance_paid'] as int? ?? 0,
        invoiceId: json['invoice_id'] as int? ?? 0,
        transactionId: json['transaction_id'] as String? ?? '',
        currency: json['currency'] as String? ?? '',
        paymentStatus: json['payment_status'] as int? ?? 0,
        amount: json['amount'] as String? ?? '',
        percentage: json['percentage'] as int? ?? 0,
        noOfCandidate: json['no_of_candidate'] as int? ?? 0,
        trxId: json['trx_id'] as String? ?? '',
        trxRef: json['trx_ref'] as String? ?? '',
        paymentMethod: json['payment_method'] as String? ?? '',
        userId: json['user_id'] as int? ?? 0,
        bank: json['bank'] as String? ?? '',
        phone: json['phone'] as String? ?? '',
        email: json['email'] as String? ?? '',
        package: json['package'] as String? ?? '',
        depositorName: json['depositor_name'] as String? ?? '',
        paymentGateway: json['payment_gateway'] as String? ?? '',
        location: json['location'] as String? ?? '',
        teller: json['teller'] as String? ?? '',
        purchaseDate: json['purchase_date'] != null
            ? DateTime.parse(json['purchase_date'])
            : DateTime.now(),
        expirationDate: json['expiration_date'],
        createdAt: json['created_at'] != null
            ? DateTime.parse(json['created_at'])
            : DateTime.now(),
        updatedAt: json['updated_at'] != null
            ? DateTime.parse(json['updated_at'])
            : DateTime.now(),
        status: json['status'] as String? ?? '',
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'paid': paid,
        'confirmed': confirmed,
        'balance_paid': balancePaid,
        'invoice_id': invoiceId,
        'transaction_id': transactionId,
        'currency': currency,
        'payment_status': paymentStatus,
        'amount': amount,
        'percentage': percentage,
        'no_of_candidate': noOfCandidate,
        'trx_id': trxId,
        'trx_ref': trxRef,
        'payment_method': paymentMethod,
        'user_id': userId,
        'bank': bank,
        'phone': phone,
        'email': email,
        'package': package,
        'depositor_name': depositorName,
        'payment_gateway': paymentGateway,
        'location': location,
        'teller': teller,
        'purchase_date': purchaseDate.toIso8601String(),
        'expiration_date': expirationDate,
        'created_at': createdAt.toIso8601String(),
        'updated_at': updatedAt.toIso8601String(),
        'status': status,
      };
}

class UsersModel extends Users {
  UsersModel({
    required super.id,
    required super.fullName,
    required super.email,
    required super.profileImage,
    required super.status,
    required super.role,
    required super.phone,
    required super.createdAt,
    required super.updatedAt,
  });

  factory UsersModel.fromJson(Map<String, dynamic> json) => UsersModel(
        id: json['id'] as int? ?? 0,
        status: json['status'] as String ?? '',
        role: json['role'] as String ?? '',
        fullName: json['full_name'] as String? ?? '',
        email: json['email'] as String? ?? '',
        phone: json['phone'] as String? ?? '',
        createdAt: DateTime.parse(json['created_at'] ?? ''),
        updatedAt: DateTime.parse(json['updated_at'] ?? ''),
        profileImage: json['profileImage'] as String ?? '',
      );
}
