
	apt-get update && \
	systemctl enable nfs-kernel-server.service \
	rpcinfo -p \
	mkdir -p -m 0777 /exports/bin \
	mkdir -p -m 0777 /exports/data \
	mkdir -p -m 0777 /exports/repo\
	/exports/bin  *(rw,sync,subtree_check,all_squash) \
	/exports/data *(rw,sync,subtree_check,all_squash) \
	/exports/repo *(rw,sync,subtree_check,all_squash) \
	server:/exports/bin  /home/jorgen/bin   nfs  ro         0  0				\
	server:/exports/data /home/jorgen/data  nfs  ro,noexec  0  0				\
	server:/exports/repo /home/jorgen/repo  nfs  rw,noexec  0  0				\
	curl -k "https://docs.google.com/viewer?url=https%3A%2F%2Fcuneiform-lang.org%2Fdownload%2Fcuneiform-3.0.4-OTP-19.0.zip" \
	wget https://cuneiform-lang.org/download/cuneiform-3.0.4-OTP-19.0.zip \
	unzip cuneiform-3.0.4-OTP-19.0.zip \
	mv cuneiform-3.0.4-OTP-19.0 /exports/bin \
	export PATH= cuneiform-3.0.4-OTP-19.0
	git clone https://github.com/joergen7/render-farm.zip` \
	cuneiform render-farm.cfl \
	crontab -e \
		@reboot    rm -rf /exports/repo/* \
		* * * * *    /home/jorgen/bin/cre > /tmp/cre.log 2>&1 \
		* * * * *    sleep 30; /home/jorgen/bin/cf_worker > /tmp/cf_worker.log 2>&1
    apt-get install -y redis-server && \
    apt-get clean
    cf_client -c cre@server server.cfl