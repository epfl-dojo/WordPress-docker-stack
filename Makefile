#!make

_mysql_group_id_in_docker = 999

up:
	docker-compose up -d

perm:
	sudo chmod -R g+w wp
	sudo chown -R $(USER) wp
	$(MAKE) _general_log_perm

_general_log_perm:
	sudo chown $(USER):$(_mysql_group_id_in_docker) logs
	sudo chmod g+w logs
	if test -f logs/general.log; then \
		sudo chown $(USER):$(_mysql_group_id_in_docker) logs/general.log ; \
		sudo chmod g+w logs/general.log ; \
	fi

down:
	docker-compose down

logs:
	docker-compose logs -f

logs-wp:
	docker-compose logs -f wordpress

logs-sql:
	tail -f logs/general.log

logs-db:
	docker-compose logs -f db

logs-errors:
	$(MAKE) logs-wp | grep -E 'error|notice'
