CC = g++
CFLAGS = -Wall -O2
INCLUDES = -I/usr/local/include
LIBS = -L/usr/local/lib -lhts -lz
TARGET1 = filter_vcf_by_pp
TARGET2 = call_chets
TARGET3 = encode_vcf
SOURCE1 = filter_vcf_by_pp.cpp
SOURCE2 = call_chets.cpp
SOURCE3 = encode_vcf.cpp

all: $(TARGET1) $(TARGET2) $(TARGET3)

$(TARGET1): $(SOURCE1)
		$(CC) $(CFLAGS) $(INCLUDES) $(SOURCE1) -o $(TARGET1) $(LIBS)

$(TARGET2): $(SOURCE2)
		$(CC) $(CFLAGS) $(INCLUDES) $(SOURCE2) -o $(TARGET2) $(LIBS)

$(TARGET3): $(SOURCE3)
		$(CC) $(CFLAGS) $(INCLUDES) $(SOURCE3) -o $(TARGET3) $(LIBS)


clean:
		rm -f $(TARGET1) $(TARGET2) $(TARGET3)

