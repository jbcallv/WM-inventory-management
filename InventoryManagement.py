import psycopg2

# creates a connection to the database
database_connection = psycopg2.connect(host='localhost', port=5432, dbname="ims_small", \
    user="jbcall")
cursor = database_connection.cursor()

selected_option = ""
valid_options = ['a', 'b', 'c', 'd']

entity_type = ""
valid_types = ["system", "component"]

componentLocationQuery = ""
componentManufacturerQuery = ""
componentPurchaseInformationQuery = ""

systemLocationQuery = ""
systemManufacturererQuery = ""
systemPurchaseInformationQuery = ""

# interface functions
def showMenuOptions():
    print()
    print("Please make a selection")
    print()
    print("a) get the location of a system/component")
    print("b) get manufacturer information for a system/component")
    print("c) get purchase information for a system/component")
    print("d) quit at any time")
    print()

def handleInput():
    if entity_type == "component" and selected_option == "a":
        findLocationOfComponent()
    elif entity_type == "component" and selected_option == "b":
        findManufacturerOfComponent()
    elif entity_type == "component" and selected_option == "c":
        findPurchaseInformationForComponent()

    elif entity_type == "system" and selected_option == "a":
        findLocationOfSystem()
    elif entity_type == "system" and selected_option == "b":
        findManufacturerOfSystem()
    elif entity_type == "system" and selected_option == "c":
        findPurchaseInformationForSystem()

def checkInvalidInput(inputs, valid_inputs):
    if inputs not in valid_inputs:
        print("Invalid input")
        print()
        return 0

def quitIfKeyPressed(key_pressed):
    if key_pressed == "d":
        exit()

# component functions
def findLocationOfComponent():
    #try:
    #except Exception as e:
    #print(e)
    pass

def findManufacturerOfComponent():
    pass

def findPurchaseInformationForComponent():
    pass

# system functions
def findLocationOfSystem():
    pass

def findManufacturerOfSystem():
    pass

def findPurchaseInformationForSystem():
    pass



# loop that runs menu
while True:
    showMenuOptions()
    selected_option = input("Selection: ").lower()
    quitIfKeyPressed(selected_option)

    if checkInvalidInput(selected_option, valid_options) != 0:
        entity_type = input("System or a component? ").lower()
        quitIfKeyPressed(entity_type)
        checkInvalidInput(entity_type, valid_types)

        handleInput()