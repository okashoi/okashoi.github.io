.PHONY: up down build

.env:
	cp .env.example .env

up: .env
	docker-compose up -d --build

down:
	docker-compose down

build: .env
	docker-compose run --rm node npm run build
