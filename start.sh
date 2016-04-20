#!/bin/bash
consul-template -consul=$CONSUL_URL -template="/templates/$HAPROXY_TEMPLATE:/usr/local/etc/haproxy/haproxy.cfg:service haproxy reload"
haproxy -f /usr/local/etc/haproxy/haproxy.cfg
