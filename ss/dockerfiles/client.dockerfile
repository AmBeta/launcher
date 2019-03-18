FROM alpine

# ===== Create working directory =====
WORKDIR /home/ss

# ===== Copy files =====
COPY binaries/udp2raw .
COPY binaries/kcptun_client .
COPY configs/client ./configs

# ===== Start tunnel =====
CMD ./kcptun_client -c ./configs/kcptun_ss.json &  \
  ./udp2raw --conf-file ./configs/udp2raw_ss.conf
