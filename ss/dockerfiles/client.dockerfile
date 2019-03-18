FROM alpine

ARG SERVER_IP
ARG TUNNEL_SECRET

# Create working directory
WORKDIR /home/ss

# Copy files
COPY binaries/udp2raw .
COPY binaries/kcptun_client .
COPY configs/client ./configs

# Replace arguments
RUN find ./configs -type f -exec sed -i -e "s/<SERVER_IP>/$SERVER_IP/g" {} \; && \
  find ./configs -type f -exec sed -i -e "s/<TUNNEL_SECRET>/$TUNNEL_SECRET/g" {} \;

# Start tunnel
CMD ./kcptun_client -c ./configs/kcptun_ss.json & \
  ./udp2raw --conf-file ./configs/udp2raw_ss.conf
