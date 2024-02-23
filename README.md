# 🛒 RFM Analysis

---

# :briefcase: Business Case and Requirement
 #.Phân Loại Khách Hàng Sử Dụng RFM Analysis:
- Tính điểm cho từng khách hàng dựa trên ba tiêu chí chính: Recency, Frequency, và Monetary.
- Điểm số này giúp doanh nghiệp xác định được mức độ quan trọng của từng khách hàng và phân đoạn khách hàng thành các nhóm có đặc điểm tương tự.
- Tính điểm RFM: Mỗi khách hàng được chấm điểm từ 1 đến 5 cho từng tiêu chí (1 là thấp, 5 là cao).
- Phân nhóm khách hàng: Dựa vào điểm RFM, khách hàng được chia thành các nhóm:
   - Khách hàng tiềm năng: Mua hàng gần đây, thường xuyên và giá trị cao (RFM cao).
   - Khách hàng trung thành: Mua hàng thường xuyên, giá trị cao (RF cao, M trung bình).
   - Khách hàng cần kích hoạt: Mua hàng gần đây, giá trị cao nhưng ít mua (RFM trung bình).
   - Khách hàng cần theo dõi: Mua hàng gần đây, giá trị thấp (R cao, FM thấp).
   - Khách hàng cần giữ lại: Mua hàng ít, giá trị thấp (RFM thấp).
- Tính tháng tốt nhất để bán hàng trong một năm cụ thể là gì? Tháng đó kiếm được bao nhiêu?
- Những sản phẩm nào thường được bán cùng nhau nhất?
- Thành phố nào có số lượng bán hàng cao nhất ở một quốc gia cụ thể
- Sản phẩm tốt nhất ở Hoa Kỳ là gì?

---
# Kết quả.
* Doanh thu của các dòng sản phẩm
   - Classic Cars:
       - Doanh thu: $3,919,615.66
   - Vintage Cars:
       - Doanh thu: $1,903,150.84
    - Motorcycles:
       - Doanh thu: $1,166,388.34
    - Trucks and Buses:
       - Doanh thu: $1,127,789.84
    - Planes:
       - Doanh thu: $975,003.57
    - Ships:
       - Doanh thu: $714,437.13
    - Trains:
       - Doanh thu: $226,243.47
*  Doanh thu theo tháng:
    - Năm 2003:
       - Doanh thu: $3,516,979.54
    - Năm 2004:
       - Doanh thu: $4,724,162.60
    - Năm 2005:
       - Doanh thu: $1,791,486.71
*  Doanh thu theo kích thước giao dịch (deal size):
   - Deal Size: Medium:
       - Doanh thu: $6,087,432.24
   - Deal Size: Small:
       - Doanh thu: $2,643,077.35
   - Deal Size: Large:
       - Doanh thu: $1,302,119.26
     
    ---
   
Doanh thu và tần suất mua hàng theo tháng:
  - Tháng 1:
      - Doanh thu: $316,577.42
      - Tần suất: 91
  - Tháng 2:
       - Doanh thu: $311,419.53
       - Tần suất: 86
  - Tháng 3:
       - Doanh thu: $205,733.73
       - Tần suất: 56
  - Tháng 4:
       - Doanh thu: $206,148.12
       - Tần suất: 64
   - Tháng 5:
       - Doanh thu: $273,438.39
       - Tần suất: 74
   - Tháng 6:
       - Doanh thu: $286,674.22
       - Tần suất: 85
   - Tháng 7:
       - Doanh thu: $327,144.09
       - Tần suất: 91
   - Tháng 8:
       - Doanh thu: $461,501.27
       - Tần suất: 133
   - Tháng 9:
       - Doanh thu: $320,750.91
       - Tần suất: 95
   - Tháng 10:
       - Doanh thu: $552,924.25
       - Tần suất: 159
   - Tháng 11:
       - Doanh thu: $1,089,048.01
       - Tần suất: 301
   - Tháng 12:
       - Doanh thu: $372,802.66
       - Tần suất: 110
    ---
    
*  Doanh thu và tần suất mua hàng của các dòng sản phẩm theo tháng 11.
- Classic Cars:
  - Doanh thu: $372,231.89
  - Tần suất: 105
- Vintage Cars:
  - Doanh thu: $233,990.34
  - Tần suất: 65
- Motorcycles:
  - Doanh thu: $151,711.86
  - Tần suất: 39
- Trucks and Buses:
  - Doanh thu: $123,811.14
  - Tần suất: 29
- Planes:
  - Doanh thu: $121,130.70
  - Tần suất: 36
- Ships:
  - Doanh thu: $63,900.85
  - Tần suất: 21
- Trains:
  - Doanh thu: $22,271.23
  - Tần suất: 6
  
---
* 5 khách hàng có giá trị tiền mặt cao nhất
  - Mini Gifts Distributors Ltd.
   - Giá trị tiền mặt: $654,858.06
   - Tần suất mua hàng: 180
   - RFM Cell String: 444
  - Euro Shopping Channel
   - Giá trị tiền mặt: $912,294.11
   - Tần suất mua hàng: 259
   - RFM Cell String: 444
  - Australian Collectors, Co.
   - Giá trị tiền mặt: $200,995.41
   - Tần suất mua hàng: 55
   - RFM Cell String: 344
  - Muscle Machine Inc
   - Giá trị tiền mặt: $197,736.94
   - Tần suất mua hàng: 48
   - RFM Cell String: 344
  - La Rochelle Gifts
   - Giá trị tiền mặt: $180,124.90
   - Tần suất mua hàng: 53
   - RFM Cell String: 444
## Danh sách khách hàng

