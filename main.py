import tkinter as tk
from tkinter import ttk, messagebox
import mysql.connector
from tkinter import *

def GetValue(event):
    e1.delete(0, END)
    e2.delete(0, END)
    e3.delete(0, END)
    e4.delete(0, END)
    e5.delete(0, END)
    row_id = listBox.selection()[0]
    select = listBox.set(row_id)
    e1.insert(0,select['ID'])
    e2.insert(0,select['Name'])
    e3.insert(0,select['Gender'])
    e4.insert(0,select['Yearlevel'])
    e5.insert(0, select['Coursecode'])


def Add():
    studid = e1.get()
    studname = e2.get()
    studgen = e3.get()
    studyr = e4.get()
    studcourse = e5.get()

    mysqldb=mysql.connector.connect(host="localhost",user="root",password="",database="lumayagssis")
    mycursor=mysqldb.cursor()

    try:
       sql = "INSERT INTO  record (ID,Name,Gender,Yearlevel,Coursecode) VALUES (%s, %s, %s, %s, %s)"
       val = (studid,studname,studgen,studyr,studcourse)
       mycursor.execute(sql, val)
       mysqldb.commit()
       lastid = mycursor.lastrowid
       messagebox.showinfo("Data Entry Form","Added Successfully!")
       e1.delete(0, END)
       e2.delete(0, END)
       e3.delete(0, END)
       e4.delete(0, END)
       e5.delete(0, END)
       e1.focus_set()
    except Exception as e:
       print(e)
       mysqldb.rollback()
       mysqldb.close()


def update():
    studid = e1.get()
    studname = e2.get()
    studgen = e3.get()
    studyr = e4.get()
    studcourse = e5.get()

    mysqldb=mysql.connector.connect(host="localhost",user="root",password="",database="lumayagssis")
    mycursor=mysqldb.cursor()

    try:
       sql = "Update  record set Name= %s,Gender= %s,Yearlevel= %s,Coursecode= %s where ID= %s"
       val = (studname,studgen,studyr,studcourse,studid)
       mycursor.execute(sql, val)
       mysqldb.commit()
       lastid = mycursor.lastrowid
       messagebox.showinfo("Data Entry Form","Updated Successfully!")
       e1.delete(0, END)
       e2.delete(0, END)
       e3.delete(0, END)
       e4.delete(0, END)
       e5.delete(0, END)
       e1.focus_set()

    except Exception as e:
       print(e)
       mysqldb.rollback()
       mysqldb.close()

def delete():
    studid = e1.get()

    mysqldb=mysql.connector.connect(host="localhost",user="root",password="",database="lumayagssis")
    mycursor=mysqldb.cursor()

    try:
       sql = "delete from record where ID = %s"
       val = (studid,)
       mycursor.execute(sql, val)
       mysqldb.commit()
       lastid = mycursor.lastrowid
       messagebox.showinfo("Data Entry Form","Deleted Successfully!")

       e1.delete(0, END)
       e2.delete(0, END)
       e3.delete(0, END)
       e4.delete(0, END)
       e5.delete(0, END)
       e1.focus_set()

    except Exception as e:

       print(e)
       mysqldb.rollback()
       mysqldb.close()

def show():
        mysqldb = mysql.connector.connect(host="localhost", user="root", password="", database="lumayagssis")
        mycursor = mysqldb.cursor()
        mycursor.execute("SELECT * FROM record")
        records = mycursor.fetchall()
        print(records)


        for i, (ID, Name, Gender, Yearlevel, Coursecode) in enumerate(records, start=1):
            listBox.insert("",END, values=(ID, Name, Gender, Yearlevel, Coursecode))
            mysqldb.close()

def search():
    studid = e1.get()

    mysqldb=mysql.connector.connect(host="localhost",user="root",password="",database="lumayagssis")
    mycursor=mysqldb.cursor()

    sql = "select * from record where ID = %s"
    val = (studid,)
    mycursor.execute(sql, val)
    records = mycursor.fetchall()
    print(records)

    for i, (ID, Name, Gender, Yearlevel, Coursecode) in enumerate(records):
        listBox.insert("", END, values=(ID, Name, Gender, Yearlevel, Coursecode))
        mysqldb.close()


root = Tk()
root.geometry("1025x450")
root.resizable(False,False)
global e1
global e2
global e3
global e4
global e5

tk.Label(root, text="Student Information System", fg="darkblue", font=(None, 40)).place(x=300, y=5)

tk.Label(root, text="Student Name").place(x=10, y=40)
Label(root, text="Gender").place(x=10, y=70)
Label(root, text="Year Level").place(x=10, y=100)
Label(root, text="Course Code").place(x=10, y=130)

e1 = Entry(root)
e1.place(x=140, y=10)

e2 = Entry(root)
e2.place(x=140, y=40)

e3 = Entry(root)
e3.place(x=140, y=70)

e4 = Entry(root)
e4.place(x=140, y=100)

e5 = Entry(root)
e5.place(x=140, y=130)

#Buttons
Button(root, text="ADD",font=('Courier',12,'bold'),command = Add,height=3, width= 13).place(x=320, y=80)
Button(root, text="UPDATE",font=('Courier',12,'bold'),command = update,height=3, width= 13).place(x=470, y=80)
Button(root, text="DELETE",font=('Courier',12,'bold'),command = delete,height=3, width= 13).place(x=620, y=80)
Button(root, text="Search by ID:",font=('Courier',10,'bold'),command = search,height=1, width= 13).place(x=10, y=10)
Button(root, text="DISPLAY",font=('Courier',12,'bold'),command = show,height=3, width= 13).place(x=770, y=80)

#Columns
cols = ('ID', 'Name', 'Gender','Yearlevel', 'Coursecode')
listBox = ttk.Treeview(root, columns=cols, show='headings' )

for col in cols:
    listBox.heading(col, text=col)
    listBox.grid(row=1, column=0, columnspan=2)
    listBox.place(x=10, y=200)

search()
listBox.bind('<Double-Button-1>', GetValue)
root.mainloop()