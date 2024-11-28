from datetime import datetime
import psycopg2

attr_to_table={'air india': {'CustomerID': 'customer_info',
  'FullName': 'customer_info',
  'EmailAddress': 'customer_info',
  'ContactNumber': 'customer_info',
  'LoyaltyPoints': 'customer_info',
  'dataofbirth': 'customer_info',
  'cityofresidence': 'customer_info',
  'address': 'customer_info',
  'flightid': 'flight_route',
  'flightcode': 'flight_route',
  'aircraftmodel': 'flight_info',
  'ticketprice_economy': 'flight_info',
  'ticketprice_business': 'flight_info',
  'ticketprice_firstclass': 'flight_info',
  'economy_seats': 'flight_info',
  'business_seats': 'flight_info',
  'firstclass_seats': 'flight_info',
  'departuretime': 'flight_info',
  'arrivaltime': 'flight_info',
  'departureairport': 'flight_route',
  'destinationairport': 'flight_route',
  'flightdistance': 'flight_route',
  'currentstatus': 'flight_route',
  'averagedelay': 'flight_route'},
 'indigo': {'flightid': 'routeplan',
  'flight_code': 'flightschedule',
  'seatsleft': 'flightschedule',
  'flightfare': 'flightschedule',
  'status': 'flightschedule',
  'starttime': 'flightschedule',
  'endtime': 'flightschedule',
  'emailid': 'traveller',
  'points': 'loyalty',
  'fromlocation': 'routeplan',
  'tolocation': 'routeplan',
  'distancekm': 'routeplan',
  'avgdelay': 'routeplan',
  'customerid': 'traveller',
  'full_name': 'traveller',
  'contactno': 'traveller',
  'loyaltypoints': 'traveller',
  'dob': 'traveller',
  'city': 'traveller',
  'address': 'traveller'},
 'vistara': {'flightid': 'route',
  'flightnumber': 'flightdetails',
  'aircrafttype': 'flightdetails',
  'totalcapacity': 'flightdetails',
  'priceperseat_economy': 'flightdetails',
  'priceperseat_business': 'flightdetails',
  'availableseats_economy': 'flightdetails',
  'availableseats_business': 'flightdetails',
  'flightstatus': 'flightdetails',
  'takeofftime': 'flightdetails',
  'landtime': 'flightdetails',
  'passengerid': 'passenger',
  'passengername': 'passenger',
  'email': 'passenger',
  'contact': 'passenger',
  'loyaltypoints': 'passenger',
  'dataofbirth': 'passenger',
  'city': 'passenger',
  'address': 'passenger',
  'origin': 'route',
  'destination': 'route',
  'distancetraveled': 'route',
  'estimateddelay': 'route'}}

global_flight = {'Business Price',
 'Business Seats',
 'Delay',
 'Departure Time',
 'Destination',
 'Distance',
 'Economy Price',
 'Economy Seats',
 'First Class Price',
 'First Class Seats',
 'Flight code',
 'Landing_Time',
 'Source/From',
 'Status'}
