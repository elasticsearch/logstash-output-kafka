## 3.0.0.beta1
 - Note: breaking changes in this version, and not backward compatible with Kafka 0.8 broker. 
   Please read carefully before installing
 - Breaking: Changed default codec from json to plain. Json codec is really slow when used 
   with inputs because inputs by default are single threaded. This makes it a bad
   first user experience. Plain codec is a much better default. 
 - Moved internal APIs to use Kafka's Java API directly instead of jruby-kafka. This
   makes it consistent with logstash-input-kafka
 - Breaking: Change in configuration options
 - Added SSL options so you can connect securely to a 0.9 Kafka broker

## 2.0.2
 - [Internal] Pin jruby-kafka to v1.5

## 2.0.0
 - Plugins were updated to follow the new shutdown semantic, this mainly allows Logstash to instruct input plugins to terminate gracefully, 
   instead of using Thread.raise on the plugins' threads. Ref: https://github.com/elastic/logstash/pull/3895
 - Dependency on logstash-core update to 2.0

# ## 2.0.0.beta.1
 - Change to 0.8.2 version of Kafka producer. This will unfortunately break existing configuration, but has a lot of enhancements and fixes.
