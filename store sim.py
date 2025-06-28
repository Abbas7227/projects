import random
import time

# stock
water = 10
soda = 10
meat = 10
candy = 10

# shop picker
stock_storage = ['water', 'soda', 'meat', 'candy']
shopper_storage = ['bob', 'jim', 'chris']

while water > 0 or soda > 0 or meat > 0 or candy > 0:
    shopper = random.choice(shopper_storage)
    item = random.choice(stock_storage)
    quantity = random.randint(1, 3)
    bought_items = " ".join([item] * quantity)

    # Check stock and process purchase
    out_of_stock = False

    if item == 'water':
        if water < quantity:
            print("item out of stock")
            out_of_stock = True
        else:
            water -= quantity

    if item == 'soda':
        if soda < quantity:
            print("item out of stock")
            out_of_stock = True
        else:
            soda -= quantity

    if item == 'meat':
        if meat < quantity:
            print("item out of stock")
            out_of_stock = True
        else:
            meat -= quantity

    if item == 'candy':
        if candy < quantity:
            print("item out of stock")
            out_of_stock = True
        else:
            candy -= quantity

    if not out_of_stock:
        print(shopper + " bought the following from the shop: " + bought_items)
        time.sleep(1)

print("All items are out")
