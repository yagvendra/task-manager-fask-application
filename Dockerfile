FROM python:3.10-slim
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir Flask Flask-SQLAlchemy Flask-JWT-Extended Flask-Migrate Flask-Script passlib
EXPOSE 8012
ENV NAME World
CMD ["bash", "entrypoint.sh"]

