alias pg-start='(pierone login && \
docker run --name pg -d -p 5432:5432 pierone.stups.zalan.do/acid/postgres:9.4.5-p1 && \
docker exec -i pg sed -i "s/ticker_period = 60/ticker_period = 1/g" /data/postgres/pgq_dev/ticker.ini && \
docker exec -i pg pgqd /data/postgres/pgq_dev/ticker.ini -d)'
alias pg-stop='(docker stop pg && docker rm pg)'