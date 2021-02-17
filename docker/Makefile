TAG = hurwitzlab/ppr-meta:0.1.0

img:
	# sudo docker build --no-cache --tag=$(TAG) .
	sudo docker build --tag=$(TAG) .

shell:
	sudo docker run -it $(TAG) bash

run:
	sudo docker run --rm $(TAG)

push: 
	sudo docker push $(TAG)
