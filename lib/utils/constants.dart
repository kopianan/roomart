import 'package:roomart/application/rajaongkir/ongkir_code_data_model.dart';

class Constants {
  static const icon_launcher = "assets/logo.png";
  static const logo = "assets/logo.png";
  static const promotion_image = "assets/promotion.png";
  static const title_appbar = "ROOMART SERANG";
  String resellerParentID = null; //Disesuaikan dengan kode reseller

  String storageBox = 'roomart_storage_key';

  //new base url
  String baseUrlProduction =
      "http://vipcloud.erp.web.id:8080/tokoku-android/weblayer/template/";
  String baseUrlProductionBackup =
      "http://vipcloud.erp.web.id:8080/roomart/weblayer/template/";
  String imageBaseUrl = "http://cloud.erp.web.id:8080";
  static const locCode = "SER";
  static const locId = "DM147753742227307918394";
  static const transactionCode = "DC";
  String get getUltimoBaseUrl => this._ultimoBaseUrl;
  String get getBaseUrlProduction => this.baseUrlProduction;
  String get getBaseUrlProductionBackup => this.baseUrlProductionBackup;
  //url api untuk get coupon code
  String _ultimoBaseUrl = "http://roomart.erp.web.id/umbraco/api";
  String midtransBaseAPPProduction = "https://app.midtrans.com";
  String midtransBaseAPIProduction = "https://api.midtrans.com";
  String accessKeyUltimo = "277596e6-0ecf-4139-9861-e278680ff536";

  String tokenUltimo = "371f754a-5438-4036-8fb2-14ea59e5ea4a";
  String tokenUltimo2 = "1d873197-8952-4ed3-8738-232c3c2ebb31";

  String customerTypeReseller = "DM152548649756011793164";
  String customerTypeReseller2 = "DM158597782964902435338";
  String customerTypeId = "DM151627192557861134072";
  String paymentTypeMidtrans = "DM159834710066540997321";

  String transactionTypeCredit = "138120846724201371547";
  String transactionTypeTransfer = "DM141509272240368323714";

  List<OngkirCodeDataModel> courierList = [
    OngkirCodeDataModel(
        code: "99010001",
        id: "DM157164867164000968368",
        label: "default",
        name: "Default"),
    OngkirCodeDataModel(
        code: "991403",
        id: "DM153371469972881510952",
        label: "ninja",
        name: "Ninja"),
    OngkirCodeDataModel(
        code: "991405",
        id: "DM153371502365082947469",
        label: "jnt",
        name: "J&T"),
    OngkirCodeDataModel(
        code: "991407",
        id: "DM153387475973542371076",
        label: "wahana",
        name: "Wahana"),
    OngkirCodeDataModel(
        code: "991404",
        id: "DM153371448406579748777",
        label: "jne",
        name: "JNE"),
  ];

  String contactUs =
      "Menerima pembelian secara GROSIR, ECERAN dan DROPSHIP. Kami menjual berbagai kebutuhan unntuk memperindah rumah. Terlengkap dan Terperca di Indonesia, kami menyediakan beragam produk berkualiatas dengan harga terjangkau. \n\nBuka pada hari senin-jumat jam 08:00 - 17:00\ndan pada hari sabtu jam 08.00 - 15.00\n\nPesanan diproses sesuai urutan order.\n\n----\nWhatsapp 0813-1037-1607";

  var enabledPayment = [
    "credit_card",
    "bca_va",
    "bni_va",
    "echannel",
    "gopay",
    "akulaku"
  ];
  var enabledPaymentDev = ["credit_card", "akulaku"];
  String credentialBaseAuthMidtrans = "Mid-server-lnQZNDM1m-f4lBFXHY_AQrSx:";

  String radioButtonMidtrans =
      "Kartu Kredit, Virtual Account(BNI,BCA,Mandiri,BillPayment), GoPay, Akulaku";
  String radioButtonMidtransDev = "- Kartu Kredit \n\n- Akulaku";
}
