

import csv
import string
import re
import subprocess

def main():
	runSort();
	openCsv();
	readFromFile()

def runSort():
	with open("part1_output.txt", "w") as f:
		subprocess.call(["./driver-sort", "--particles", "40000000", "--threads", "1", "--grainsize", "10000", "--trials", "5"], stdout=f)


def readFromFile():
	removeValues = ["threads", "grainsize", "trial", "particles", "seconds", "host", " user"]
	file = open("./part1_output.txt", "r")
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
			writeToCsv(useableParts)
			useableParts = []
		# for innerPart in innerParts:
		# 	print(innerPart)

def openCsv():
	with open("part1.csv", "w") as csvfile:
		writer = csv.writer(csvfile, delimiter=",")
		writer.writerow(["user", "host", "threads", "particles", "grainsize", "seconds"])
		
def writeToCsv(parts):
	with open("part1.csv", "a") as csvfile:
		writer = csv.writer(csvfile, delimiter=",")
		writer.writerow(parts)

if __name__ == '__main__':
	main()