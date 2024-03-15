class UnbordingContent {
  String image;
  String title;
  String description;

  UnbordingContent({
    required this.image,
    required this.title,
    required this.description,
  });
}

List<UnbordingContent> contents = [
  UnbordingContent(
    title: "Sağlıklı Beslenmeye Adım Atın",
    image: 'lib/assets/onbording_assets/onboarding_1.png',
    description: "Hoş geldiniz! Sağlıklı beslenmenin keyfini çıkarmanız için "
                 "size lezzetli ve besleyici tarifler sunuyoruz.",
  ),
  UnbordingContent(
    title: "Sağlıklı Bilgi ve Motivasyon",
    image: 'lib/assets/onbording_assets/onboarding_2.png',
    description: "Sağlıklı yaşam hakkında bilgi ve motivasyon dolu "
                 "içeriklerimizle size rehberlik ediyoruz.",
  ),
  UnbordingContent(
    title: "Oruç Takibi ve Kilo Kontrolü",
    image: 'lib/assets/onbording_assets/onboarding_3.png',
    description: "Başlamak için hazır mısınız? Oruç takibinden kilo kontrolüne kadar "
                 "size özel rehberlik sunuyoruz. Sağlıklı bir yaşama adım atın!",
  ),
];
