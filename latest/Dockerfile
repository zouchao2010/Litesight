FROM node:0.10

ENV VERSION 0.2.1

WORKDIR /opt

RUN apt-get update \
    && apt-get install -y wget \
    && apt-get autoremove -y \
    && apt-get clean -y \
    && apt-get autoclean -y \
    && rm -rf /var/lib/apt/lists/*

#RUN touch /root/.npmrc \
#    && echo registry=https://registry.npm.taobao.org >> /root/.npmrc

#install litesight
RUN git clone https://github.com/zouchao2010/Litesight.git \
    && mv Litesight litesight \
    && cd litesight \
    && npm install

WORKDIR /opt/litesight

VOLUME /var/lib/litesight


# production|test|development
ENV NODE_ENV                        development
ENV BITCOIND_HOST                   127.0.0.1
ENV BITCOIND_P2P_HOST               127.0.0.1
ENV BITCOIND_USER                   user
ENV BITCOIND_PASS                   pass
ENV BITCOIND_DATADIR                /var/lib/litesight/bitcoind

# livenet|testnet
ENV INSIGHT_PUBLIC_PATH             public
ENV INSIGHT_NETWORK                 testnet
ENV INSIGHT_PORT                    4000
ENV INSIGHT_DB                      /var/lib/litesight
ENV INSIGHT_SAFE_CONFIRMATIONS      6
ENV INSIGHT_IGNORE_CACHE            0
ENV INSIGHT_FORCE_RPC_SYNC          1
ENV ENABLE_CURRENCYRATES            true
ENV ENABLE_RATELIMITER              true
ENV LOGGER_LEVEL                    info
ENV ENABLE_HTTPS                    false
ENV ENABLE_EMAILSTORE               false
ENV INSIGHT_EMAIL_CONFIRM_HOST      https://litesight.bitpay.com


ADD . /opt/litesight
RUN chmod 755 run.sh

EXPOSE 4000
CMD ["./run.sh"]
