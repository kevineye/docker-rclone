FROM alpine

RUN apk -U add ca-certificates \
 && rm -rf /var/cache/apk/*

RUN cd /tmp \
  && wget -q http://downloads.rclone.org/rclone-current-linux-386.zip \
  && unzip /tmp/rclone-current-linux-386.zip \ 
  && mv /tmp/rclone-*-linux-386/rclone /usr/bin \
  && rm -r /tmp/rclone*

CMD ["rclone", "--version"]
