DATE=$(shell date "+%Y%m%d-%H%M%S")

start-app:
	docker-compose up -d

stop-app:
	docker-compose down

restart-app:
	docker-compose up -d --force-recreate

build-api:
	docker-compose build --build-arg CACHE_DATE=$(DATE) go-19 && \
	make restart-app

build-client:
	cd client-apps/fantome-pris-client/ && \
	git pull origin master && \
	docker exec ghostcatch_node-89_1 yarn install && docker exec ghostcatch_node-89_1 npm run build && \
	cd ../../ && \
	make restart-app

set-client:
	cd client-apps && git clone https://github.com/smith-30/fantome-pris-client.git

api-log:
	docker logs -f ghostcatch_go-19_1

test:
	echo $(DATE)
