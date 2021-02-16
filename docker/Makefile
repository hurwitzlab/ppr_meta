TAG = hurwitzlab/ppr-meta:0.1.0

img:
	sudo docker build --no-cache --tag=$(TAG) .

shell:
	sudo docker run -it $(TAG) bash

test:
	sudo docker run --rm -v /data:/data $(TAG) run_centrifuge.py -q /data/kyclark/dolphin/fasta -u -o /data/kyclark/centrifuge-out -I /data/centrifuge-indexes -H 1

dolphin:
	docker run --rm -v /Users/kyclark/work/data:/data $(TAG) run_centrifuge.py -q /data/dolphin/fasta -o /data/dolphin/centrifuge-out -I /data/centrifuge-indexes -i p_compressed --procs 1

push: 
	sudo docker push $(TAG)
