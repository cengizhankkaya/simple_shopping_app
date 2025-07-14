# Simple Shopping App

Flutter ile geliştirilmiş, modern ve sade bir alışveriş uygulaması örneği.

## Özellikler
- **Giriş (Login) Ekranı:** Kullanıcı adı ve şifre ile giriş yapılır.
- **Katalog Ekranı:** Renkli kutularla listelenmiş, özel isimli ürünler. Sepete eklenen ürünlerin yanında tik işareti çıkar.
- **Sepet (Cart) Ekranı:** Sepete eklenen ürünler listelenir, toplam tutar ve “BUY” butonu bulunur.
- **State Management:** [Provider](https://pub.dev/packages/provider) ile sepet yönetimi.
- **Responsive ve modern tasarım.**

## Ekran Görüntüleri

### Giriş Ekranı
- Kullanıcı adı ve şifre alanı, sarı “ENTER” butonu.

### Katalog Ekranı
- Sarı AppBar, ortalanmış başlık, sağda sepet ikonu.
- Renkli kutular, ürün isimleri, “ADD” butonu veya tik.

### Sepet Ekranı
- Sarı arka plan, ortalanmış başlık, ürünler başında nokta.
- Alt kısımda büyük puntolu toplam tutar ve “BUY” butonu.

## Kurulum

1. **Projeyi klonla:**
   ```sh
   git clone <repo-link>
   cd simple_shopping_app
   ```

2. **Bağımlılıkları yükle:**
   ```sh
   flutter pub get
   ```

3. **Uygulamayı başlat:**
   ```sh
   flutter run
   ```

## Dosya Yapısı

```
lib/
  main.dart                  # Uygulama başlangıcı, Provider ile sepet yönetimi
  feature/
    login/
      view/
        login_view.dart      # Giriş ekranı
    home/
      view/
        catalog_screen.dart  # Katalog ekranı
        cart_screen.dart     # Sepet ekranı
      viewmodel/
        cart_model.dart      # Item modeli ve CartModel (state management)
```

## Kullanılan Paketler
- [provider](https://pub.dev/packages/provider): State management için.

## Geliştirici Notları
- Ürünler ve renkler sabit bir listede tutulur.
- Sepete eklenen ürünler, katalogda tik ile gösterilir.
- Her ürünün fiyatı sabit (42$).
- Kodlar sade ve anlaşılır tutulmuştur, kolayca özelleştirilebilir.

## Katkı
Katkıda bulunmak isterseniz, lütfen bir fork oluşturup pull request gönderin.

---

Herhangi bir sorunda veya öneride bulunmak için iletişime geçebilirsiniz! 🚀
