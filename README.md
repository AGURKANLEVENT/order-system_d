# order-system_d
Kurulum ve Hazırlık:

Laravel kurulumu yapılır ve JWT kimlik doğrulama paketi yüklenir.
Gerekli tablolar (customers, products, orders) için migration dosyaları oluşturulur ve tablolar arasında ilişkiler tanımlanır.
Model ve İlişkiler:

Customer, Product, ve Order modelleri oluşturulur.
Siparişlerin müşteriler ve ürünler ile bire çok ilişki içinde olduğu tanımlanır.
API Uç Noktaları:

Sipariş oluşturmak ve listelemek için iki uç nokta (POST /orders, GET /orders) geliştirilir.
GET /orders yanıtında müşteri ve ürün bilgileri dahil edilir.
JWT Yetkilendirme:

Tüm uç noktalara erişim, JWT ile kimlik doğrulamayı gerektirir.
Docker Entegrasyonu:

Proje bir Docker container'ında çalıştırılacak şekilde yapılandırılmıştır.
Dockerfile ve docker-compose.yml dosyaları kullanılarak, uygulama ve MySQL veritabanı servisleri tanımlanır.
GitHub ReadMe Dosyası:

Kurulum ve API kullanımı için gerekli bilgiler sağlanır.
