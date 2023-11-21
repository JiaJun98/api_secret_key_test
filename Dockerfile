FROM buildpack-deps:jessie

# Install git-crypt
RUN cd /tmp                                                                 && \
    git clone https://github.com/AGWA/git-crypt.git                         && \
    cd git-crypt                                                            && \
    make                                                                    && \
    make install PREFIX=/usr/local

COPY ./gitcrypt_unlock.sh ./gitcrypt_unlock.sh
RUN chmod +x ./gitcrypt_unlock.sh
ENTRYPOINT ["./gitcrypt_unlock.sh"]                                                              && \