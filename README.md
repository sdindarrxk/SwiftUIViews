# SwiftUI Custom Views

Bu proje, SwiftUI kullanarak özel metin ve etiket bileşenleri oluşturmaya yönelik bir örnektir.
Projede, özelleştirilebilir `CustomText`, `IconLabel` ve CustomText'ten türetilmiş başlık, alt başlık gibi çeşitli etiketler bulunmaktadır.

## Özellikler

- **CustomText**: Özelleştirilebilir boyut, ağırlık, renk ve font özellikleri.
- **IconLabel**: İkon ve metin kombinasyonları ile etiket oluşturma. İkon rengi ve tıklama ile ikon değiştirme.
- **Özelleştirilebilir Bileşenler**: Başlık, alt başlık, gövde metni, başlık ve alt başlık gibi özel bileşenler.

## Kullanım

Proje içindeki özel bileşenleri kullanarak kendi SwiftUI projelerinizi oluşturabilirsiniz. Aşağıda bazı temel kullanım örnekleri bulunmaktadır.

### Text Elemanlarının Kullanımı

```swift
CustomText Kullanımı
CustomText("Örnek Metin", size: 20, weight: .bold, color: .blue) {
    print("Metne tıklandı!")
}
IconLabel Kullanımı
swift
Kodu kopyala
IconLabel(text: "Yıldız", icon: "star", iconColor: .green) {
    print("İkona tıklandı!")
}
Örnekler
TitleLabel
swift
Kodu kopyala
TitleLabel(text: "Başlık Metni") {
    print("Başlığa tıklandı!")
}
SubtitleLabel
swift
Kodu kopyala
SubtitleLabel(text: "Alt Başlık Metni") {
    print("Alt başlığa tıklandı!")
}
