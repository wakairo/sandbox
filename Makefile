CPPFLAGS = -Wall

target_bin = sandbox-test
objects = $(target_bin).o

.PHONY: all clean test

all: $(target_bin)

$(target_bin): $(objects)
	$(CXX) -o $@ $(LDFLAGS) $^ $(LDLIBS)

test: $(target_bin)
	./$<

clean:
	rm -f $(target_bin) $(objects)