schema_mapping = {
    "global_to_local": {
        "air india": {
            "customer": {'Address': 'address',
  'Name': 'FullName',
  'Email': 'EmailAddress',
  'Contact number': 'ContactNumber',
  'Points': 'LoyaltyPoints',
  'Date of Birth': 'dataofbirth',
  'City': 'cityofresidence'},
            "flight": {'Flight code': 'flightcode',
  'Status': 'currentstatus',
  'Departure_Time': 'departuretime',
  'Landing_Time': 'arrivaltime',
  'Source/From': 'departureairport',
  'Destination': 'destinationairport',
  'Distance': 'flightdistance',
  'Delay': 'averagedelay',
  'Economy Seats': 'economy_seats',
  'Business Seats': 'business_seats',
  'First Class Seats': 'firstclass_seats',
  'Economy Price': 'ticketprice_economy',
  'Business Price': 'ticketprice_business',
  'First Class Price': 'ticketprice_firstclass'},
        },
        "indigo": {"customer":{'Address': 'address',
  'Name': 'full_name',
  'Email': 'emailid',
  'Contact number': 'contactno',
  'Points': 'loyaltypoints',
  'Date of Birth': 'customerid',
  'City': 'city'},
            "flight": {'Flight code': 'flight_code',
  'Status': 'status',
  'Departure_Time': 'starttime',
  'Landing_Time': 'endtime',
  'Source/From': 'fromlocation',
  'Destination': 'tolocation',
  'Distance': 'distancekm',
  'Delay': 'avgdelay',
  'Economy Price': 'flightfare',
  'Economy Seats': 'seatsleft'},
        },
        "vistara": {"customer":{'Address': 'address',
  'Name': 'passengername',
  'Email': 'email',
  'Contact number': 'contact',
  'Points': 'loyaltypoints',
  'Date of Birth': 'dataofbirth',
  'City': 'city'},
            "flight": {'Flight code': 'flightid',
  'Status': 'flightstatus',
  'Departure_Time': 'takeofftime',
  'Landing_Time': 'landtime',
  'Source/From': 'origin',
  'Destination': 'destination',
  'Distance': 'distancetraveled',
  'Delay': 'estimateddelay',
  'Economy Seats': 'availableseats_economy',
  'Business_Seats': 'availableseats_business',
  'Economy Price': 'priceperseat_economy',
  'Business Price': 'priceperseat_business'},
        }
    }
}
fkey_mapping={"air india":{"flight":"flightid","customer":""},"indigo":{"customer":"emailid","flight":"flightid"},"vistara":{"customer":"","flight":"flightid"}}
dbnames=['air india','indigo','vistara']
flight_codes={"AI":'air india',"VS":'vistara',"IG":"indigo"}
airline_to_loyalty={'AI':6,"IN":7,"VIS":8}
airline_to_email={'AI':3,"IN":4,"VIS":5}

def get_email(row,airline):
    if row[airline_to_email[airline]]:
        return row[airline_to_email[airline]]
    else:
        return 0

def get_loyalty(row,airline):
    if row[airline_to_loyalty[airline]]:
        return row[airline_to_loyalty[airline]]
    else:
        return 0



def login(email):
    try:
        conn=psycopg2.connect(
                dbname="global_cust", user="postgres", password="addy", host="localhost", port="5432")
        cursor=conn.cursor()
        query="SELECT * FROM global_customers WHERE "
        for i,db in enumerate(dbnames):
            if i==0:
                query+=f"\"email-{db}\" = \'{email}\' "
            else:
                query+=f"OR \"email-{db}\" = \'{email}\' "

        # natarajanavi@example.net
        query+=" ;"

       
        cursor.execute(query)
        results=cursor.fetchall()
       
        cursor.close()
        conn.close()
        return results
    except Exception as e:
        print(f"Error: {e}")
        conn.close()
        return None



def setup_db_connections():
    try:
        db_connections = {

            "air india": psycopg2.connect(
                dbname="air india", user="postgres", password="addy", host="localhost", port="5432"),
            "indigo": psycopg2.connect(
                dbname="indigo", user="postgres", password="addy", host="localhost", port="5432"),
            "vistara": psycopg2.connect(
                dbname="vistara", user="postgres", password="addy", host="localhost", port="5432"),}
        print("All database connections established successfully.")
        return db_connections
    except Exception as e:
        print(f"Error setting up database connections: {e}")
        return {}

