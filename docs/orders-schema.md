# Orders Table DynamoDB Schema

```
{
  "id": "S",
  "createdAt": "S",
  "updatedAt": "S",
  "notes": "S",
  "trackingId": "N",
  "totalPrice": "N",
  "status": "S",
  "paymentId": "N",
  "customerId": "S",
  "products": {
    "L": [
      {
        "M": {
          "id": "N",
          "createdAt": "S",
          "updatedAt": "S",
          "name": "S",
          "price": "N",
          "description": "S",
          "pictures": {
            "L": []
          },
          "categoryType": "S",
          "quantity": "N"
        }
      }
    ]
  }
}
```