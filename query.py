from connect import connection, execute_query, execute_read_query
from tkinter import *

root = Tk()
root.title("NHL 2019-2020 Stats")
root.geometry("400x400")


def search():
    try:
        data = execute_read_query(connection, f"""{sql_query_text.get("1.0",'end-1c')}""", )
        for row in data:
            # for entry in row:
            print(row)
    except:
        print("nope")



initial_text = """SELECT *
FROM Stats
"""

left = Frame(root, bd=2, relief=SUNKEN)
# left.pack(fill=Y)
left.grid()

sql_query_text = Text(left, width=30, height=21)
sql_query_text.insert(END, initial_text)
# sql_query_text.pack(side=LEFT, fill=Y)
sql_query_text.grid(row=0, column=0)

search_button = Button(root, text="Search", command=search)
search_button.grid(row=1, column=1, columnspan=2, pady=10, padx=10, ipadx=100)

# query_label = Label(root, text=gui_data)
# query_label.grid(row=0, column=0)


root.mainloop()
connection.close()