CUSTOMERNAME,rfm_recency,rfm_frequency,rfm_monetary,rfm_segment
Boards & Toys Co.,3,1,1,"new customers"
Atelier graphique,2,1,1,lost_customers
Auto-Moto Classics Inc.,3,1,1,"new customers"
Microscale Inc.,2,1,1,lost_customers
Royale Belge,3,1,1,"new customers"
Bavarian Collectables Imports, Co.,1,1,1,lost_customers
Double Decker Gift Stores, Ltd,1,1,1,lost_customers
Cambridge Collectables Co.,1,1,1,lost_customers
West Coast Collectables Co.,1,1,1,lost_customers
Men 'R' US Retailers, Ltd.,1,1,1,lost_customers
CAF Imports,1,1,1,lost_customers
Signal Collectibles Ltd.,1,1,1,lost_customers
Mini Auto Werke,3,1,1,"new customers"
Iberia Gift Imports, Corp.,1,1,1,lost_customers
Online Mini Collectables,1,1,1,lost_customers
Gift Ideas Corp.,3,1,1,"new customers"
Clover Collections, Co.,1,1,1,lost_customers
Australian Gift Network, Co,3,1,1,"new customers"
Australian Collectables, Ltd,4,2,1,NULL
Auto Assoc. & Cie.,1,1,1,lost_customers
Classic Gift Ideas, Inc,2,2,1,NULL
Osaka Souveniers Co.,1,2,1,lost_customers
Daedalus Designs Imports,1,2,1,lost_customers
Alpha Cognac,4,2,2,active
Diecast Collectables,1,1,2,lost_customers
Quebec Home Shopping Network,4,2,2,active
Mini Wheels Co.,2,2,2,"potential churners"
Royal Canadian Collectables, Ltd.,1,2,2,lost_customers
Marseille Mini Autos,3,2,2,"potential churners"
Petit Auto,4,2,2,active
Canadian Gift Exchange Network,2,2,2,"potential churners"
Volvo Model Replicas, Co,2,1,2,lost_customers
Classic Legends Inc.,2,2,2,"potential churners"
giftsbymail.co.uk,2,3,2,NULL
Enaco Distributors,2,2,2,"potential churners"
Lyon Souveniers,4,2,2,active
Norway Gifts By Mail, Co.,1,2,2,lost_customers
Super Scale Inc.,1,1,2,lost_customers
Mini Caravy,4,1,2,NULL
Collectables For Less Inc.,3,2,2,"potential churners"
Signal Gift Stores,3,3,2,active
Gifts4AllAges.com,4,3,2,active
Tekni Collectables Inc.,4,2,2,active
Motor Mint Distributors Inc.,2,2,2,"potential churners"
Blauer See Auto, Co.,2,2,2,"potential churners"
Mini Classics,2,3,2,NULL
Collectable Mini Designs Co.,1,2,3,lost_customers
Vitachrome Inc.,2,2,3,"potential churners"
Stylish Desk Decors, Co.,3,3,3,active
Auto Canal Petit,4,3,3,loyal
Cruz & Sons Co.,2,3,3,"potential churners"
Amica Models & Co.,1,3,3,"slipping away, cannot lose"
La Corne D'abondance, Co.,2,2,3,"potential churners"
FunGiftIdeas.com,3,3,3,active
Toms Spezialitten, Ltd,2,3,3,"potential churners"
Heintze Collectables,2,3,3,"potential churners"
Gift Depot Inc.,4,2,3,NULL
Marta's Replicas Co.,1,3,3,"slipping away, cannot lose"
Oulu Toy Supplies, Inc.,3,3,3,active
Toys4GrownUps.com,3,3,3,active
Mini Creations Ltd.,3,4,3,"slipping away, cannot lose"
Toys of Finland, Co.,3,3,3,active
Herkku Gifts,1,3,3,"slipping away, cannot lose"
Suominen Souveniers,3,3,3,active
Handji Gifts& Co,4,4,3,loyal
Baane Mini Imports,2,3,3,"potential churners"
Vida Sport, Ltd,1,3,3,"slipping away, cannot lose"
UK Collectables, Ltd.,4,3,3,loyal
Tokyo Collectables, Ltd,4,3,3,loyal
Corrida Auto Replicas, Ltd,2,3,4,NULL
Technics Stores Inc.,3,4,4,"slipping away, cannot lose"
Diecast Classics Inc.,4,3,4,loyal
Online Diecast Creations Co.,2,4,4,"slipping away, cannot lose"
Scandinavian Gift Ideas,3,4,4,"slipping away, cannot lose"
Reims Collectables,4,4,4,loyal
Rovelli Gifts,2,4,4,"slipping away, cannot lose"
L'ordine Souveniers,4,4,4,loyal
Saveley & Henriot, Co.,1,4,4,"slipping away, cannot lose"
Danish Wholesale Imports,4,4,4,loyal
Salzburg Collectables,4,4,4,loyal
Corporate Gift Ideas Co.,3,4,4,"slipping away, cannot lose"
Souveniers And Things Co.,4,4,4,loyal
Anna's Decorations, Ltd,3,4,4,"slipping away, cannot lose"
AV Stores, Co.,2,4,4,"slipping away, cannot lose"
The Sharp Gifts Warehouse,4,4,4,loyal
Land of Toys Inc.,2,4,4,"slipping away, cannot lose"
Dragon Souveniers, Ltd.,3,4,4,"slipping away, cannot lose"
La Rochelle Gifts,4,4,4,loyal
Muscle Machine Inc,3,4,4,"slipping away, cannot lose"
Australian Collectors, Co.,3,4,4,"slipping away, cannot lose"
Mini Gifts Distributors Ltd.,4,4,4,loyal
Euro Shopping Channel,4,4,4,loyal



  # 🧾 What can you practice with this case study?
- MySQl
  - cleaning, check Null values, transforming.
  - caculate RFM 
  - import, save csv file. 
