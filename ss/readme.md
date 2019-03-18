# UDP tunnel for TCP

## Description

Transform tcp traffic to raw udp(icmp) traffic using [kcptun](https://github.com/xtaci/kcptun) and [udp2raw-tunnel](https://github.com/wangyu-/udp2raw-tunnel).

TCP data flow travels in the following route:

> CLIENT: application ==> TCP ==(kcptun)==> UDP ==(udp2raw)==> ICMP ====> (public)  
> SERVER: (public) ====> ICMP ==(udp2raw)==> UDP ==(kcptun)==> TCP ====> application

## Usage

Replace <SERVER_IP> and <TUNNEL_SECRET> with yours by hand and run `docker-compose up`.

## TODO

- [ ] Add server configuration.
- [ ] Set <SERVER_IP> and <TUNNEL_SECRET> in docker-compose.yml file.

## LICENSE

MIT
