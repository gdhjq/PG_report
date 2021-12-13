import platform, os

system = platform.system()

front_str = """<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" >
<html lang="en"><head>
<meta content="text/html" charset="%s" />
<title>My page</title>
</head>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<style type="text/css">
body { 
    margin-left: 20px; 
    } 
.middle {
    # width:600px;
    # margin: 0 auto;
    text-align: center;
}
h3 {
color:#003C9D;
}
th {
background:#FFFFBB;
font-size:8px;
color:#505050;
}
# th.click{
# text-decoration:underline
# }
th.head {
font-size:12px;
color:#003C9D;
}
table.gridtable {
    font-family: verdana,arial,sans-serif;
    font-size:10px;
    margin—left:50px;
    border-width: 1px;
    border-color: #666666;
    border-collapse: collapse;
}
table.gridtable td {
    border-width: 1px;
    padding: 8px;
    width:800px;
    border-style: solid;
    border-color: #666666;
    background:#dcddc0;
}
</style>
<body>\n"""

last_str = """
<button id="test" style="position:fixed;right:0;bottom:0;">回到顶部</button>
<script>
test.onclick = function(){
scrollTo(0,0);
}
</script>
<script type="text/javascript" src="../template/js/jquery-1.8.0.min.js"></script>
<script>
 function scoll(e){

     var l_div = '#' +$(e).attr('vals')
    $("html, body").animate({
      scrollTop: $(l_div).offset().top }, {duration: 200,easing: "swing"});
    return false;
  }
</script>
\n</body>\n</html>
"""
print('当前机器os系统：', system)
front_str = front_str % ('GBK') if system == 'Windows' else front_str % ('UTF-8')
# front_str = front_str%('UTF-8')

