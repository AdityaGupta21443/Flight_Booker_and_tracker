from datetime import datetime
import psycopg2
import pandas as pd

attr_to_table={
    'air india': {
        'CustomerID': 'customer_info',
        'FullName': 'customer_info',
        'EmailAddress': 'customer_info',
        'ContactNumber': 'customer_info',
        'LoyaltyPoints': 'customer_info',
        'dataofbirth': 'customer_info',
        'cityofresidence': 'customer_info',
        'address': 'customer_info',
        'flightid': 'flight_route',
        'flightcode': 'flight_info',
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
    'indigo': {
        'flightid': 'routeplan',
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
    'vistara': {
        'flightid': 'route',
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

global_flight = {
    'Business Price',
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
            "customer": {
                'Address': 'address',
                'Name': 'FullName',
                'Email': 'EmailAddress',
                'Contact number': 'ContactNumber',
                'Points': 'LoyaltyPoints',
                'Date of Birth': 'dataofbirth',
                'City': 'cityofresidence'
            },
            "flight": {
                'Flight code': 'flightcode',
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
                'First Class Price': 'ticketprice_firstclass'
            }
        },
        "indigo": {
            "customer":{
                'Address': 'address',
                'Name': 'full_name',
                'Email': 'emailid',
                'Contact number': 'contactno',
                'Points': 'loyaltypoints',
                'Date of Birth': 'customerid',
                'City': 'city'
            },
            "flight": {
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
            }
        },
        "vistara": {
            "customer":{'Address': 'address',
                'Name': 'passengername',
                'Email': 'email',
                'Contact number': 'contact',
                'Points': 'loyaltypoints',
                'Date of Birth': 'dataofbirth',
                'City': 'city'
            },
            "flight": {
                'Flight code': 'flightnumber',
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
    }
}

fkey_mapping={"air india":{"flight":"flightid","customer":""},
              "indigo":{"customer":"emailid","flight":"flightid"},
              "vistara":{"customer":"","flight":"flightid"}}
dbnames=['air india','indigo','vistara']
flight_codes={"AI":'air india',"VS":'vistara',"IG":"indigo"}
airline_to_loyalty={"AI":6,"IN":7,"VIS":8}
airline_to_email={'AI':3,"IN":4,"VIS":5}

def get_email(row,airline):
    if row[0][airline_to_email[airline]]:
        return row[0][airline_to_email[airline]]
    else:
        return 0

def get_loyalty(row,airline):
    if row[0][airline_to_loyalty[airline]]:
        return row[0][airline_to_loyalty[airline]]
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
                dbname="indigo", user="postgres", password="vinit1june", host="192.168.49.238", port="5432"),
            "vistara": psycopg2.connect(
                dbname="vistara", user="postgres", password="mukul123", host="192.168.49.6", port="5432")
            }
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
    return local_queries

def decompose_query(local_queries):
    sql_queries={}
    for db,tables in local_queries.items():
        sql_queries[db]=[]
        for table,operations in tables.items():
            for operation,local_query in operations.items():
                if not local_query:
                    continue
                tot_tables=set()
                for key in local_query[0].keys():
                    tot_tables.add(attr_to_table[db][key])
                tot_tables=list(tot_tables)
                if operation=='SELECT':
                    from_query= f"FROM \"{tot_tables[0]}\" "
                    for j in range(1,len(tot_tables)):
                        from_query+= f"JOIN \"{tot_tables[j]}\" on \"{tot_tables[j-1]}\".\"{fkey_mapping[db][table]}\"= \"{tot_tables[j]}\".\"{fkey_mapping[db][table]}\" "
                    where_list=list(local_query[0].items())
                    where_query=f"WHERE \"{where_list[0][0]}\" {where_list[0][1]} "
                    for j in range(1,len(where_list)):
                        where_query+=f"AND \"{where_list[j][0]}\" {where_list[j][1]} "
                    final_query="SELECT * "+ from_query + where_query +" ;"
                    sql_queries[db].append(final_query)
                elif operation=='UPDATE':
                    update_list=[]
                    where_list=[]
                    final_query=f"UPDATE \"{tot_tables[0]}\" SET "
                    for entity,op in local_query[0].items():
                        if '-'in op[:2] or '+' in op[:2]:
                            update_list=[entity,op]
                        else:
                            where_list.append((entity,op))
                    final_query+=f"\"{update_list[0]}\" = \"{update_list[0]}\""+ update_list[1]
                    where_query=f" WHERE \"{where_list[0][0]}\" {where_list[0][1]} "
                    for j in range(1,len(where_list)):
                        where_query+=f"AND \"{where_list[j][0]}\" {where_list[j][1]} "
                    final_query+=where_query+" ;"
                    sql_queries[db].append(final_query)
    return sql_queries

def data_wrapper(sql_queries, db_connections):
    local_results = {}
    fields = {}
    for db, queries in sql_queries.items():
        local_results[db] = []
        conn = db_connections[db]
        cursor = conn.cursor()
        for query in queries:
            try:
                
                cursor.execute(query)
                if query.strip().upper().startswith("SELECT"):
                    local_results[db].extend(list(map(list, cursor.fetchall())))
                    fields[db] = [desc[0] for desc in cursor.description]
                    for i, ele, in enumerate(fields[db]):
                        try:
                            id1=fields[db].index(ele,i+1)
                            fields[db].pop(id1)
                            for i in range(len(local_results[db])):
                                local_results[db][i].pop(id1)
                                
                        except:
                            pass
                    # print(fields)
                else:
                    fields[db] = 'Transaction status'
                    local_results[db] = True
                conn.commit()
            except Exception as e:
                fields[db]  = 'Transaction status'
                local_results[db] = False
    global_result = []
    for db, rows in local_results.items():
        if not rows:
            continue
        mapping = schema_mapping['global_to_local'][db]['flight']
        db_schema = fields[db]
        print(db_schema)
        print(rows)
        for row in rows:
            if not row:
                continue
            global_row = {}
            # print(db_schema,row)
            for global_field, local_field in mapping.items():
                
                if local_field in db_schema:
                    # print(global_field,local_field,row[db_schema.index(local_field)])
                    global_row[global_field] = row[db_schema.index(local_field)]
                else:
                    global_row[global_field] = None
            global_result.append(global_row)
    return pd.DataFrame(global_result)

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
            print("9. test connection")
        choice = input("Enter your choice: ")
        query = {"operation": "SELECT", "customer": {}, "flight": {},"airline":""}
        if not logged_in_user:
            if choice == "1":
                # Customer Login
                # email = input("Enter your email: ")
                email="natarajanavi@example.net"
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
                print(result)
            elif choice == "3":
                # View Flight Booking History
                query["customer"]["Email"] = logged_in_user
                result = process_query(query, db_connections)
                print(result)
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
                    "Departure_Time": f"between '{str(datetime.strptime(start_time, '%Y-%m-%d'))}' and '{str(datetime.strptime(end_time, '%Y-%m-%d').replace(hour=23, minute=59, second=59))}'",
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
                    query['customer']['Email']= " = " +f"'{get_email(logged_in_user,flight_code[:2])}'"
                    query['customer']['Points']= " - " + str(using)
                else:
                    print("No loyalty points used")
                query["flight"] = {
                    f"{seat_class.title()} Seats": " - " + str(seat_count),
                    "Flight code": " = " + f"'{flight_code}'",
                    "Departure_Time": f" between '{str(datetime.strptime(time, '%Y-%m-%d'))}' and '{str(datetime.strptime(time, '%Y-%m-%d').replace(hour=23, minute=59, second=59))}'"
                }
                result = process_query(query, db_connections)
                print(result)
            elif choice == "6":
                # Check Flight Status
                flight_code = input("Enter flight code: ")
                query["flight"] = {
                    "Flight code": " = " + f"'{flight_code}'",
                    "Departure_Time": ' <= ' + f"'{str(datetime.today()).split('.')[0]}'"
                }
                query['airline']=flight_codes[flight_code[:2]]
                result = process_query(query, db_connections)
                print(result)
            elif choice == "7":
                print(f"Goodbye, {logged_in_user[0][0]}!")
                logged_in_user = None
            elif choice =="9":
                setup_db_connections()

            elif choice in ("q", "quit", "exit", "8"):
                print("Exiting program.")
                break
            else:
                print("Invalid choice. Please try again.")

if __name__ == '__main__':
    main_menu()
