./kafka_test_setup.sh
bundle install
bundle exec rake vendor
bundle exec rspec && bundle exec rspec --tag integration
./kafka_test_teardown.sh
