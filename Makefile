VERSION = 1.2.2
IMAGE = jayderfranca/alpine-zuul:$(VERSION)

all:

image:
	docker build -t $(IMAGE) --no-cache .

publish:
docker push $(IMAGE)
