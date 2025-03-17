#!/usr/bin/python3
import spidev
import time
import sys

CYAN = [0, 100, 100]
GREEN = [100, 0, 0]
RED = [0, 100, 0]
BLUE = [0, 0, 100]

OFF = [0,0,0]

zero = int('10000000',2)
one = int('11111000',2)
data = []

def get_color(color):
	match color:
		case "GREEN":
			return GREEN
		case "CYAN":
			return CYAN
		case "OFF":
			return OFF
		case "RED":
			return RED
		case "BLUE":
			return BLUE
		case _:
			print(f"Farbe {color} nicht gefunden") 

def get_bit(byte, bit):
	return ((byte >> bit) & 1)

def add_led_data(color):
	for i in [0,1,2]:
		for j in [0,1,2,3,4,5,6,7]:
			if(get_bit(color[i], j) == 1):
				data.append(one)
			else:
				data.append(zero)
	#print(data)

def main():
	n_args = len(sys.argv)
	for i in range(1,n_args):
		add_led_data(get_color(sys.argv[i]))

	spi = spidev.SpiDev() # SPI Port anlegen
	spi.open(0,0) # SPI Bus 0 mit CS0 oeffnen
	spi.xfer(data, int(8/(1.25*10**-6)))

	time.sleep(1);
	data.clear()

if __name__ == "__main__":
	main()