table_id = {
    '主机名': 'host',
    '以太链路信息': 'load_info',
    'IP地址信息': 'ip_info',
    '路由信息': 'route_info',
    '操作系统内核': 'os_core',
    '内存(MB)': 'mem_info',
    '(MB)': 'mem_info',
    'CPU': 'CPU',
    '块设备': 'block_device',
    '拓扑': 'tuopu',
    '进程树': 'proce_tree',
    '操作系统配置文件 静态配置信息': 'sys_silent_info',
    '/etc/sysctl.conf ': 'sys_conf',
    '/etc/security/limits.conf ': 'limit_conf',
    '/etc/security/limits.conf': 'limit_conf',
    '/etc/security/limits.d/*.conf ': 'limitsd',
    '/etc/sysconfig/iptables ': 'iptables',
    '/etc/sysconfig/iptables': 'iptables',
    '/etc/sysconfig/iptables* ': 'iptables',
    '/etc/fstab ': 'fstab',
    '/etc/fstab': 'fstab',
    '/etc/rc.local ': 'rclocal',
    '/etc/rc.local': 'rclocal',
    '/etc/selinux/config ': 'selinuxcon',
    '/etc/selinux/config': 'selinuxcon',
    '/boot/grub/grub.conf ': 'grub',
    '/boot/grub/grub.conf': 'grub',
    '/var/spool/cron 用户cron配置 ': 'cron',
    '/var/spool/cron 用户cron配置': 'cron',
    'chkconfig --list ': 'chkconfig',
    'chkconfig --list': 'chkconfig',
    'iptables -L -v -n -t filter 动态配置信息': 'filter',
    'iptables -L -v -n -t nat 动态配置信息': 'nat',
    'iptables -L -v -n -t mangle 动态配置信息': 'mangle',
    'iptables -L -v -n -t raw 动态配置信息': 'raw',
    'sysctl -a 动态配置信息': 'sysctl',
    'mount 动态配置信息': 'mount',
    'selinux 动态配置信息': 'selinux_info',
    '建议禁用Transparent Huge Pages (THP)': 'bank_thp',
    '硬盘SMART信息(需要root)': 'smart',
    '/var/log/boot.log ': 'bootlog',
    '/var/log/boot.log': 'bootlog',
    '/var/log/dmesg ': 'dmesg',
    '/var/log/dmesg': 'dmesg',
    '/var/log/messages(需要root) ': 'messages_root',
    '/var/log/messages(需要root)': 'messages_root',
    '/var/log/secure(需要root) ': 'secure_root',
    '/var/log/secure(需要root)': 'secure_root',
    '/var/log/cron(需要root) ': 'cron_need',
    '/var/log/cron(需要root)': 'cron_need',
    '/var/log/wtmp ': 'wtmplg',
    '/var/log/wtmp': 'wtmplg',
    '数据库版本': 'db_version',

    '用户已安装的插件版本': 'plugin_version',
    '用户使用了多少种数据类型': 'data_type',
    '用户创建了多少对象': 'data_obj',
    '用户对象占用空间的柱状图': 'use_pic',
    '当前用户的操作系统定时任务': 'sys_cron',
    '获取recovery.done md5值': 'recovery_md5',
    '获取recovery.done配置': 'recovery_done',
    '获取pg_hba.conf md5值': 'pg_hba_md5',
    '获取pg_hba.conf配置': 'pg_hba',
    '获取postgresql.conf md5值': 'postgresqlmd5',
    '获取postgresql.conf配置': 'postgresql',
    '用户或数据库级别定制参数': 'design_config',
    '获取错误日志信息': 'error_log',
    '获取连接请求情况': 'error_connct',
    '获取认证失败情况': 'error_auth',
    '慢查询统计': 'slow_log',
    '慢查询分布头10条的执行时间, ms': 'top10_slowselect',
    '慢查询分布尾10条的执行时间, ms': 'tail10_slowselect',
    'auto_explain 分析统计': 'auto_explain',
    '输出文件系统剩余空间': 'file_last_time',
    '输出表空间对应目录': 'tablesp_dir',
    '输出表空间使用情况': 'tablesp_use',
    '输出数据库使用情况': 'db_use',
    'TOP 10 size对象': 'top_10',
    '当前活跃度': 'active_val',
    '总剩余连接数': 'last_connect_num',
    '用户连接数限制': 'user_connect_limit',
    '数据库连接限制': 'db_connect_limit',
    'TOP 5 SQL ': 'total_cpu_time',
    '索引数超过4并且SIZE大于10MB的表': 'index_10mb',
    '上次巡检以来未使用或使用较少的索引': 'index_use_less',
    '数据库统计信息, 回滚比例, 命中比例, 数据块读写时间, 死锁, 复制冲突': 'complex',
    '检查点, bgwriter 统计信息': 'bgwriter',
    '表引膨胀检查': 'table_bom',
    '索引膨胀检查': 'index_bom',
    '垃圾数据': 'rubbish_data',
    '未引用的大对象': 'nouse_obj',
    '数据库年龄': 'db_age',
    '表年龄': 'table_age',
    '长事务, 2PC': 'long_con',
    '是否开启归档, 自动垃圾回收': 'auto_back_rubbish',
    '归档统计信息': 'archive_info',
    '流复制统计信息': 'cream_info',
    '流复制插槽': 'cream_cha',
    '密码泄露检查': 'password_check',
    '简单密码检查': 'pwd_check',
    '用户密码到期时间': 'user_datetime',
    'SQL注入风险分析': 'sql_fisk',
    '普通用户对象上的规则安全检查': 'normal_obj',
    '普通用户自定义函数安全检查': 'normal_func',
    'unlogged table 和 哈希索引': 'unlogged',
    '剩余可使用次数不足1000万次的序列检查': 'sequense_check',
    '触发器, 事件触发器': 'triger',
    '检查是否使用了a-z 0-9 _ 以外的字母作为对象名': 'out_obj_name',
    '锁等待': 'lock_wait',
    '继承关系检查': 'inherit_replation',
    '重置统计信息': 'reback_info',
    '重置pg_stat_statements统计信息': 'pg_stat_statements',
    '附件1 ': 'addtion',
    '00时00分01秒    call/s retrans/s    read/s   write/s  access/s  getatt/s': 'iowriteandread',
    '00时00分02秒    call/s retrans/s    read/s   write/s  access/s  getatt/s': 'iowriteandread',
    '00时00分01秒 dentunusd   file-sz  inode-sz  super-sz %super-sz  dquot-sz %dquot-sz  rtsig-sz %rtsig-sz': 'iowriteandread',
    '00时00分01秒       DEV       tps  rd_sec/s  wr_sec/s  avgrq-sz  avgqu-sz     await     svctm     %util': 'iowriteandread',
}
in_front = {'操作系统配置文件 静态配置信息': '操作系统配置文件、静态配置信息',
            '/etc/sysctl.conf': '操作系统配置文件、静态配置信息',
            '/etc/security/limits.conf': '操作系统配置文件、静态配置信息',
            '/etc/security/limits.d/*.conf': '操作系统配置文件、静态配置信息',
            'selinux 动态配置信息': 'selinux 动态配置信息',
            '建议禁用Transparent Huge Pages (THP)': 'Transparent Huge Page',
            '获取postgresql.conf配置': '配置文件检查',
            '用户或数据库级别定制参数': '用户或数据库级别定制参数',
            '获取错误日志信息': '数据库错误日志分析',
            '慢查询统计': '数据库慢SQL日志分析',
            '慢查询分布头10条的执行时间, ms': '数据库慢SQL日志分析',
            '慢查询分布尾10条的执行时间, ms': '数据库慢SQL日志分析',
            '输出文件系统剩余空间': '数据库空间使用分析',
            '输出表空间对应目录': '数据库空间使用分析',
            }

