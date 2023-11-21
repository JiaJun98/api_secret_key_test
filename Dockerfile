FROM buildpack-deps:jessie

# Install git-crypt
RUN cd /tmp                                                                 && \
    git clone https://github.com/AGWA/git-crypt.git                         && \
    cd git-crypt                                                            && \
    make                                                                    && \
    make install PREFIX=/usr/local

COPY ./entrypoint.sh ./entrypoint.sh
RUN chmod +x ./entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]                                                              && \