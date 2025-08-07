# Stage 1 - Build
FROM python:3.11-slim AS build
WORKDIR /app
COPY app.py .
RUN pip install flask

# Stage 2 - Runtime
FROM python:3.11-slim
WORKDIR /app
COPY --from=build /app /app
RUN useradd -m appuser
USER appuser
EXPOSE 8002
CMD ["python", "app.py"]
