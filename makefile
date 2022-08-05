#makefile
#   $^ ---> 代表所有的依赖 
#	$@  ---> 代表目标
#	$<  ---> 代表第一个依赖


CC = gcc
AAA = -Wall -O0 -g

.PHONY:clean

xx : main.o xx.o yy.o 
	$(CC) $^ -o $@ $(AAA)
	
xx.o : xx.c xx.h
	$(CC) -c $< -o $@ $(AAA)
	
yy.o : yy.c xx.h
	$(CC) -c $< -o $@ $(AAA)
	
main.o : main.c xx.h
	$(CC) -c $< -o $@ $(AAA)
	
clean:
	rm *.o xx
	
	
	