def analyze_query(global_query):
    local_queries = {"air india": {"customer" : {"SELECT": [], "UPDATE": []}, "flight": {"SELECT": [], "UPDATE": []}},
                     "indigo": {"customer" : {"SELECT": [], "UPDATE": []}, "flight": {"SELECT": [], "UPDATE": []}},
                     "vistara": {"customer" : {"SELECT": [], "UPDATE": []}, "flight": {"SELECT": [], "UPDATE": []}}}
    for db, mappings in schema_mapping["global_to_local"].items():
        if global_query["airline"]!="" and global_query["airline"]!=db:
            local_customer_query={}
            break
        if global_query.get("customer"):
            local_customer_query = {}
            for global_field, value in global_query["customer"].items():
                if global_field in mappings["customer"]:
                    local_customer_query[mappings["customer"][global_field]] = value
                else:
                    local_customer_query = {}
                    break
            if local_customer_query:
                if global_query.get("operation") == "SELECT":
                    local_queries[db]["customer"]["SELECT"].append(local_customer_query)
                elif global_query.get("operation") == "UPDATE":
                    
                    local_queries[db]["customer"]["UPDATE"].append(local_customer_query)
        if global_query.get("flight"):
            local_flight_query = {}
            # del global_query["customer"]
            for global_field, value in global_query["flight"].items():
                if global_field in mappings["flight"]:
                    local_flight_query[mappings["flight"][global_field]] = value
                else:
                    local_flight_query = {}
                    break
            if local_flight_query:
                if global_query.get("operation") == "SELECT":
                    local_queries[db]["flight"]["SELECT"].append(local_flight_query)
                elif global_query.get("operation") == "UPDATE":
                    local_queries[db]["flight"]["UPDATE"].append(local_flight_query)
    print(local_queries)
    print("YPOOOO")
    return local_queries

def decompose_query(local_queries):
   
    sql_queries={}
    for db,tables in local_queries.items():
        print(db)
        sql_queries[db]=[]
        for table,operations in tables.items():
            print(table)
            for operation,local_query in operations.items():
                if not local_query:
                    continue
                print(operation)
                tot_tables=set()
                print(local_query)
                for key in local_query[0].keys():
                    tot_tables.add(attr_to_table[db][key])
                tot_tables=list(tot_tables)
                if operation=='SELECT':
                    from_query= f"FROM {tot_tables[0]} "
                    for j in range(1,len(tot_tables)):
                        from_query+= f"JOIN {tot_tables[j]} on {tot_tables[j-1]}.{fkey_mapping[db][table]} = {tot_tables[j]}.{fkey_mapping[db][table]} "
                    
                    
                    where_list=list(local_query[0].items())
                    where_query=f"WHERE {where_list[0][0]} {where_list[0][1]} "
                    for j in range(1,len(where_list)):

                        where_query+=f"AND {where_list[j][0]} {where_list[j][1]} "

                    final_query="SELECT * "+ from_query +where_query +" ;"
                    print(final_query)
                    sql_queries[db].append(final_query)

                elif operation=='UPDATE':
                    update_list=[]
                    where_list=[]
                    final_query=f"UPDATE {tot_tables[0]} SET "
                    for entity,op in local_query.items():
                        if op[:3]=='-' or op[:3]=='+':
                            update_list=[entity,op]
                        else:
                            where_list.append((entity,op))
                    
                    final_query+=f"{entity} = {entity}"+op
                    
                    where_query=f" WHERE {where_list[0][0]} {where_list[0][1]} "
                    for j in range(1,len(where_list)):
                        where_query+=f"AND {where_list[j][0]} {where_list[j][1]} "

                    
                    final_query+=where_query+" ;"
                    print(db,final_query)
                    sql_queries[db].append(final_query)

                
                    


                    

                    
                    

                    


                
    return sql_queries

def data_wrapper(sql_queries, db_connections):
    results = {}

    for db, queries in sql_queries.items():
        results[db] = []
        conn = db_connections[db]
        cursor = conn.cursor()
        for query in queries:
            cursor.execute(query)
            if query.strip().upper().startswith("SELECT"):
                results[db].append(cursor.fetchall())
            conn.commit()
    return results

def process_query(query, db_connections):
    db_connections = setup_db_connections()
    try:
        local_queries = analyze_query(query)
        sql_queries = decompose_query(local_queries)
        results = data_wrapper(sql_queries, db_connections)
        return results
    finally:
        for conn in db_connections.values():
            conn.close()

