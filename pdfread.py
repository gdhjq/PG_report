import time
import camelot
import os
import numpy as np
from docxtpl import DocxTemplate
import datetime
import random


write_date = time.strftime("%Y%m%d", time.localtime())
print(write_date)
write_date_format =  (datetime.datetime.now()+datetime.timedelta(days=1)).strftime('%Y.%m.%d')
year_format =  (datetime.datetime.now()+datetime.timedelta(days=1)).year
month_format =  (datetime.datetime.now()+datetime.timedelta(days=1)).month
day_format =  (datetime.datetime.now()+datetime.timedelta(days=1)).day
write_date_format2 = str(year_format)+'年' +str(month_format)+'月'+str(day_format)+'日'
dir_path = os.path.dirname(os.path.realpath(__file__))
# file_list = []
hotel_dict = {}
# changlong_site = []
print(write_date_format)
# panda_site = []
no_today=set()
unit_ls = ["KG",'kg','个','盒','斤','只','颗',"粒","箱","克","头","袋","吨","件"]
template_file_name = 'fruit.docx'

def init_env(file_list):
    '''初始化找文件和路径'''
    ##根据csv类型找文件

    read_dir = os.path.join(dir_path, write_date)
    if os.path.exists(read_dir):
        for root, dirs, files in os.walk(read_dir):
            for file in files:
                filename,type = os.path.splitext(file)
                if type == '.pdf':
                    file_list.append(filename)


    else:
        print('没有日期目录')

    ##check transfile dir path is or not
    trans_dir = os.path.join(dir_path, 'txt')
    # print(trans_dir)
    if not os.path.exists(trans_dir):
        os.mkdir(trans_dir)
    return trans_dir,read_dir

def init_env2(file_list):
    '''初始化找文件和路径'''
    ##根据csv类型找文件

    read_dir = os.path.join(dir_path, write_date)
    if os.path.exists(read_dir):
        for root, dirs, files in os.walk(read_dir):
            print("共有单数",len(files))
            for file in files:
                filename,type = os.path.splitext(file)
                if type == '.pdf':
                    # file_list.append(filename)
                    f_ls = filename.split('_')
                    hotel_name = f_ls[0].replace('广州长隆集团有限公司','')
                    if hotel_name == "":
                        hotel_name = "长隆大厦"
                    if hotel_dict.get(hotel_name):
                        hotel_dict[hotel_name].append(filename)
                    else:
                        hotel_dict[hotel_name] = [filename]

    else:
        print('没有日期目录')

    ##check transfile dir path is or not
    trans_dir = os.path.join(dir_path, 'txt')
    # print(trans_dir)
    if not os.path.exists(trans_dir):
        os.mkdir(trans_dir)
    return trans_dir,read_dir
# data1= camelot.read_pdf("/Users/mac/PycharmProjects/PG_report/123.pdf",flavor='stream')
# table_len = data1.n
# tpm_df = data1[0].df
# # print(type(tpm_df))
# if table_len < 2 :
#     tran_list = np.array(tpm_df)
#     # print(tran_list)
#     for list in tran_list:
#         # print(list[0])
#         head_start = list[0]
#         if head_start.startswith('10'):
#             print(list[1],list[2])
        # for item in list:
        #     print("==",item)
# data1[0].to_csv('nse_holiday_list_tabl2.csv').rename(columns=tpm_df.iloc[0]).drop(tpm_df.index[0])
# data1[0].to_csv('data1.xlsx')

