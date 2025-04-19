# Используем базовый образ с Python 3.9
FROM python:3.9

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем файлы в контейнер
COPY app.py .
COPY requirements.txt .

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Указываем порт, который будет использовать контейнер
EXPOSE 5000

# Запускаем приложение
CMD ["python", "app.py"]