title_sort = ['操作系统信息', '数据库信息', '数据库错误日志分析', '数据库慢SQL日志分析',
              '数据库连接分析', '数据库性能分析', '数据库垃圾分析', '数据库年龄分析', '数据库XLOG, 流复制状态分析',
              '数据库安全或潜在风险分析', '重置统计信息', '附加信息']

desgin_colum = 5

dir_path = os.path.dirname(os.path.realpath(__file__))

sql_list = []


def init_env(sql_list):
    '''初始化找文件和路径'''
    ###根据sql类型找文件
    for root, dirs, files in os.walk(dir_path):
        for file in files:
            filename, type = os.path.splitext(file)
            if type == '.sql':
                sql_list.append(filename)

    ###check transfile dir path is or not
    trans_dir = os.path.join(dir_path, 'transfile')
    if not os.path.exists(trans_dir):
        os.mkdir(trans_dir)
    return trans_dir


def prepare_dict(td_str):
    ''''根据原来生成的表格字符串生成两个dict，并返回'''
    each_row = td_str.split('\n', 1)
    # 拿到表格第一行的文字
    key_chose = each_row[0].split(':', 1)[0].replace('----->>>---->>>  ', '')
    # 表格内容
    # val_chose = each_row[-1]
    # 拼html字符串
    if table_id.get(key_chose):
        h_id = table_id.get(key_chose)
        table_html = '<table class="gridtable" id="' + h_id + '"><td>%s</td></table><br>'
    else:
        table_html = '<table class="gridtable"><td>%s</td></table><br>'
    table_str = table_html % td_str

    # 生成front_dict和later_dict 和 目录dict
    if in_front.get(key_chose):
        front_head = in_front.get(key_chose)
        if front_dict.get(front_head):
            front_dict[front_head].append(table_str)
            mulu_dict['front'][front_head].append(key_chose)
        else:
            front_dict[front_head] = [table_str]
            mulu_dict['front'][front_head] = [key_chose]
    else:
        if later_dict.get(title):
            later_dict[title].append(table_str)
            mulu_dict['later'][title].append(key_chose)
        else:
            later_dict[title] = [table_str]
            mulu_dict['later'][title] = [key_chose]
    # return front_dict,later_dict


def get_row(num):
    '''根据数量生成表格行数'''
    oldrow, mor = divmod(num, desgin_colum)
    row = oldrow if mor == 0 else oldrow + 1
    return row


def create_dir_table(dic, tbody):
    '''生成目录表格'''
    for titl, keys in dic['later'].items():
        keys_len = len(keys)
        rows = get_row(keys_len)
        idex = 0
        # val = ''
        td_element = '<th ></th>'
        td_element2 = '<th onclick="scoll(this)" vals=%s>%s</th>'
        for level in range(rows):
            table_str = '<tr>'
            for each_th_index in range(desgin_colum):
                # 第一行
                if level == 0:
                    if each_th_index == 0:
                        val = '<th rowspan="%s" class="head">%s</th>' % (rows, titl)
                    else:
                        if idex + 1 == desgin_colum:
                            if idex <= keys_len:
                                one_row_last_val = keys[idex - 1]
                                id_name = table_id.get(one_row_last_val.strip())
                                if id_name:
                                    table_str += td_element2 % (id_name, one_row_last_val)
                                    idex += 1
                                else:
                                    continue

                            else:
                                table_str += td_element
                        if idex <= keys_len:
                            v = keys[idex - 1]
                            id_name = table_id.get(v.strip())
                            if id_name:
                                val = td_element2 % (id_name, v)
                            else:
                                val = td_element

                        else:
                            val = td_element
                else:
                    if idex > keys_len:
                        val = td_element
                    else:
                        v = keys[idex - 1]
                        id_name = table_id.get(v.strip())
                        if id_name:
                            val = td_element2 % (id_name, v)
                        else:
                            val = td_element
                table_str += val
                idex += 1
            table_str += '</tr>'
            tbody += table_str
    return tbody


