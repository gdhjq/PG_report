#coding=utf-8
#autor：drinking

import hashlib
import os
import time
import sys
import multiprocessing

dir_path = os.path.dirname(os.path.realpath(__file__))
read_file_dir = 'before_file'
write_file_dir = 'after_file'
encrypt_col_file = 'encrypt_column.txt'
split_type_ls = [
    ',',' ','|',';','.'
]
mask_file_ls = [
    '.txt','.csv'
]
encrypt_type_ls = [
    'md5','sha256'
]
# file_type ='.csv'

def choose_type():
    ##选择类型
    try:
        print('=' * 30)
        mask_file_num = int(input('\033[32m您加密的文件类型是?\033[0m\r\n1.txt，\r\n2.csv\r\n请输入数字：\r\n'))
        if mask_file_num <= len(mask_file_ls):
            print('选择的脱敏文件类型:', mask_file_ls[mask_file_num-1])
        else:
            mask_file_num = 1
            print("\033[31m不在范围内会选择默认的类型\033[0m：.txt")

        print('=' * 30)
        split_type_num = int(input('\033[32m您文件的分割符是?\033[0m\r\n1.逗号，\r\n2.空格" "\r\n3.中分线| \r\n4.分号；\r\n5.句号\r\n请输入数字：\r\n'))
        if split_type_num > len(split_type_ls):
            split_type_num = 2
            print("\033[31m不在范围内会选择默认的分割符号\033[0m：空格")

        print('=' * 30)
        encrypt_type_num = int(input('\033[32m您加密的文件类型是?\033[0m\r\n1.md5，\r\n2.sha256\r\n\r\n请输入数字：\r\n'))
        if encrypt_type_num <= len(encrypt_type_ls):
            print('选择的脱敏文件类型:', encrypt_type_ls[encrypt_type_num - 1])
        else:
            encrypt_type_num = 1
            print("\033[31m不在范围内会选择默认的类型\033[0m：MD5")

        return encrypt_type_num,split_type_num,mask_file_num


    except Exception as e:
        print(e)
        print('请输入数字选择')
        return None

def init_env(dir_name,file_type):
    '''初始化找文件和路径'''
    ##根据xlsx类型找文件
    read_dir = os.path.join(dir_path,dir_name)
    file_dir = []
    if os.path.exists(read_dir):
        for root,dirs,files in os.walk(read_dir):
            print("共有单数",len(files))
            print(files)
            for file in files:
                filename,type = os.path.splitext(file)
                if type == file_type:
                    # file_path = os.path.join(dir_path,dir_name, filename) + file_type
                    # print(file_path)
                    # file_dir.append(file_path)
                    file_dir.append(filename)
    else:
        print('没有对应的数据库txt目录')
        raise None
    return file_dir

def get_encrypt_column(encrypt_col_file):
    #返回列名列表
    column_txt_path = os.path.join(dir_path,encrypt_col_file)
    encrpyt_column_dict = {}
    encrpyt_column_ls = []
    with open(column_txt_path,'r') as r:
        for line in r:
            if line.startswith('#') or line.startswith('['):
                continue
            line_split_ls = line.split(':')
            vls = line_split_ls[-1]
            vtable = line_split_ls[0].strip().lower()
            encrpyt_column_dict[vtable] = []

            vls = vls.split(',')
            for col in vls:
                col = col.strip()
                if col:
                    encrpyt_column_dict[vtable].append(col.lower())
                    # encrpyt_column_dict[col.lower()] = True

            # line = line.strip().replace('"','').replace("'","").replace('\t',' ').replace('\n','')
            # encrpyt_column_dict[line] = True

    return encrpyt_column_dict

def progress(percent,width=50,):
    if percent > 1:  # 如果百分比大于1的话则取1
        percent = 1
    show_str = ('[%%-%ds]' % width) % (int(percent * width) * '#')
    # 一共50个#，%d 无符号整型数,-代表左对齐，不换行输出，两个% % 代表一个单纯的%，对应的是后面的s，后面为控制#号的个数
    # print(show_str)  #[###############               ] show_str ，每次都输出一次

    print('\r%s %s%%' % (show_str, int(percent * 100)), end='', file=sys.stdout, flush=True)
    # \r 代表调到行首的意思，\n为换行的意思，fiel代表输出到哪，flush=True代表无延迟，立马刷新。第二个%s是百分比