def main_menu():
    logged_in_user = None
    db_connections = setup_db_connections()
    while True:
        print("\n--- Customer and Flight Menu ---")
        if not logged_in_user:
            print("1. Customer Login")
            print("2. Exit")
        else:
            print(f"Logged in as: {logged_in_user[0][0]}")
            print("2. View Customer Info")
            print("3. View Flight Booking History")
            print("4. Search Flights")
            print("5. Book a Flight")
            print("6. Check Flight Status")
            print("7. Logout")
            print("8. Exit")
        choice = input("Enter your choice: ")
        query = {"operation": "SELECT", "customer": {}, "flight": {},"airline":""}
        if not logged_in_user:
            if choice == "1":
                # # Customer Login
                email = input("Enter your email: ")
              

                result=login(email)
                if len(result)>0:
                    logged_in_user=result
                    print(result)
                    print(f"Login successful. Welcome, {logged_in_user[0][0]}!")
                else:
                    logged_in_user = None
                    print("Login failed. Please try again.")
            elif choice in ("q", "quit", "exit", "2"):
                break
            else:
                print("Please log in first.")
        else:
            if choice == "2":
                # View Customer Info
                query["customer"]["Email"] = logged_in_user
                result = process_query(query, db_connections)
                print(result["result"])
            elif choice == "3":
                # View Flight Booking History
                query["customer"]["Email"] = logged_in_user
                result = process_query(query, db_connections)
                print(result["result"])
            elif choice == "4":
                # Search Flights
                query["operation"]='SELECT'
                source = input("Enter source: ")
                destination = input("Enter destination: ")
                start_time = input("Enter travel start date (YYYY-MM-DD): ")
                end_time = input("Enter travel end date (YYYY-MM-DD): ")
                seat_class = input("Enter seat class (Economy/Business/First Class): ")
                max_price = input("Enter maximum price: ")
                # loyalty_pts=get_loyalty(logged_in_user,)
                query["flight"] = {
                    "Source/From": " = " + f"\'{source}\'",
                    "Destination": " = " + f"\'{destination}\'",
                    "Departure_Time": f"between '{str(datetime.strptime(start_time, '%Y-%m-%d'))}' and '{str(datetime.strptime(end_time, '%Y-%m-%d').replace(hour=23, minute=59, second=59))}'"
,
                    f"{seat_class} Seats": " >  2",
                    f"{seat_class} Price": " < " + max_price
                }

                result = process_query(query, db_connections)
                print(result)
            elif choice == "5":
                # Book a Flight
                query["operation"] = "UPDATE"
                flight_code = input("Enter flight code: ")
                seat_class = input("Enter seat class (Economy/Business/First Class): ")
                time = input("Enter travel date (YYYY-MM-DD): ")
                seat_count = int(input("Enter number of seats to book: "))
                query['airline']=flight_codes[flight_code[:2]]
                loyalty_pts=get_loyalty(logged_in_user,flight_code[:2])
                print(f"You have {loyalty_pts} loyalty points")
                using=int(input("How many points would you like to use:"))
                if(using<loyalty_pts and using>0):
                    
                    query['customer']['Email']= " = " +f"{get_email(logged_in_user,flight_code[:2])}"
                    query['customer']['Points']= " - " + str(using)
                else:
                    print("No loyalty points used")

                query["flight"] = {
                    f"{seat_class.title()}_Seats": " - " + seat_count,
                    "Flight code": " = " + f"'{flight_code}'",
                    "Departure_Time": f"between '{str(datetime.strptime(time, '%Y-%m-%d'))}' and '{str(datetime.strptime(time, '%Y-%m-%d').replace(hour=23, minute=59, second=59))}'"

                }
                result = process_query(query, db_connections)
                # query = {"operation": "SELECT", "customer": {}, "flight": {},"airline":{}}
                # query['customer']
                print(result["result"])
            elif choice == "6":
                # Check Flight Status
                flight_code = input("Enter flight code: ")
                query["flight"] = {
                    "Flight code": " = " + f"'{flight_code}'",
                    "Departure_Time": ' <= ' + str(datetime.today()).split('.')[0]
                }
                result = process_query(query, db_connections)
                print(result)
            elif choice == "7":
                print(f"Goodbye, {logged_in_user[0][0]}!")
                logged_in_user = None
            elif choice in ("q", "quit", "exit", "8"):
                print("Exiting program.")
                break
            else:
                print("Invalid choice. Please try again.")

if __name__ == '__main__':
    main_menu()






import pandas as pd

