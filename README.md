## Model training practice

### Description
There are multiple file in this project

if the file name start from ResNet, it means that I use ResNet as backbone. 

MyNet is built by myself, I use the simplest way to build a model, moreover, I use block and sequential to build the same model as the simple way

### Dataset
1.Cifar 10 : this dataset comes from torchvision dataset

2.flower dataset: this dataset has 102 flower categories. you can download the dataset form here : https://www.robots.ox.ac.uk/~vgg/data/flowers/102/

3.intel dataset : this dataset classify 6 objects. You can download and get more detail about this dataset from this link : https://www.kaggle.com/datasets/puneet6060/intel-image-classification

4.real dataset : there are seven categories, you can download here https://drive.google.com/file/d/1mJQR3Z1Ix9ZvoXCLMtWfPO2UZTUvQaeb/view?usp=sharing


start docker 
```console
docker run -it --gpus all --shm-size="5g" -p 8888:8888 -v $(pwd):/demo bisenetv2:4.0
```

You can build docker from Dockerfile

1. clone the project from github
```console
git clone git@github.com:andrew04201122/build_model.git
```

2. go to the directory
```console
cd pytorch_training
```

ps : you have to download all dataset above before building the images

3. build docker image
```console
docker build -t model_training .
```

4. run docker image
```console
docker run -it -p 8888:8888 --gpus all --shm-size="5G" model_training
```

5. in workspace, you have to open jupyter
```console
jupyter notebook --ip=0.0.0.0 --port=8888 --allow-root
```

6. sometimes the link can not open the jupyter, you can change hostname to 127.0.0.1

http://hostname:8888/?token=0e53072bf1636ab5d54ac7508a165df664a9a1e6cfc5335d  ==> http://127.0.0.1:8888/?token=0e53072bf1636ab5d54ac7508a165df664a9a1e6cfc5335d

