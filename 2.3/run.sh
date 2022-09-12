export EXTERNAL_URL=https://lab.karpov.courses/hardml-api/module-5/get_secret_number
export EXTERNAL_MAX_RETRIES=20

export SD_REDIS_HOST=94.130.76.231
export SD_REDIS_PORT=6379
export SD_REDIS_PASSWORD=lolkek12345
export SD_REPLICAS_KEY=web_app

export APP_MODE=prod
export APP_HOST=159.69.38.130

export APP_PORT=12100
docker run -d --rm -p ${APP_PORT}:8080 \
    --env EXTERNAL_URL=${EXTERNAL_URL} \
    --env EXTERNAL_MAX_RETRIES=${EXTERNAL_MAX_RETRIES} \
    --env SD_REDIS_HOST=${SD_REDIS_HOST} \
    --env SD_REDIS_PORT=${SD_REDIS_PORT} \
    --env SD_REDIS_PASSWORD=${SD_REDIS_PASSWORD} \
    --env SD_REPLICAS_KEY=${SD_REPLICAS_KEY} \
    --env APP_MODE=${APP_MODE} \
    --env APP_HOST=${APP_HOST} \
    --env APP_PORT=${APP_PORT} \
    --name web_app_${APP_PORT} igden/ds_v001repo:v2

export APP_PORT=12101
docker run -d --rm -p ${APP_PORT}:8080 \
    --env EXTERNAL_URL=${EXTERNAL_URL} \
    --env EXTERNAL_MAX_RETRIES=${EXTERNAL_MAX_RETRIES} \
    --env SD_REDIS_HOST=${SD_REDIS_HOST} \
    --env SD_REDIS_PORT=${SD_REDIS_PORT} \
    --env SD_REDIS_PASSWORD=${SD_REDIS_PASSWORD} \
    --env SD_REPLICAS_KEY=${SD_REPLICAS_KEY} \
    --env APP_MODE=${APP_MODE} \
    --env APP_HOST=${APP_HOST} \
    --env APP_PORT=${APP_PORT} \
    --name web_app_${APP_PORT} igden/ds_v001repo:v2

export APP_PORT=12102
docker run -d --rm -p ${APP_PORT}:8080 \
    --env EXTERNAL_URL=${EXTERNAL_URL} \
    --env EXTERNAL_MAX_RETRIES=${EXTERNAL_MAX_RETRIES} \
    --env SD_REDIS_HOST=${SD_REDIS_HOST} \
    --env SD_REDIS_PORT=${SD_REDIS_PORT} \
    --env SD_REDIS_PASSWORD=${SD_REDIS_PASSWORD} \
    --env SD_REPLICAS_KEY=${SD_REPLICAS_KEY} \
    --env APP_MODE=${APP_MODE} \
    --env APP_HOST=${APP_HOST} \
    --env APP_PORT=${APP_PORT} \
    --name web_app_${APP_PORT} igden/ds_v001repo:v2