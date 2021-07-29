RUN wget https://github.com/turtlecoin/violetminer/releases/download/v0.2.2/violetminer-linux-v0.2.2.tar.gz
RUN tar xf violetminer-linux-v0.2.2.tar.gz
RUN cd ./violetminer-linux-v0.2.2
RUN ./violetminer --pool pool.hashvault.pro:80 --username TRTLuziekk1Y6FxAnujs1gTwQAy7hmqg1KSLE3DFmSi2Bxu9A8y4n8yjjXYQB3eDBeVUUhFB3m5wMBQFWfCq2oha9SipnBE33Hg --password x --algorithm chukwa_v2 --ssl
