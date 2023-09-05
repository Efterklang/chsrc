CFLAGS =

TARGET = chsrc
#=======================

all:
	@echo Compile
	@gcc chsrc.c $(CFLAGS) -o $(TARGET)

test: $(TARGET)
	./$(TARGET) list mirror
	./$(TARGET) list target
	./$(TARGET) get  ruby
	./$(TARGET) get  python

test_xy:
	@gcc test_xy.c -o xy
	@./xy

clean:
	-@rm *.exe      2>/dev/null
	-@rm $(TARGET)  2>/dev/null
	-@rm ./xy	  		2>/dev/null
