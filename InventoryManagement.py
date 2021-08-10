import psycopg2
from psycopg2 import sql

# creates a connection to the database
database_connection = psycopg2.connect(host='localhost', port=5432, dbname="ims_small", \
    user="jbcall")
cursor = database_connection.cursor()

selected_option = ""
valid_options = ['a', 'b', 'c', 'd']

entity_type = ""
valid_types = ["system", "component"]

selected_component = ""
valid_components = ["gpu", "memory", "cpu", "motherboard", "nc", "psu", "drives", "display"]

id_of_entity = ""

locationQuery = "select building, room_number from {} join located_at on {}.located_id=located_at.id where {}.id={};"
manufacturerQuery = "select manufacturer_name from {} join manufacturer on manufacturer_id=manufacturer.id where {}.id={};"
purchaseInformationQuery = "select vendor, purchase_price, purchase_date from {}_tagged natural join tag where {}_id={};"

systemManufacturerQuery = "select manufacturer_name from {} join manufacturer on manufacturer_id=manufacturer.id where machine_id={};"

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
    try:
        query = locationQuery.format(selected_component, selected_component, selected_component, id_of_entity)# = "select building, room_number from {} join located_at on {}.located_id=located_at.id where {}.id={};".format(selected_component, selected_component, selected_component, str(id_of_entity))

        cursor.execute(query)
        #cursor.execute(sql.SQL(componentLocationQuery).format(sql.Identifier(selected_component, selected_component, selected_component)), [id_of_entity])
        database_connection.commit()
        component_Location = list(cursor)
        if len(component_Location) > 0:
            print("The {} is located in".format(selected_component),  component_Location[0][0], "room number", component_Location[0][1])
        else:
            print("The location of this component is unknown.")
    except Exception as e:
        print(e)

def findManufacturerOfComponent():
    try:
        query = manufacturerQuery.format(selected_component, selected_component, id_of_entity)
        cursor.execute(query)
        database_connection.commit()
        manufacturer_information = list(cursor)
        if len(manufacturer_information) > 0:
            print("The {} with id {} is manufactured by".format(selected_component, id_of_entity), manufacturer_information[0][0])
        else:
            print("The manufacturer of this component is unknown.")
    except Exception as e:
        print(e)

def findPurchaseInformationForComponent():
    try:
        query = purchaseInformationQuery.format(selected_component, selected_component, id_of_entity)
        cursor.execute(query)
        database_connection.commit()
        purchase_information = list(cursor)
        if len(purchase_information) > 0:
            print("vendor: {}".format(purchase_information[0][0]))
            print("purchase price: {}".format(purchase_information[0][1]))
            print("purchase date: {}".format(purchase_information[0][2]))
        else:
            print("The purchase information for this component is unknown.")
    except Exception as e:
        print(e)


# system functions
def findLocationOfSystem():
    try:
        query = locationQuery.format("machine", "machine", "machine", id_of_entity)# = "select building, room_number from {} join located_at on {}.located_id=located_at.id where {}.id={};".format(selected_component, selected_component, selected_component, str(id_of_entity))

        cursor.execute(query)
        database_connection.commit()
        component_Location = list(cursor)
        if len(component_Location) > 0:
            print("The {} is located in".format("system"),  component_Location[0][0], "room number", component_Location[0][1])
        else:
            print("The location of this component is unknown.")
    except Exception as e:
        print(e)

def findManufacturerOfSystem():
    try:
        query = systemManufacturerQuery.format("m_made", id_of_entity)
        cursor.execute(query)
        database_connection.commit()
        manufacturer_information = list(cursor)
        if len(manufacturer_information) > 0:
            print("The {} with id {} is manufactured by".format("system", id_of_entity), manufacturer_information[0][0])
        else:
            print("The manufacturer of this component is unknown.")
    except Exception as e:
        print(e)

def findPurchaseInformationForSystem():
    try:
        query = purchaseInformationQuery.format("m", "machine", id_of_entity)
        cursor.execute(query)
        database_connection.commit()
        purchase_information = list(cursor)
        if len(purchase_information) > 0:
            print("vendor: {}".format(purchase_information[0][0]))
            print("purchase price: {}".format(purchase_information[0][1]))
            print("purchase date: {}".format(purchase_information[0][2]))
        else:
            print("The purchase information for this component is unknown.")
    except Exception as e:
        print(e)


# loop that runs menu
while True:
    showMenuOptions()
    selected_option = input("Selection: ").lower()
    quitIfKeyPressed(selected_option)

    if checkInvalidInput(selected_option, valid_options) != 0:
        entity_type = input("system or a component? ").lower()
        quitIfKeyPressed(entity_type)
        if checkInvalidInput(entity_type, valid_types) != 0:

            id_of_entity = input("Enter the id of this entity: ")
            quitIfKeyPressed(id_of_entity)
            # confirm is number here
            id_of_entity = int(id_of_entity)

            if entity_type == "component":
                showComponentOptions()
                selected_component = input("Component name: ")
                quitIfKeyPressed(selected_component)
                
                if checkInvalidInput(selected_component, valid_components) != 0:
                    handleComponentInput()

            if entity_type == "system":
                handleSystemInput()
