import csv
import os
import pickle5 as pickle # replit didn't like the original pickle

# read data
csv_file = open(os.path.join("input", 'airbnb_london_listing.csv'), 'r', encoding='utf-8')
data = csv.reader(csv_file)
next(data)  # skip the first row

# dictionary of frequencies for column "room type"
room_type_di = {}
for column in data:
  if column[30] in room_type_di:  
    room_type_di[column[30]] += 1
  else:
    room_type_di[column[30]] = 1
print(room_type_di)

# save dictionary room_type_di to pickle file
with open(os.path.join("output", 'room_type_freq.pkl'), 'wb') as file:
  pickle.dump(room_type_di, file) 