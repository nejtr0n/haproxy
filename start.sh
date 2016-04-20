#!/bin/sh
consul-template -consul=$CONSUL_URL -template="/templates/$HAPROXY_TEMPLATE:/usr/local/etc/haproxy/haproxy.cfg:killall -HUP haproxy"
haproxy -f /usr/local/etc/haproxy/haproxy.cfg
