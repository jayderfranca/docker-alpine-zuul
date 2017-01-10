VERSION = 1.1.0
IMAGE = jayderfranca/alpine-zuul:$(VERSION)

all:

image:
	docker build -t $(IMAGE) --no-cache .

publish:
docker push $(IMAGE)
