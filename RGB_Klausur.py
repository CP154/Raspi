#!/usr/bin/python3
import subprocess
import time
import sys

try:
	while True:
		input = open("Wert1.txt")
		Wert1 = input.readline()
		input = open("Wert2.txt")
		Wert2 = input.readline()
		Gesamtleistung = int(Wert1) + int(Wert2)
		print(Gesamtleistung)

		if Gesamtleistung < 500:
			subprocess.run(
["python", "led_set.py", "BLUE", "OFF","OFF","OFF","OFF"],
capture_output=True,
text=True
)
		elif Gesamtleistung < 1000:
                	subprocess.run(
["python", "led_set.py", "BLUE", "BLUE","OFF","OFF","OFF"],
capture_output=True,
text=True
)
		elif Gesamtleistung < 1500:
			subprocess.run(
["python", "led_set.py", "BLUE", "BLUE","BLUE","OFF","OFF"],
capture_output=True,
text=True
)
		elif Gesamtleistung < 2000:
			subprocess.run(
["python", "led_set.py", "BLUE", "BLUE","BLUE","BLUE","OFF"],
capture_output=True,
text=True
)
		elif Gesamtleistung > 2500:
			subprocess.run(
["python", "led_set.py", "BLUE", "BLUE","BLUE","BLUE","BLUE"],
capture_output=True,
text=True
)

		else:
			subprocess.run(
["python", "led_set.py", "OFF", "OFF","OFF","OFF","OFF"],
capture_output=True,
text=True
)

	time.sleep(5)

except KeyboardInterrupt:
	print("Programm beendet")
time.sleep(5)
