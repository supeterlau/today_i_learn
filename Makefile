.PHONY: all clean

dev:
	hugo server --bind 0.0.0.0 --baseURL 192.168.101.9 -p 3000 -v

all:
	git push
