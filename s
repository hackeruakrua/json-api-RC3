ДОБАВЛЕНИЕ ЗАЯВОК

POST https://market-plus.salesdrive.me/handler/
Content-Type: application/json

{
    "form": "52yJ9CxgAQ-8aXb54C--_ZInYCXXvBTXjR4cxj70BKVwuecZPAl4cNG19MZeQ9d",
    "products": [
        {
            "id": "",
            "name": "",
            "costPerItem": "",
            "amount": "",
            "description": "",
            "discount": "",
            "sku": ""
        }
    ],
    "comment": "",
    "fName": "",
    "phone": "",
    "email": "",
    "con_comment": "",
    "shipping_address": "",
    "shipping_method": "",
    "payment_method": "",
    "novaposhta": {
        "ServiceType": "",
        "city": "",
        "WarehouseNumber": "",
        "Street": "",
        "BuildingNumber": "",
        "Flat": "",
        "backwardDeliveryCargoType": ""
    },
    "ukrposhta": ""
}

Параметры запроса:

products                                                              Массив товаров
products[i][id]                                                       id товара
products[i][name]                                                     название товара
products[i][costPerItem]                                              цена
products[i][amount]                                                   количество
products[i][description]                                              описание товарной позиции в заявке
products[i][discount]                                                 скидка, задается в % или в абсолютной величине
products[i][sku]                                                      артикул (SKU) товара
comment                                                               Комментарий
fName                                                                 ФИО
phone                                                                 Телефон
email                                                                 Email
con_comment                                                           Комментарий
shipping_address                                                      Адрес доставки
shipping_method                                                       Способ доставки
payment_method                                                        Способ оплаты
novaposhta[city]                                                      Название города на русском или украинском языке, или Ref города в системе Новой почты
novaposhta[ServiceType]                                               возможные значения: DoorsDoors, DoorsWarehouse, WarehouseWarehouse, WarehouseDoors
novaposhta[WarehouseNumber]                                           отделение Новой Почты в одном из форматов: номер, описание, Ref
novaposhta[Street]                                                    название и тип улицы, или Ref улицы в системе Новой почты
novaposhta[BuildingNumber]                                            Номер дома
novaposhta[Flat]                                                      Номер квартиры
novaposhta[backwardDeliveryCargoType]                                 возможные значения: None - без наложенного платежа, Money - с наложенным платежом
ukrposhta                                                             Укрпошта


ДОБАВЛЕНИЕ/ОБНОВЛЕНИЕ ТОВАРОВ

POST https://market-plus.salesdrive.me/product-handler/
Content-Type: application/json

{
    "form": "52yJ9CxgAQ-8aXb54C--_ZInYCXXvBTXjR4cxj70BKVwuecZPAl4cNG19MZeQ9d",
    "action": "update",
    "product": [
        {
            "id": "",
            "name": "",
            "costPerItem": "",
            "sku": "",
            "manufacturer": "",
            "category": {
                "id": "",
                "name": ""
            },
            "description": "",
            "url": "",
            "images": [
                {
                    "fullsize": "",
                    "thumbnail": ""
                },
                {
                    "fullsize": "",
                    "thumbnail": ""
                }
            ],
            "params": [
                {
                    "name": "",
                    "type": "",
                    "value": ""
                },
                {
                    "name": "",
                    "type": "",
                    "value": ""
                }
            ]
        }
    ]
}

Параметры запроса:

product[i][id]                                                        id товара
product[i][name]                                                      название товара
product[i][sku]                                                       SKU
product[i][manufacturer]                                              производитель
product[i][category][id]                                              id категории товара
product[i][category][name]                                            название категории товара
product[i][description]                                               описание товара
product[i][url]                                                       страница на сайте
product[i][images]                                                    массив url фотографий товара
product[i][images][j][fullsize]                                       url большого изображения
product[i][images][j][thumbnail]                                      url уменьшенного изображения
product[i][params]                                                    массив характеристик товара
product[i][params][j][name]                                           название характеристики
product[i][params][j][type]                                           тип характеристики: select, multiselect, number или text
product[i][params][j][value]                                          значение характеристики


УДАЛЕНИЕ ТОВАРОВ

POST https://market-plus.salesdrive.me/product-handler/
Content-Type: application/json

{
    "form": "52yJ9CxgAQ-8aXb54C--_ZInYCXXvBTXjR4cxj70BKVwuecZPAl4cNG19MZeQ9d",
    "action": "delete",
    "product": [
        {
            "id": ""
        }
    ]
}

Параметры запроса:

product[i][id]                                                        id товара


ДОБАВЛЕНИЕ/ОБНОВЛЕНИЕ КАТЕГОРИЙ

POST https://market-plus.salesdrive.me/category-handler/
Content-Type: application/json

{
    "form": "52yJ9CxgAQ-8aXb54C--_ZInYCXXvBTXjR4cxj70BKVwuecZPAl4cNG19MZeQ9d",
    "action": "update",
        "category": [
        {
            "id": "",
            "name": "",
            "parentId": ""
        }
    ]
}

Параметры запроса:

category[i][id]                                                       id категории
category[i][name]                                                     id название категории
category[i][parentId]                                                 id родительская категория


УДАЛЕНИЕ КАТЕГОРИЙ

POST https://market-plus.salesdrive.me/category-handler/
Content-Type: application/json

{
    "form": "52yJ9CxgAQ-8aXb54C--_ZInYCXXvBTXjR4cxj70BKVwuecZPAl4cNG19MZeQ9d",
    "action": "delete",
        "category": [
        {
            "id": ""
        }
    ]
}

Параметры запроса:

category[i][id]                                                       id категории
