install:
	cp look_at_the_tv /usr/bin/
	cp look_at_the_tv.service /etc/systemd/system
	systemctl enable look_at_the_tv
	systemctl stop look_at_the_tv
	systemctl start look_at_the_tv

status:
	systemctl status look_at_the_tv

run:
	systemctl stop look_at_the_tv
	./look_at_the_tv -v
