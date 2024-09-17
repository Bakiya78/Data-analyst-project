Booking code:
while True:
    print("""Please select your option
            1.Bus booking
            2.Train booking
            3.Flight booking
            4.Rooms booking""")
    option = int(input("Pick your option:"))
    
    if option == 1:
        
        print("")
        location_start = input ("Enter your locationS:")
        location_end = input ("Enter your locationE:")
        Time = float(input("Enter your time:"))
        name = input("Enter your name:")
        mobile_no = int(input("Your contact:"))
    elif option == 2:
        print("")
        Train_name = input ("which train:")
        location_start = input ("Enter your locationS:")
        location_end = input ("Enter your locationE:")
        Time = float(input("Enter your time:"))
        name = input("Enter your name:")
        mobile_no = int(input("Your contact:"))
    elif option == 3 :
        print("")
        airline_name = input("which airline:")
        location_start = input ("Enter your locationS:")
        location_end = input ("Enter your locationE:")
        boarding_Time = float(input("Enter your time:"))
        name = input("Enter your name:")
        mobile_no = int(input("Your contact:"))
        seat_preferance = input("Enter your preferance:")
    elif option == 4:
        print("")
        hotel_name = input("which hotel:")
        location = input ("Enter your location:")
        checkin_Time = float(input("Enter your in_time:"))
        checkout_Time = float(input("Enter your out_time:"))
        name = input("Enter your name:")
        mobile_no = int(input("Your number:"))
        contact_details =input ("Enter your address:")
        room_preferance = print("""Enter your preferance
                                    1.AC
                                    2.NON-AC""")
        preferance =input("Enter  your choice:")
        if preferance==1:
            print("AC")
        else:
            print("NON-AC")
    else :
        print("Not available service")
         
            
                                

    

        
