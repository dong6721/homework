OBJF = sosil1.o sosil2.o sosil3.o sosil4.o sosil5.o main.o
S=sosil

sosil: $(OBJF)
	gcc -o $@ $^
$(S)1.o: $(S)1.c $(S)1.h
	gcc -c $<
$(S)2.o: $(S)2.c $(S)2.h
	gcc -c $<
$(S)3.o: $(S)3.c $(S)3.h
	gcc -c $<
$(S)4.o: $(S)4.c $(S)4.h
	gcc -c $<
$(S)5.o: $(S)5.c $(S)5.h
	gcc -c $<
main.o: main.c $(S)1.h $(S)2.h $(S)3.h $(S)4.h $(S)5.h
	gcc -c $<
clean:
	rm -f sosil $(OBJF)

