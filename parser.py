from os import system


# open system information file and read each line
f = open("bg7.txt", "r")
system_info = f.readlines()

# output SQL file
sql_file = open("bg7data.sql", "r+")

def insert_GPU(system_info, i):
    pass

def insert_memory(system_info, i):
        # 22 values in memory value of bg7.txt
        for j in range(1, 22):
            info_line = system_info[i+j].strip()
            #print(info_line)

            if "Size" in info_line:
                size = info_line.replace("Size:", "").replace("GB", "").strip()
                if size == "No Module Installed":
                    # replace entries with null value if they don't exist
                    size = "NULL"

            if "Type" in info_line and "Type Detail" not in info_line: 
                generation = info_line.replace("Type:", "").strip()
                if generation == "Unknown":
                    generation = "NULL"

            if "Speed" in info_line and "Configured Clock Speed" not in info_line:
                # this is last value that gets written
                speed = info_line.replace("Speed:", "").replace("MT/s", "").strip()
                if speed == "Unknown":
                    speed = "NULL"

                # put insertion statements in *.sql file
                insertion = "insert into Memory values (" + str(size) + ", " + "'" + str(generation) + "'" + ", " + str(speed) + ", " + "'" + str(form_factor) + "'" + ")\n"
                # change insertion string here to convert NULL strings to NULL type
                sql_file.writelines(insertion)

            if "Form Factor" in info_line:
                form_factor = info_line.replace("Form Factor:", "").strip()
                if form_factor == "Unknown":
                    form_factor = "NULL"

def insert_CPU(system_info, i):
    # 58 total lines of CPU information
    for j in range(1, 58):
        info_line = system_info[i+j].strip()

        if "Thread Count" in info_line:
            # last iteration will end here
            threads = info_line.replace("Thread Count:", "").strip()

            # put insertion statements in *.sql file
            insertion = "insert into CPU values (" + str(threads) + ", " + str(cores) + ")\n"
            sql_file.writelines(insertion)

        if "Core Count" in info_line:
            cores = info_line.replace("Core Count:", "").strip()

def insert_motherboard(system_info, i):
    pass

def insert_NC(system_info, i):
    pass

def insert_PSU(system_info, i):
    # 14 total lines of PSU information
    for j in range(1, 14):
        info_line = system_info[i+j].strip()
        
        if "Max Power Capacity" in info_line:
            # last iteration obviously ends here
            watts = info_line.replace("Max Power Capacity:", "").replace("W", "").strip()

            if watts == "Unknown":
                watts = "NULL"

            insertion = "insert into PSU values (" + str(watts) + ")\n"
            sql_file.writelines(insertion)

def insert_drives(system_info, i):
    # x lines of drive information
    pass

def insert_display(system_info, i):
    pass


def driver():
    for i in range(len(system_info)):
        line = system_info[i].strip()
        # parse and insert memory information
        if line == "Memory Device":
            insert_memory(system_info, i)

        # parse and insert processor information
        elif line == "Processor Information":
            insert_CPU(system_info, i)

        # parse and insert power supply unit (PSU) information
        elif line == "System Power Supply":
            insert_PSU(system_info, i)


if __name__ == "__main__":
    #get_memory()
    driver()
    f.close()
    sql_file.close()