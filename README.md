## Model training practice

### Description
There are multiple file in this project
if the file name start from ResNet, it means that I use ResNet as backbone. 
MyNet is built by myself, I use the simplest way to build a model, moreover, I use block and sequential to build the same model as the simple way

Dataset
1.Cifar 10 : this dataset comes from torchvision dataset
2.flower dataset: this dataset has 102 flower categories. you can download the dataset form here : https://www.robots.ox.ac.uk/~vgg/data/flowers/102/
3.intel dataset : this dataset classify 6 objects. You can download and get more detail about this dataset from this link : https://www.kaggle.com/datasets/puneet6060/intel-image-classification
4.real dataset : there are seven categories, you can download here https://drive.google.com/file/d/1mJQR3Z1Ix9ZvoXCLMtWfPO2UZTUvQaeb/view?usp=sharing


start docker 
```console
docker run -it --gpus all --shm-size="5g" -p 8888:8888 -v $(pwd):/demo bisenetv2:4.0
```



