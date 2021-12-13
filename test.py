#coding: utf8
import hashlib
import datetime,time
import http.client

import sys
from Crypto.Cipher import AES
from binascii import b2a_hex, a2b_hex
#windows下导包
# from Cryptodome.Cipher import AES
# linux下导包
from Crypto.Cipher import AES

from binascii import b2a_hex, a2b_hex
company_name = 'shiping'


def get_webservertime():
    time_conn=http.client.HTTPConnection('www.baidu.com')
    time_conn.request("GET", "/")
    r=time_conn.getresponse()
    #r.getheaders() #获取所有的http头
    ts=  r.getheader('date') #获取http头date部分
    print(ts)
    #将GMT时间转换成北京时间
    ltime= time.strptime(ts[5:25], "%d %b %Y %H:%M:%S")
    # print(ltime)
    ttime=time.localtime(time.mktime(ltime)+8*60*60)
    # print(ttime)
    dat="%u%02u%02u"%(ttime.tm_year,ttime.tm_mon,ttime.tm_mday)
    tm="%02u:%02u:%02u"%(ttime.tm_hour,ttime.tm_min,ttime.tm_sec)
    currenttime=dat

    date_list = time.strptime(dat, "%Y%m%d")
    y, m, d = date_list[:3]
    delta = datetime.timedelta(days=1)
    date_result = datetime.datetime(y, m, d) + delta
    tomorrow_day = date_result.strftime("%Y-%m-%d")
    print(date_result)
    # if  date_result >

    y,m,d = time.strptime(tomorrow_day,"%Y-%m-%d")[:3]
    write_date_format2 = str(y)+'年' +str(m)+'月'+str(d)+'日'
    return currenttime,tomorrow_day,write_date_format2

class prpcrypt():
    def __init__(self, key):
        self.key = self.handle_length(key)
        self.mode = AES.MODE_CBC

    def handle_length(self, text):
        # 这里密钥key 长度必须为16（AES-128）、24（AES-192）、或32（AES-256）Bytes 长度.目前AES-128足够用
        length = 16
        count = len(text)
        if (count % length != 0):
            add = length - (count % length)
        else:
            add = 0
        text = text + ('\0' * add)
        return text.encode()

    # 加密函数【加密文本text必须为16的倍数！】，如果text不是16的倍数,那就补足16位
    def encrypt(self, text):
        text = self.handle_length(text)
        cryptor = AES.new(self.key, self.mode, self.key)
        ciphertext = cryptor.encrypt(text)
        # 因为AES加密时候得到的字符串不一定是ascii字符集的，输出到终端或者保存时候可能存在问题
        # 所以这里统一把加密后的字符串转化为16进制字符串
        return b2a_hex(ciphertext).decode()

    # 解密函数
    def decrypt(self, text):
        cryptor = AES.new(self.key, self.mode, self.key)
        plain_text = cryptor.decrypt(a2b_hex(text))
        # 去掉加密时填补的空格，使用strip()
        return plain_text.decode().rstrip('\0')


if __name__ == '__main__':
    pc = prpcrypt(company_name)  # 初始化密钥,小于等于16位
    e = pc.encrypt("20200629")
    d = pc.decrypt(e)
    print(e,d)





