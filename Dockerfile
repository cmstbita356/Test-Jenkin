# Sử dụng một image chính thức của PHP
FROM php:8.0-apache

# Thiết lập thư mục làm việc
WORKDIR /var/www/html

# Sao chép mã nguồn vào thư mục làm việc
COPY . .

# Mở cổng 80 (thông thường, Apache sẽ tự động làm điều này)
EXPOSE 80

# Apache sẽ tự động khởi động và phục vụ ứng dụng của bạn
