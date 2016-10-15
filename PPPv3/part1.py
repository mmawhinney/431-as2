

import csv
import string
import re
import subprocess
import sys

def main():
	filename = sys.argv[1]
	output = sys.argv[2]
	openCsv(output);
	readFromFile(filename, output)

def readFromFile(filename, output):
	removeValues = ["threads", "grainsize", "trial", "particles", "seconds", "host", " user"]
	print(filename)
	file = open(filename, "r")
	useableParts = []
	for line in file:
		if "average" in line:
			line = line.replace("average: ", "")
			print(line)
			parts = string.split(line, ", ")
			for part in parts:
				print part
				innerParts = string.split(part, ": ")
				for value in removeValues:
					try:
						innerParts.remove(value)
					except ValueError:
						pass
				print innerParts
				useableParts.append(innerParts[0])		
			writeToCsv(useableParts, output)
			useableParts = []

def openCsv(output):
	with open(output, "w") as csvfile:
		writer = csv.writer(csvfile, delimiter=",")
		writer.writerow(["user", "host", "threads", "particles", "grainsize", "seconds"])
		
def writeToCsv(parts, output):
	with open(output, "a") as csvfile:
		writer = csv.writer(csvfile, delimiter=",")
		writer.writerow(parts)

if __name__ == '__main__':
	main()