def map_to_global_schema(local_results, schema_mapping, db_schemas):

    global_data = []  # List to store global schema-aligned rows
    
    for db, rows in local_results.items():
        mapping = schema_mapping[db]  # Get the schema mapping for this database
        db_schema = db_schemas[db]    # Get the local schema for this database
        
        for row in rows:
            global_row = {}
            for global_field, local_field in mapping.items():
                if local_field in db_schema:
                    # Map local fields to global schema fields using the index from db_schema
                    global_row[global_field] = row[db_schema.index(local_field)]
                else:
                    # If the field does not exist in the local schema, set it to None
                    global_row[global_field] = None
            
            global_data.append(global_row)
    
    # Convert the collected global data into a DataFrame
    global_df = pd.DataFrame(global_data)
    return global_df


# Example input data from local databases (list of tuples)
local_results = {
    "air india": [
        (
            "AI101", "On Time", "2024-11-23 08:00", "2024-11-23 10:00",
            "DEL", "BOM", 1447, 0, 120, 30, 10, 5000, 10000, 15000
        )
    ],
    "indigo": [
        (
            "6E203", "Delayed", "2024-11-23 07:30", "2024-11-23 09:30",
            "BLR", "HYD", 568, 15, 4000, 80
        )
    ],
    "vistara": [
        (
            "UK789", "On Time", "2024-11-23 06:45", "2024-11-23 08:45",
            "DEL", "CCU", 1300, 0, 100, 20, 6000, 12000
        )
    ]
}

# Schema mapping for global schema to local schemas
schema_mapping = {
    'air india': {
        'Flight code': 'flightcode',
        'Status': 'currentstatus',
        'Departure_Time': 'departuretime',
        'Landing_Time': 'arrivaltime',
        'Source/From': 'departureairport',
        'Destination': 'destinationairport',
        'Distance': 'flightdistance',
        'Delay': 'averagedelay',
        'Economy Seats': 'economy_seats',
        'Business_Seats': 'business_seats',
        'First Class-Seats': 'firstclass_seats',
        'Economy Price': 'ticketprice_economy',
        'Business Price': 'ticketprice_business',
        'First Class Price': 'ticketprice_firstclass'
    },
    'indigo': {
        'Flight code': 'flight_code',
        'Status': 'status',
        'Departure_Time': 'starttime',
        'Landing_Time': 'endtime',
        'Source/From': 'fromlocation',
        'Destination': 'tolocation',
        'Distance': 'distancekm',
        'Delay': 'avgdelay',
        'Economy Price': 'flightfare',
        'Economy Seats': 'seatsleft'
    },
    'vistara': {
        'Flight code': 'flightid',
        'Status': 'flightstatus',
        'Departure_Time': 'takeofftime',
        'Landing_Time': 'landtime',
        'Source/From': 'origin',
        'Destination': 'destination',
        'Distance': 'distancetraveled',
        'Delay': 'estimateddelay',
        'Economy Seats': 'availableseats_economy',
        'Business_Seats': 'availableseats_business',
        'Economy Price': 'priceperseat_economy',
        'Business Price': 'priceperseat_business'
    }
}

# Local schemas for each database
db_schemas = {
    "air india": [
        "flightcode", "currentstatus", "departuretime", "arrivaltime",
        "departureairport", "destinationairport", "flightdistance", "averagedelay",
        "economy_seats", "business_seats", "firstclass_seats",
        "ticketprice_economy", "ticketprice_business", "ticketprice_firstclass"
    ],
    "indigo": [
        "flight_code", "status", "starttime", "endtime", "fromlocation",
        "tolocation", "distancekm", "avgdelay", "flightfare", "seatsleft"
    ],
    "vistara": [
        "flightid", "flightstatus", "takeofftime", "landtime",
        "origin", "destination", "distancetraveled", "estimateddelay",
        "availableseats_economy", "availableseats_business",
        "priceperseat_economy", "priceperseat_business"
    ]
}

# Map results to global schema
global_df = map_to_global_schema(local_results, schema_mapping, db_schemas)

# Display the unified DataFrame
print(global_df)