def write_body(vv, body_dict):
    '''根据dict里面的内容用vv句柄写'''
    for k, ls in body_dict.items():
        h1_str = '<h3 class="title_h1">%s</h2>' % k
        vv.write(h1_str)
        for tab in ls:
            vv.write(tab)


if __name__ == '__main__':

    trans_dir = init_env(sql_list)
    for file_name in sql_list:
        open_file = file_name + '.sql'
        write_file_name = file_name + '.html'
        write_file = os.path.join(trans_dir, write_file_name)
        front_dict = {}
        later_dict = {}
        mulu_dict = {'front': {}, 'later': {}}
        print("开始解析文件:", open_file)
        encod = 'utf-8'
        try:
            with open(open_file, 'rb') as f:
                cc = f.read().decode('gb18030')
                print('该文件gb18030解析')
                encod = 'gb18030'
                f.close()
        except Exception as e:
            try:
                with open(open_file, 'rb') as f:
                    cc = f.read().decode('utf-8')
                    print('该文件utf8解析')
            except Exception as e:
                with open(open_file, 'rb') as f:
                    print('该sql文件编码非utf-8或gbk，可能导致失败')
                    import time

                    time.sleep(3)
        f.close()

        with open(write_file, 'w') as vv:
            vv.write(front_str)
            with open(open_file, 'r', encoding=encod) as f:
                begin = False  # 为了去掉开头几行
                no_write = False  # 超过指定行数就为真，根据该值判断要不要写
                level_one = level_two = level_three = False  # 判断层数
                rows_len = 0
                td_str = ''
                title = ''

                for line in f.readlines():
                    if line == '\n' or line == '\r\n':
                        if no_write:
                            no_write = False
                            rows_len = 0
                            td_str = ''
                        continue

                    elif line.startswith('| '):
                        level_one = True
                        level_two = level_three = False

                    elif line.startswith('----->>>---->>>'):
                        if line == '----->>>---->>>' + '\n':
                            continue
                        level_one = level_three = False
                        level_two = True

                    else:
                        level_one = level_two = False
                        level_three = True

                    ##写标题头
                    if level_one:

                        # 上一层最后的小表格
                        if td_str:
                            prepare_dict(td_str)
                            # print(title, '---', key_chose)
                            # vv.write(table_str)
                            ##到了这一步就相当于碰到大标题，跳出小表格，刷新参数
                            td_str = ''
                            rows_len = 0
                            no_write = False

                        line = line.replace('|', '', 2).replace('\n', '')
                        title = line.strip(' ')
                        # vv.write(h1_str+'\n')

                        if not begin:
                            begin = True

                    if not begin:
                        continue

                    ##二级标题+文档
                    if level_two:
                        if not no_write:
                            if td_str:
                                prepare_dict(td_str)
                                # vv.write(table_str)
                        if rows_len == 0:
                            rows_len += 1
                        else:
                            td_str = ''
                            if rows_len >= 5000:
                                no_write = True
                            else:
                                rows_len += 1
                        td_str += line + '<br>'

                    if level_three:
                        if line.startswith('|++'):
                            continue
                        if rows_len >= 5000:
                            td_str = ''
                            rows_len += 1
                            no_write = True
                            continue

                        else:
                            if no_write:
                                continue
                            no_write = False
                            td_str += line + '<br>'
                            rows_len += 1

                # 生成目录
                vv.write('<h2 class="middle">----- PostgreSQL 巡检报告 -----</p>')
                later_str = '<table border="1" id="later_table" class="gridtable">'
                tbody_str = '<tbody>'
                tbody = create_dir_table(mulu_dict, tbody_str)

                later_str += tbody + '</table>'
                vv.write(later_str)
                vv.write('<br></br></br></br></br>')

                # 生成筛选出来的第一部分
                write_body(vv, front_dict)
                p_html = '<p style="color:red;">-------------------------------------------- 第二部分------------------------------------------------</p></br></br></br>'
                vv.write(p_html)

                # 生成剩余出来的第二部分
                write_body(vv, later_dict)
                vv.write(last_str)
                f.close()
            vv.close()


