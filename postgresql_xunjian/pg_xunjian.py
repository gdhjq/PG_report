#encoding:utf-8
import psycopg2
## 连接的数据库
conn = psycopg2.connect(database="vastbase", user="test",
                        password="Huawei@123", host="116.63.135.14", port="5432")
## 建立游标，用来执行数据库操作
cursor = conn.cursor()

## 执行SQL命令

# cursor.execute("CREATE TABLE test_conn(id int, name text)")
# cursor.execute("INSERT INTO test_conn select generate_series(1,100),'haha'")
# ## 提交SQL命令
# conn.commit()

## 执行SQL SELECT命令
cursor.execute("select * from test_conn")

#列名
colnames = [desc[0] for desc in cursor.description]

print colnames
## 获取SELECT返回的元组
rows = cursor.fetchall()

for row in rows:
    print row
    print('id = ',row[0], 'name = ', row[1], '\n')

## 关闭游标
cursor.close()

## 关闭数据库连接
conn.close()
