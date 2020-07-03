# ImageSorter
This mix of python & shell script will, given a directory containing pictures of people you want to find, move in a folder the pictures matching the people you want to find.

## Description
This script makes use of non-cuda version of python module so it will use your cpu instead of GPU. I don't know if I will make a branch that uses it, but you can still make it by having a look in the face_recognition python module.

## Dependencies
This script requires face_recognition module dependencies. It may work just by ``` pip install face_recognition```, on arch i had to use an older version of dlib the 19.15. So use it if you have problems. So take a look at : https://github.com/ageitgey/face_recognition

## Running
Make the script ```findImages.sh``` executable and then run as in the example 
``` ./findImages.sh <Directory path of known people> <Directory path of all the images> <Directory path where to move all the images found>```

## Contributing
If you want to contribute, or have any idea feel free to fork the repo, or open an issue.
