build-api:
	docker-compose build --build-arg CACHE_DATE=$(date "+%Y%m%d-%H%M%S") go-19 && \
	docker-compose up -d --force-recreate

build-client:
	cd client-apps/fantome-pris-client/ && \
	git pull origin master && \
	docker exec ghostcatch_node-89_1 yarn install && docker exec ghostcatch_node-89_1 npm run build && \
	cd ../../ && \
	docker-compose up -d --force-recreate

set-client:
	cd client-apps && git clone https://github.com/smith-30/fantome-pris-client.git
