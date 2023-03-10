

### Build docker image with dockerfile

```
docker build -t kittibag .
```

### Run docker container with command
```
docker run --privileged -it -v $KITTI_ABSOLUTE_DIRECTORY:/data --name kitti_bag kittibag:latest -t $DATE -r $DRIVE raw_synced
```

For example,
```
docker run --privileged -it -v /data/LIDAR_dataset/kitti/sequence00:/data --name kitti_bag kittibag:latest -t 2011_10_03 -r 0027 raw_synced
```

In `$KITTI_ABSOLUTE_DIRECTORY`, 