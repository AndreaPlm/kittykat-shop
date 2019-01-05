# README

## 😻 Best cat pics e-shop online 😻

Heroku version 1.0 Production:

🔥🔥 https://kitkat-shop.herokuapp.com 🔥🔥

The amazing team behind this industry-changing project: Charles Belpois, MC Le Morvan, Andrea Palma, Quentin Potié, Francois DeSap

Coded in a week with Ruby 2.5.1 - Rails 5.2.1

To use locally : $ git clone, $ bundle install, $ rails db:create, $ rails db:migrate, then run localhost:3000 on your browser

To test admin features (like uploading dick pics instead of cat pics 🙀), use user : admin@admin.com, password : azertyu


Features

    User : sign in, log in, log out, edit info, delete account, access past orders. There is also an admin class.

    Cart : add items to cart, change item quantity

    Checkout : payement by Stripe, Order creation

    Mailer : send email when signin up and when you paid an order. Plus sends an email to the administrator for each orders.

    Active Storage : Admin can change all images in the website.

Only registered user have access to the cart, and only your info is accessible to you.