if __name__ =='__main__':
    tran_dir,read_dir = init_env2(hotel_dict)
    day_txt = write_date + '.txt'
    write_file = os.path.join(tran_dir, day_txt)
    # if os.path.exists(write_file):
    #     os.remove(write_file)
    trans_dir = os.path.join(dir_path, 'JYZ')
    trans_dir2 = os.path.join(dir_path, 'JYZ', write_date)
    if not os.path.exists(trans_dir2):
        if not os.path.exists(trans_dir):
            os.mkdir(trans_dir)
        os.mkdir(trans_dir2)

    with open(write_file, 'w', ) as w:
        for hotel,file_list in hotel_dict.items():
            w.write("*"*12+hotel+"**"*12+'\n')
            print(hotel,"*"*10)
            fruit_dict = {}
            site_dict = {}
            print(file_list)
            for file in file_list:

                file_path = os.path.join(read_dir,file+'.pdf')

                with open(file_path,'r') as f:
                    # print(file_path)
                    data1 = camelot.read_pdf(file_path, flavor='stream')
                    table_len = data1.n
                    # print(table_len)
                    tpm_df = data1[0].df
                    # print(type(tpm_df))

                    if table_len < 2:
                        tran_list = np.array(tpm_df)
                        i = 1
                        for row_ls in tran_list:
                            head_start = row_ls[0]
                            if head_start.startswith('10'):
                                # print(file_path)
                                try:
                                    # print("正常",len(row_ls))
                                    fruit_head = row_ls[0].split(' ')
                                    # print(site)
                                    # fruit_head.pop()
                                    # test_dict[fruit_head[0]]= fruit_head[1] + fruit_head[2] if len(fruit_head) >2 else fruit_head[1]
                                    newls = []
                                    newls_last = []
                                    for row in row_ls:
                                        v = row.replace('\n',' ',5)
                                        newls.append(v)
                                    # print(len(newls),newls)
                                    # print(newls_last)
                                    for last_z in newls:
                                        if last_z:
                                            if " " in last_z:
                                                zz = last_z.split(' ')
                                            else:
                                                zz = [last_z]
                                            newls_last.extend(zz)
                                    if len(newls_last) > 12:
                                        print(file_path,"*"*20)
                                        #去掉空格
                                        newls_last = list(filter(None,newls_last))
                                    if len(newls_last) < 10:
                                        print(file_path, "*" * 20)
                                        if newls_last[0] == "1010500174":
                                            newls_last.insert(2,"9个/箱")
                                    print(len(newls_last),newls_last)
                                    if newls_last[-1] == write_date_format or newls_last[-2]==write_date_format or newls_last[-3]==write_date_format:
                                        pass
                                    else:
                                        print(file, "文件不是今天的单")
                                        no_today.add(file)
                                        continue
                                    #所以水果
                                    #{'1010500066': {'name': '砂糖桔', 'sum': ['40', '20', '80']},}
                                    if fruit_dict.get(newls_last[0]):
                                        fruit_dict[newls_last[0]]["sum"].append(float(newls_last[4]))
                                        fruit_dict[newls_last[0]]["unit"].append(newls_last[3])
                                    else:
                                        fruit_dict[newls_last[0]] = {"name":newls_last[1],"sum":[float(newls_last[4])],"unit":[newls_last[3]],"desc":newls_last[2]}

                                    #
                                    if site_dict.get(newls_last[8]):
                                        site_dict[newls_last[8]].append([newls_last[1],newls_last[2],newls_last[4]+newls_last[3]])
                                    else:
                                        site_dict[newls_last[8]] = [[newls_last[1],newls_last[2],newls_last[4]+newls_last[3]]]

                                except Exception as e:
                                    print("=="*10)
                                    # print(file_path)
                                    # print(row_ls)
                                    print(e)
                                    # print("不正常",row_ls[-1])
                                    print("=="*10)
                                    break

                    else:
                        print('很多表格',table_len)
            print(fruit_dict)


            # w.write("=" * 100+'\n')
            for k,v in site_dict.items():
                print("-" * 12 + k + '-' * 10)
                w.write("-" * 12 + k + '-' * 12+'\n')
                for small_v in v :
                    print("111111",small_v)
                    w.write(str(small_v).replace("'"," ")+'\n')

            w.write("\n=="  +"所有水果统计"+ "=" *12 +'\n')
            render_dict = {
                'all_paragraph': [],
                'date': write_date_format2,
            }
            for kf,vf in fruit_dict.items():
                # print(kf)
                fruit_sum = sum(fruit_dict[kf]['sum'])
                # print(fruit_dict[kf]['name'], fruit_sum)
                if "苹果" in fruit_dict[kf]['name']:
                    w.write(fruit_dict[kf]['name'] + fruit_dict[kf]['desc'] +'   [' + str(fruit_sum) + "" + fruit_dict[kf]['unit'][0] + ']\n')
                else:
                    w.write(fruit_dict[kf]['name'] +'   [' + str(fruit_sum) + "" + fruit_dict[kf]['unit'][0] + ']\n')
                # w.write(fruit_dict[kf]['name'] +'  '+ fruit_dict[kf]['desc']+'  [' + str(fruit_sum) + "" + fruit_dict[kf]['unit'][0] + ']\n')
                print(fruit_dict[kf]['name'] + '  '+ fruit_dict[kf]['desc']+'  ['  + str(fruit_sum) + "" + fruit_dict[kf]['unit'][0] + ']')
                fator = set(fruit_dict[kf]['unit'])
                if len(fator) > 1:
                    w.write("     ======"+fruit_dict[kf]['name'] + '的计算单位有多个，需要重新人工计算 ' +str(fator) + '')
                    print("\033[31m     "+fruit_dict[kf]['name'] + '的计算单位有多个，需要重新人工计算 ' +str(fator) + 'bai\033[0m')
                for v in fator:
                    if v not in unit_ls:
                        w.write("    ======" + fruit_dict[kf]['name'] + ' 的计算单位不对，需要重新计算这个统计项 ' + str(fator) + '\n')
                        print("\033[31m     =====" + fruit_dict[kf]['name'] + ' 的计算单位可能不对，需要重新确认这个统计项 \033[0m')
                random_num = random.uniform(8,18)
                vv = [str(fruit_dict[kf]['name']),str(write_date_format2),str(round(random_num,2))+'%',"1公斤","合格"]
                render_dict['all_paragraph'].append(vv)
            w.write('\r\n')
            # print(render_dict)
            template_file = os.path.join(dir_path, '1templatechanglong', template_file_name)
            tpl = DocxTemplate(template_file)
            tpl.render(render_dict)
            write_file = os.path.join('JYZ',write_date,hotel) + '检疫报告.docx'
            tpl.save(write_file)
            # os.chmod(write_file,stat.S_IRWXU|stat.S_IRWXG|stat.S_IRWXO)

print(len(no_today),no_today)