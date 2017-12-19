FROM hhvm/hhvm-proxygen:latest
RUN setcap 'cap_net_bind_service=+ep' /usr/bin/hhvm \
  && useradd -ms /bin/bash nonroot
COPY . /home/nonroot/app
COPY policy.xml /home/nonroot/.config/ImageMagick/
ADD . /var/www/public
USER nonroot
EXPOSE 80
