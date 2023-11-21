FROM ubuntu:20.04

#Pre-installation packages
RUN apt-get update
RUN apt install -y build-essential
RUN apt install libssl-dev
RUN apt-get -y install git

# # Install git-crypt
RUN cd /tmp                                                                 && \
    git clone https://github.com/AGWA/git-crypt.git                         && \
    cd git-crypt                                                            && \
    make                                                                    && \
    make install PREFIX=/usr/local

COPY ./git-crypt-key ./git-crypt-key
COPY ./gitcrypt_unlock.sh ./gitcrypt_unlock.sh
RUN chmod +x ./gitcrypt_unlock.sh
ENTRYPOINT ["./gitcrypt_unlock.sh"]                                                             && \