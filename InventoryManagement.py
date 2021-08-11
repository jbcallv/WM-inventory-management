import psycopg2

database_connection = psycopg2.connect(host='localhost', port=5432, dbname="ims_small", \
    user="jbcall")
cursor = database_connection.cursor()

selected_option = ""
valid_options = ['a', 'b', 'c', 'd']

entity_type = ""
valid_types = ["system", "component"]
id_of_entity = ""

selected_component = ""
valid_components = ["gpu", "memory", "cpu", "motherboard", "nc", "psu", "drives", "display"]

LOCATION_QUERY = "select building, room_number from {} join located_at on {}.located_id=located_at.id where {}.id={};"
MANUFACTURER_QUERY = "select manufacturer_name from {} join manufacturer on manufacturer_id=manufacturer.id where {}.id={};"
PURCHASE_INFORMATION_QUERY = "select vendor, purchase_price, purchase_date from {}_tagged natural join tag where {}_id={};"
SYSTEM_MANUFACTURER_QUERY = "select manufacturer_name from {} join manufacturer on manufacturer_id=manufacturer.id where machine_id={};"

def showMenuOptions():
    print()
    print("Please make a selection")
    print()
    print("a) get the location of a system/component")
    print("b) get manufacturer information for a system/component")
    print("c) get purchase information for a system/component")
    print("d) quit at any time")
    print()

def showComponentOptions():
    print()
    print("Select a compoment")
    print()
    print("gpu")
    print("memory")
    print("cpu")
    print("motherboard")
    print("nc")
    print("psu")
    print("drive")
    print("display")
    print()


def handleComponentInput():
    if entity_type == "component" and selected_option == "a":
        findLocationOfComponent()
    elif entity_type == "component" and selected_option == "b":
        findManufacturerOfComponent()
    elif entity_type == "component" and selected_option == "c":
        findPurchaseInformationForComponent()

def handleSystemInput():
    if entity_type == "system" and selected_option == "a":
        findLocationOfSystem()
    elif entity_type == "system" and selected_option == "b":
        findManufacturerOfSystem()
    elif entity_type == "system" and selected_option == "c":
        findPurchaseInformationForSystem()   

def findLocationOfComponent():
    try:
        query = LOCATION_QUERY.format(selected_component, selected_component, selected_component, id_of_entity)
        executeLocationQuery(query)
    except Exception as e:
        print(e)

def findLocationOfSystem():
    try:
        query = LOCATION_QUERY.format("machine", "machine", "machine", id_of_entity)
        executeLocationQuery(query)
    except Exception as e:
        print(e)

def executeLocationQuery(query):
    cursor.execute(query)
    database_connection.commit()
    parseable_location = list(cursor)
    if len(parseable_location) > 0:
        print("The {} is located in".format(entity_type),  parseable_location[0][0], "room number", parseable_location[0][1])
    else:
        print("The location of this {} is unknown.".format(entity_type))

def findManufacturerOfComponent():
    try:
        query = MANUFACTURER_QUERY.format(selected_component, selected_component, id_of_entity)
        executeManufacturerQuery(query)
    except Exception as e:
        print(e)

def findManufacturerOfSystem():
    try:
        query = SYSTEM_MANUFACTURER_QUERY.format("m_made", id_of_entity)
        executeManufacturerQuery(query)
    except Exception as e:
        print(e)

def executeManufacturerQuery(query):
    cursor.execute(query)
    database_connection.commit()
    manufacturer_information = list(cursor)
    outputManufacturerInformation(manufacturer_information)

def outputManufacturerInformation(manufacturer_information):
    if len(manufacturer_information) > 0:
        print("The {} with id {} is manufactured by".format(entity_type, id_of_entity), manufacturer_information[0][0])
    else:
        print("The manufacturer of this {} is unknown.".format(entity_type))

def findPurchaseInformationForComponent():
    try:
        query = PURCHASE_INFORMATION_QUERY.format(selected_component, selected_component, id_of_entity)
        executePurchaseInformationQuery(query)
    except Exception as e:
        print(e)

def findPurchaseInformationForSystem():
    try:
        query = PURCHASE_INFORMATION_QUERY.format("m", "machine", id_of_entity)
        executePurchaseInformationQuery(query)
    except Exception as e:
        print(e)

def executePurchaseInformationQuery(query):
    cursor.execute(query)
    database_connection.commit()
    purchase_information = list(cursor)
    outputPurchaseInformation(purchase_information)

def outputPurchaseInformation(purchase_information):
    if len(purchase_information) > 0:
        print("vendor: {}".format(purchase_information[0][0]))
        print("purchase price: {}".format(purchase_information[0][1]))
        print("purchase date: {}".format(purchase_information[0][2]))
    else:
        print("The purchase information for this {} is unknown.".format(entity_type))


def checkInvalidInput(inputs, valid_inputs):
    if inputs not in valid_inputs:
        print("Invalid input")
        print()
        return True

def quitIfKeyPressed(key_pressed):
    if key_pressed == "d":
        exit()

while True:
    showMenuOptions()

    selected_option = input("Selection: ").lower()
    quitIfKeyPressed(selected_option)

    if not checkInvalidInput(selected_option, valid_options):
        entity_type = input("system or a component? ").lower()
        quitIfKeyPressed(entity_type)

        if not checkInvalidInput(entity_type, valid_types):

            id_of_entity = input("Enter the id of this entity: ")
            quitIfKeyPressed(id_of_entity)
            # confirm is number here
            if id_of_entity.strip().isdigit():
                id_of_entity = int(id_of_entity)

                if entity_type == "component":
                    showComponentOptions()
                    selected_component = input("Component name: ")
                    quitIfKeyPressed(selected_component)
                    
                    if not checkInvalidInput(selected_component, valid_components):
                        handleComponentInput()

                if entity_type == "system":
                    handleSystemInput()
            else:
                print("Invalid input")
