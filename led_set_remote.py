#!/usr/bin/python3
import sys
import os
import time

def main():
	while(True):
		os.system("python led_set.py GREEN RED BLUE")
		time.sleep(1)
		os.system("python led_set.py BLUE GREEN RED")
		time.sleep(1)

if __name__ == "__main__":
	main()
