shop:
	docker compose -f docker-compose.dev.yml --profile shared --profile shop up --build | grep --line-buffered --color=always 'shop-service'

shop-image-account:
	docker compose -f docker-compose.dev.yml --profile shared --profile shop --profile image --profile account up --build

