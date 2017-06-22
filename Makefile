CC=gcc
AFLAGS=-Wall -g
LDFLAGS= -lmysqlclient
OBJS= add.cgi del.cgi mod.cgi sel.cgi addCourse.cgi addScore.cgi seldate.cgi shan.cgi huifu.cgi

all:$(OBJS)

$(OBJS):%.cgi:%.c
	$(CC) $(AFLAGS) $< cgic.c -o $@ $(LDFLAGS)

.PHONY:clean
clean:
	rm ./*.cgi

install:
	cp *.cgi /usr/lib/cgi-bin/sx
	sudo cp index.html head.html /var/www/html/
	sudo cp head.html footer.html /usr/lib/cgi-bin/sx/
