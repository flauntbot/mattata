redis-cli save
redispassword=$(luajit -e "print(require('configuration').redis.password)")
redisdb=$(luajit -e "print(require('configuration').redis.db)")
redishost=$(luajit -e "print(require('configuration').redis.host)")
redisport=$(luajit -e "print(require('configuration').redis.port)")
if [ ! -d "backups/" ]; then
    mkdir backups
fi

if [ ! "${redispassword}" = "nil" ]; then
    redis-dump -u ":${redispassword}@${redishost}:${redisport}" -d "${redisdb}" > "backups/$(date).json"
else
    redis-dump > "backups/$(date).json"
fi
echo "bot's database has been saved!"

