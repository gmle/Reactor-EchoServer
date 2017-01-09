makefilea.out: echo_serv.o  error_functions.o get_num.o
	gcc -o a.out echo_serv.o error_functions.o get_num.o

echo_serv.o: echo_serv.c tlpi_hdr.h
	gcc -c echo_serv.c
a.out: echo_serv.o  error_functions.o get_num.o
	gcc -o a.out echo_serv.o error_functions.o get_num.o
error_functions.o: error_functions.c ename.c.inc error_functions.h tlpi_hdr.h
	gcc -c error_functions.c
get_num.o: get_num.c get_num.h
	gcc -c get_num.c

clean:
	rm  *.o