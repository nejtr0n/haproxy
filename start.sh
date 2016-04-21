#!/bin/sh
tail -f /dev/null
#consul-template -consul=$CONSUL_URL -template="/templates/$HAPROXY_TEMPLATE:/usr/local/etc/haproxy/haproxy.cfg:haproxy -f /usr/local/etc/haproxy/haproxy.cfg -sf $(pidof haproxy) &"
#haproxy -f /usr/local/etc/haproxy/haproxy.cfg
