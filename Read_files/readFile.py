def read_sql_file(filename):
    with open(filename, 'r', encoding='utf-8') as f:
        sql_script = f.read()
    return sql_script

# Example usage:



def main():
    sql_content = read_sql_file('your_sql_file.sql')



if __name__ == "__main__":
    main()