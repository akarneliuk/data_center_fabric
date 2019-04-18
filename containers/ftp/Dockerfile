# FTP Container for Data Centre Fabric
FROM alpine:latest
LABEL maintainer="anton@karneliuk.com"
LABEL GitHub="https://github.com/akarneliuk/data_center_fabric"
ENV REFRESHED_AT 2019-04-10
ENV FTP_USERNAME dcf_helper
ENV FTP_PASS aq1sw2de3fr4

RUN apk update; apk add vsftpd

RUN echo "local_enable=YES" >> /etc/vsftpd/vsftpd.conf \
  && echo "chroot_local_user=YES" >> /etc/vsftpd/vsftpd.conf \
  && echo "allow_writeable_chroot=YES" >> /etc/vsftpd/vsftpd.conf \
  && echo "write_enable=YES" >> /etc/vsftpd/vsftpd.conf \
  && echo "local_umask=022" >> /etc/vsftpd/vsftpd.conf \
  && echo "passwd_chroot_enable=yes" >> /etc/vsftpd/vsftpd.conf \
  && echo 'seccomp_sandbox=NO' >> /etc/vsftpd/vsftpd.conf \
  && echo 'pasv_enable=Yes' >> /etc/vsftpd/vsftpd.conf \
  && echo 'pasv_min_port=50000' >> /etc/vsftpd/vsftpd.conf \
  && echo 'pasv_max_port=50050' >> /etc/vsftpd/vsftpd.conf \
  && sed -i "s/anonymous_enable=YES/anonymous_enable=NO/" /etc/vsftpd/vsftpd.conf

RUN mkdir -p "/var/ftp/files"
RUN adduser -h "/var/ftp/files" -s "/sbin/nologin" -D $FTP_USERNAME
RUN echo "$FTP_USERNAME:$FTP_PASS" | /usr/sbin/chpasswd

RUN chown -R $FTP_USERNAME:nogroup "/var/ftp/files"

EXPOSE 20 21 50000-50050

ENTRYPOINT ["/usr/sbin/vsftpd", "/etc/vsftpd/vsftpd.conf"]
