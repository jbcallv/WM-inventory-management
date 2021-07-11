from os import system


f = open("bg7.txt", "r")
# open bg7data.sql for writing
system_info = f.readlines()

for i in range(len(system_info)):
    line = system_info[i].strip()
    # get all RAM
    if line == "Memory Device":
        print(line)
        for j in range(1, 22):
            info_line = system_info[i + j].strip()

            if "Type" in info_line and "Type Detail" not in info_line or "Size" in info_line:
                print("\t", info_line)
                # bg7data.writelines("Insert into table (info_line parsed into four different columns: manufacturer, size, speed, type)")
f.close()