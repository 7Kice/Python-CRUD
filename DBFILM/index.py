from dbfunctions import Database

def index():
    db=Database()
    while True:
        print("<===== Film Database =====>")
        print()
        print("PRESS 1 to add films")
        print("PRESS 2 to display films")
        print("PRESS 3 to update films")
        print("PRESS 4 to delete films")
        print("PRESS 5 to exit program")
        print()
        try:
            choice = int(input())
            if (choice == 1):
                #create
                FilmID=int(input("Enter Film ID: "))
                Filmnaam=input("Enter film title: ")
                Productiehuis=input("Enter production house: ")
                Land=input("Enter country: ")
                Acteur=input("Enter actor: ")
                Regisseur=input("Enter director: ")
                ReleaseDate=int(input("Enter Release Date: "))
                db.create(FilmID,Filmnaam,Productiehuis,Land,Acteur,Regisseur,ReleaseDate)
                pass
            elif choice == 2:
                #read
                db.read()
                pass
            elif choice == 3:
                #update
                FilmID=int(input("Enter the Film ID of the film you want to update: "))
                Filmnaam=input("Enter new film title: ")
                Productiehuis=input("Enter new production house: ")
                Land=input("Enter new country: ")
                Acteur=input("Enter new actor: ")
                Regisseur=input("Enter new director: ")
                ReleaseDate=int(input("Enter new Release Date: "))
                db.update(FilmID,Filmnaam,Productiehuis,Land,Acteur,Regisseur,ReleaseDate)
                pass
            elif choice == 4:
                #delete
                Filmid=int(input("Enter the Film ID of the film you want to delete."))
                db.delete(Filmid)
                pass
            elif choice == 5:
                break
            else:
                print("Invalid input. Choose out of the options above!")
        except Exception as e:
            print(e)
            print("Invalid details. Try again!")


if __name__ == "__main__":
    index()
