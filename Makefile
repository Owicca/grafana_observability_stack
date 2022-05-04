up: setup
	sudo docker-compose up -d --force-recreate --remove-orphans

run:
	sudo docker-compose up -d --force-recreate --remove-orphans gf_pt

start:
	sudo docker-compose restart

stop:
	sudo docker-compose stop

clean:
	sudo rm -rf gf/log/*
	sudo rm -rf gf/data/*
	sudo rm -rf loki/data/*

setup:
	[ -d ./loki/data ] || mkdir ./gf/data
	sudo chmod 777 ./gf/data
	sudo chown -R 472:472 ./gf/data
	[ -d ./loki/data ] || mkdir ./loki/data
	sudo chmod 777 ./loki/data

status:
	sudo docker-compose ps
