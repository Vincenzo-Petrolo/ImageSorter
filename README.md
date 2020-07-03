# ImageSorter
This mix of python & shell script will, given a directory containing pictures of people you want to find, move in a folder the pictures matching the people you want to find.

## Description
This script makes use of non-cuda version of python module so it will use your cpu instead of GPU. I don't know if I will make a branch that uses it, but you can still make it by having a look in the face_recognition python module.

## Dependencies
This script requires face_recognition module dependencies. It may work just by ``` pip install face_recognition```, on arch i had to use an older version of dlib the 19.15. So use it if you have problems. So take a look at : https://github.com/ageitgey/face_recognition

## Running
Make the script ```findImages.sh``` executable and then run as in the example 
``` ./findImages.sh <Directory path of known people> <Directory path of all the images> <Directory path where to move all the images found>```

Example: ``` ./findImages.sh ~/home/user/PippoFace  ~/home/user/Pictures ~/home/user/Pictures/PictureOfPippo

## Contributing
If you want to contribute, or have any idea feel free to fork the repo, or open an issue.

## A word of caution
The script might take longer times, I tested it with few benchmarks and took around 32 mins in order to search through ~5000 pictures, intel i5. Obviously you can speed it up by using 4 cores adding at ``` line 13``` of ```findImages.sh``` the following ``` --cpus <numebr of cores> ```.
Here follows an example of doing it: 
Before the line 13 is :
```python3 imgFind.py $1 $2 >> imgFind_result```
I want to use my 4 cores(warning it may blow up your machine)
```python3 imgFind.py --cpus 4 $1 $2 >> imgFind_result```

Do it at your own risk. I won't take any responsibilities for any problem caused by usage of all cores.

## GPU
If your maching has nvidia gpu then you might be interested in using the cuda modle of face_recognition, in order to speed up the whole process.
