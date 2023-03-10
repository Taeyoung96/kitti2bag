- Author : Taeyoung Kim (https://github.com/Taeyoung96)

### Clone this repository  
```
git clone https://github.com/Taeyoung96/kitti2bag.git
```

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

In `$KITTI_ABSOLUTE_DIRECTORY`, it need folder name same with `$DATE`.

<p align="center"><img src="https://user-images.githubusercontent.com/41863759/224322838-b49bc1fb-2073-418a-9d61-05226b680b74.png" width = "300" ></p>

<p align="center"><img src="https://user-images.githubusercontent.com/41863759/224323097-01e7bc95-cec0-421a-846f-07641bcc9d12.png" width = "400" ></p>
