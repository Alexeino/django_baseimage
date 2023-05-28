docker build -t django -f Dockerfile.mydjango .

docker run -it --rm -v ${PWD}:/code -p 8000:8000 django django-admin startproject src .

docker run -it --rm -v ${PWD}:/code -p 8000:8000 django python3 manage.py migrate

docker run -it --rm -v ${PWD}:/code -p 8000:8000 django python3 manage.py runserver 0:8000 # 0:8000 => 0.0.0.0:8000

# Make changes to the code and run line 7 to reflect change to the container and test it.