# Використання базового образу Ubuntu
FROM ubuntu:latest

# Оновлення пакетів та встановлення Apache2
RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Копіювання конфігураційного файлу в образ
COPY apache2.conf /etc/apache2/apache2.conf

# Вказання команд, які будуть виконані при старті контейнера
CMD ["apache2ctl", "-D", "FOREGROUND"]