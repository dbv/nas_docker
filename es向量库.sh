docker run -dit \
--restart=always \
--name es \
-p 9200:9200 \
-p 9300:9300 \
-v $PWD/data:/usr/share/elasticsearch/data \
-v $PWD/logs:/usr/share/elasticsearch/logs \
-e ES_JAVA_OPS="-Xms512m -Xmx1g" \
-e discovery.type="single-node" \
-e ELASTIC_PASSWORD="admin-es" \
-m 1GB \
docker.elastic.co/elasticsearch/elasticsearch:8.12.2



# 下面的内容需要更新后拷贝到容器中 docker cp elasticsearch.yml es:/usr/share/elasticsearch/config/


cluster.name: "docker-cluster"
network.host: 0.0.0.0

#----------------------- BEGIN SECURITY AUTO CONFIGURATION -----------------------
#
# The following settings, TLS certificates, and keys have been automatically
# generated to configure Elasticsearch security features on 10-03-2025 08:29:50
#
# --------------------------------------------------------------------------------

# Enable security features
xpack.security.enabled: false     ################ 去掉安全校验

xpack.security.enrollment.enabled: true

# Enable encryption for HTTP API client connections, such as Kibana, Logstash, and Agents
xpack.security.http.ssl:
  enabled: false   ################ 去掉ssl校验
  keystore.path: certs/http.p12

# Enable encryption and mutual authentication between cluster nodes
xpack.security.transport.ssl:
  enabled: true
  verification_mode: certificate
  keystore.path: certs/transport.p12
  truststore.path: certs/transport.p12
#----------------------- END SECURITY AUTO CONFIGURATION -------------------------
