import mysql.connector as connector

class Database:
    def __init__(self):
        self.con= con= connector.connect(host="localhost", port="3306", user="root", passwd="", db="film")

    #Create
    def create(self,FilmID,Filmnaam,Productiehuis,Land,Acteur,Regisseur,ReleaseDate):
        query = "insert into tbl_films(FilmID,Filmnaam,Productiehuis,Land,Acteur,Regisseur,ReleaseDate) values(%s, %s, %s, %s, %s, %s, %s)"
        cur=self.con.cursor()
        cur.execute(query, (FilmID,Filmnaam, Productiehuis, Land, Acteur, Regisseur, ReleaseDate))
        self.con.commit()
        print("saved")

    #Read
    def read(self):
        query="select * from tbl_films"
        cur=self.con.cursor()
        cur.execute(query)
        for row in cur:
            print("FilmID :", row[0])
            print("Filmnaam :", row[1])
            print("Productiehuis :", row[2])
            print("Land :", row[3])
            print("Acteur :", row[4])
            print("Regisseur :", row[5])
            print("Release Date :", row[6])
            print("")
            print("")
    
    #Update
    def update(self, FilmID, newFilmnaam, newProductiehuis, newLand, newActeur, newRegisseur, newReleaseDate):
        query="UPDATE tbl_films set Filmnaam='{}', Productiehuis='{}', Land='{}', Acteur='{}', Regisseur='{}', ReleaseDate={} WHERE FilmID={}".format(newFilmnaam,newProductiehuis, newLand, newActeur, newRegisseur, newReleaseDate, FilmID)
        print(query)
        cur=self.con.cursor()
        cur.execute(query)
        self.con.commit()
        print("updated")
    
    #Delete
    def delete(self, FilmID):
        query="DELETE from tbl_films WHERE FilmID= {}".format(FilmID)
        print(query)
        cursor=self.con.cursor()
        cursor.execute(query)
        self.con.commit()
        print("deleted")