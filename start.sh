#!/bin/sh
consul-template -consul=$CONSUL_URL -wait "10s" -retry 10s -template="/templates/$HAPROXY_TEMPLATE:/usr/local/etc/haproxy/haproxy.cfg:kill -HUP $(pidof haproxy) || true" &
sleep 15
haproxy -f /usr/local/etc/haproxy/haproxy.cfg
