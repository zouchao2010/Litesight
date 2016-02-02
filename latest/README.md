# litesight

## build
```shell
docker build -t zouchao2010/litesight .

```

## pull
```shell
docker pull zouchao2010/litesight

```

## run(创建并运行一个容器，退出时删除容器)
```shell
docker run  --name litesight \
            -h litesight \
            -p 4000:4000 \
            -v /data/litesight:/var/lib/litesight \
            -e BITCOIND_HOST=x.x.x.x \
            -e BITCOIND_P2P_HOST=x.x.x.x \
            -e INSIGHT_NETWORK=livenet \
            -it --rm zouchao2010/litesight
            
```

## run(创建并运行一个容器，以守护进程方式)
```shell
docker run  --name litesight \
            --restart=always \
            -m 2048m \
            -h litesight \
            -p 4000:4000 \
            -v /data/litesight:/var/lib/litesight \
            -e BITCOIND_HOST=x.x.x.x \
            -e BITCOIND_P2P_HOST=x.x.x.x \
            -e INSIGHT_NETWORK=testnet \
            -it zouchao2010/litesight
            
```

## start|stop|restart(已存在的容器)
```shell
docker start|stop|restart litesight

```

## exec(使用已运行的容器执行命令)
```shell
docker exec -it litesight /bin/bash

```