def main_run(file,file_type,encrypt_type_num,split_str,column_dict):
    print("\033[32m\r开始加密数据表文件:\033[0m", file)
    total_size = len(file_ls)
    recv_size = 0
    # print("="*50)
    readfile_path = os.path.join(dir_path, read_file_dir, file) + file_type
    writefile_path = os.path.join(dir_path, write_file_dir, file) + file_type
    with open(readfile_path,'r') as line_each:
        with open(writefile_path,'w') as write_pen:
            table_begin = 1
            encrypt_col_index_ls = []

            #为了提高一丁点速度，才写这么low
            if encrypt_type_num ==1:
                for line in line_each:
                    # print(line)
                    ##txt的列值为空时，忽略不脱敏
                    line = line.replace('" "','None').replace("' '",'None').replace('"','').replace("'","").replace('\t',' ').replace('\n','')
                    temp_ls = line.split(split_str)
                    if table_begin == 1:
                        for table_1 in temp_ls:
                            if column_dict.get(file.lower()):
                                t_ls = column_dict.get(file.lower())
                                if table_1 in t_ls:
                                    indx = temp_ls.index(table_1)
                                    encrypt_col_index_ls.append(indx)
                    else:
                        # print(encrypt_col_index_ls)
                        for ind in encrypt_col_index_ls:
                            if temp_ls[ind].strip():
                                m = hashlib.md5()
                                m.update(temp_ls[ind].encode('utf-8'))
                                temp_ls[ind] = m.hexdigest()
                    write_str = ",".join(temp_ls) + '\n'
                    # print(write_str)
                    write_pen.write(write_str)
                    table_begin += 1

            else:
                for line in line_each:
                    # print(line)
                    ##txt的列值为空时，会自动补全为None，然后脱敏
                    line = line.replace('" "','None').replace("' '",'None').replace('"','').replace("'","").replace('\t',' ').replace('\n','')
                    temp_ls = line.split(split_str)
                    if table_begin == 1:
                        for table_1 in temp_ls:
                            if column_dict.get(file.lower()):
                                t_ls = column_dict.get(file.lower())
                                if table_1 in t_ls:
                                    indx = temp_ls.index(table_1)
                                    encrypt_col_index_ls.append(indx)
                    else:
                        for ind in encrypt_col_index_ls:
                            # print('sad',temp_ls[ind].strip(),'======\n')
                            if temp_ls[ind].strip():
                                # continue
                                m = hashlib.sha256()
                                m.update(temp_ls[ind].encode('utf-8'))
                                temp_ls[ind] = m.hexdigest()
                    # print(temp_ls)
                    write_str = ",".join(temp_ls)+'\r\n'
                    write_pen.write(write_str)
                    table_begin += 1
            write_pen.close()
        line_each.close()
    print("\033[33m\r加密完成\033[0m",file)

if __name__=='__main__':

    #选择加密类型
    encrypt_type_num, split_type_num,mask_file_num = choose_type()
    #
    # #查找脱敏文件
    file_type = mask_file_ls[mask_file_num-1]
    split_str = split_type_ls[split_type_num - 1]

    ## 获取加密字段
    column_dict = get_encrypt_column(encrypt_col_file)
    # print(column_dict)
    # vv = sys.getsizeof(column_dict)

    #测试
    # file_type = '.csv'
    # split_str = split_type_ls[1]

    file_ls = init_env(read_file_dir,file_type)
    writefile_ls = init_env(write_file_dir, file_type)

    print("=="*10,'并发开始加密',"=="*10)
    file_num = 1
    # 进度条(再看吧)
    # while recv_size < total_size:  # 当接收的大小小于总大小时
    #     time.sleep(0.1)
    #     recv_size += 1  # 每次接收1024
    #     percent = recv_size / total_size  # 计算百分比 0.10027418723070897
    #     progress(percent, width=30,)  # 调用进度条函数，将百分比传进去

    start=time.time()

    ##多进程
    pool = multiprocessing.Pool(multiprocessing.cpu_count())
    result = []
    for i in file_ls:
        result.append(pool.apply_async(func=main_run, args=(i,file_type,encrypt_type_num,split_str,column_dict)))
    pool.close()
    pool.join()                 # 等待子进程结束以后再继续往下运行，通常用于进程间的同步

    end = time.time()
    all_t = end - start
    print('加密完成共耗时',all_t)


