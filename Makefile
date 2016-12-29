VERSION = 1.0.28
IMAGE = jayderfranca/alpine-zuul:$(VERSION)

all:

image:
	docker build -t $(IMAGE) --no-cache .

publish:
docker push $(IMAGE)
