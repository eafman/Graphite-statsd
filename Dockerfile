FROM hopsoft/graphite-statsd:latest
LABEL org.freenas.version=1                             \
      org.freenas.web-ui-protocol="http"                \
      org.freenas.expose-ports-at-host="true"           \
      org.freenas.web-ui-port=5080                      \
      org.freenas.port-mappings="80:5080/tcp,2003:2003/tcp,2004:2004/tcp,2023:2023/tcp,2024:2024/tcp,8125:8125/tcp,8126:8126/tcp"                                       \
      org.freenas.volumes="[                            \
          {                                             \
              \"/mnt/tank/Graphite/conf\": \"/opt/graphite/conf\",         \
              \"descr\": \"graphite config\"            \
          },                                            \
          {                                             \
              \"/mnt/tank/Graphite/storage\": \"/opt/graphite/storage\",      \
              \"descr\": \"graphite stats storage\"     \
          },                                            \
          {                                             \
              \"/mnt/tank/Graphite/nginx\": \"/etc/nginx\",                 \
              \"descr\": \"nginx config\"               \
          },                                            \
          {                                             \
              \"/mnt/tank/Graphite/statsd\": \"/opt/statsd\",                \
              \"descr\": \"statsd config\"              \
          },                                            \
          {                                             \
              \"/mnt/tank/Graphite/logrotate\": \"/etc/logrotate.d\",           \
              \"descr\": \"logrotate config\"           \
          },                                            \
          {                                             \
              \"/mnt/tank/Graphite/log\": \"/var/log\",                   \
              \"descr\": \"log files\"                  \
          }                                             \
      ]"
      
