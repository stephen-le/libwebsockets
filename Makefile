all: server

server: server.c
	gcc -g -Wall $< -o $@ `pkg-config libwebsockets --libs --cflags`


clean:
	rm -f server
	rm -rf server.dSYM
