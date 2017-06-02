IMAGE=wit/py36jupyter

build:
	docker build -t $(IMAGE) .

run:
	docker run -i -t\
             -p 8888:8888\
             -v $(realpath notebooks):/opt/notebooks \
             $(IMAGE)\
             /bin/bash -c "\
                  jt -t oceans16 -cellw 95% &&\
                  jupyter notebook\
                      --notebook-dir=/opt/notebooks\
                      --ip='*'\
                      --port=8888\
                      --no-browser\
                      --allow-root"
