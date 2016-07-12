obj=cli.o main.o

app:$(obj)
	gcc -o app $(obj)
cli.o:cli_tcp.c tcp_socket.h
	gcc -c cli_tcp.c -o cli.o 

main.o:main.c tcp_socket.h
	gcc -c main.c

clean:
	rm $(obj)
