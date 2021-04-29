import 'dart:convert';

class Constants {
  static const icon_launcher = "assets/roomart_logo2.png";
  static const resellerImage = "assets/reseller_image.png";
  static const banner = "assets/banner_roomart.jpg";
  static const title_appbar = "ROOMART";
  String resellerParentID = null; //Disesuaikan dengan kode reseller

  String storageBox = 'roomart_storage_key';

  //new base url
  String baseUrlProduction =
      "http://cloud.erp.web.id:8080/padasuka/weblayer/template/";
  String baseUrlProductionBackup =
      "http://cloud.erp.web.id:8080/roomart/weblayer/template/";
  String imageBaseUrl = "http://cloud.erp.web.id:8080";

  String get getUltimoBaseUrl => this._ultimoBaseUrl;
  String get getBaseUrlProduction => this.baseUrlProduction;
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

  String itemIdDefault = "DM157164867164000968368";
  String itemIdJNE = "DM153371469972881510952";
  String itemIdWahana = "DM153387475973542371076";
  String itemIdJNT = "DM153371502365082947469";
  String itemIdNinja = "DM153371448406579748777";

  String itemCodeDefault = "99010001";
  String itemCodeNinja = "991403";
  String itemCodeJnt = "991405";
  String itemCodeWahana = "991407";
  String itemCodeJne = "991404";

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
  List<String> courierList = ["jne", "tiki", "pos"];
  String credentialBaseAuthMidtrans = "Mid-server-lnQZNDM1m-f4lBFXHY_AQrSx:";

  String radioButtonMidtrans =
      "- Kartu Kredit \n\n- Bank Virtual Account ( BNI VA Account, BCA VA Account, Mandiri Bill Payment )\n\n- GoPay\n\n- Akulaku";
  String radioButtonMidtransDev = "- Kartu Kredit \n\n- Akulaku";
}
