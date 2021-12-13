import fitz
import os
# from PIL import Image as pilImage


#目录

#
# class ProcessPDF:
#     def __init__(self, pdf_path, pdf_name, pdf_out_path, pdf_out_name, seal, clarity=1.34):
#         self.pdf_path = pdf_path
#         self.pdf_name = pdf_name
#         self.pdf_out_path = pdf_out_path
#         self.pdf_out_name = pdf_out_name
#         self.clarity = clarity
#         self.pdf = os.path.join(pdf_path, pdf_name)
#         self.pdf_out = os.path.join(pdf_out_path, pdf_out_name)
#         self.seal = seal
#
#     def merge_img(self):
#         """
#         图片叠加
#         """
#         img1 = pilImage.open(self.img_path)  # PDF图片
#         seal_img = pilImage.open(self.seal)  # 公司印章图片
#         layer = pilImage.new('RGBA', img1.size, (0, 0, 0, 0))
#         layer.paste(seal_img, (img1.size[0] - 450, img1.size[1] - 220))
#         out = pilImage.composite(layer, img1, layer)
#         self.merge_path = os.path.join(self.pdf_path, 'out.png')
#         out.save(self.merge_path)
#
#     def pdf_to_img(self):
#         """
#         PDF转化为图片
#         """
#         doc = fitz.open(self.pdf)
#         for pg in range(doc.pageCount):
#             page = doc[pg]
#             rotate = int(0)
#             zoom_x = self.clarity
#             zoom_y = self.clarity
#             trans = fitz.Matrix(zoom_x, zoom_y).preRotate(rotate)
#             pm = page.getPixmap(matrix=trans, alpha=False)
#             path = os.path.join(dir_path, '20210118/{}.png'.format(str(pg)))
#             pm.writePNG(path)
#         self.img_path = os.path.join(self.pdf_path, '{}.png'.format(0))
#
#     def img_to_pdf(self):
#         """
#         图片转化为PDF
#         """
#         doc = fitz.open()
#         imgdoc = fitz.open(self.merge_path)
#         pdfbytes = imgdoc.convertToPDF()  # 使用图片创建单页的 PDF
#         imgpdf = fitz.open("pdf", pdfbytes)
#         doc.insertPDF(imgpdf)  # 将当前页插入文档
#         doc.save(self.pdf_out)  # 保存pdf文件
#         doc.close()
#
#     def out(self):
#         self.pdf_to_img()  # PDF转化为图片
#         self.merge_img()  # 合并图片
#         self.img_to_pdf()  # 图片转化为PDF
#
#
# def run():
#     """
#     pdf_path: PDF文件的路径
#     pdf_name：PDF文件名
#     pdf_out_path：PDF输出路径
#     pdf_out_name：PDF输出文件名
#     seal: 公章路径
#     clarity：可选参数，可以调整pdf清晰度，默认1.34，数值越大，清晰度越高
#     """
#     pdf_path = os.path.join(dir_path, '20210118/')
#     pdf_name = '4500756617采购定单.pdf'
#     pdf_name2 = '广州长隆集团有限公司_采购订单_4500735045.pdf'
#
#     pdf_out_path = os.path.join(dir_path, '20210118/')
#     pdf_out_name = 'test.pdf'
#     seal = os.path.join(dir_path, '20210118/111613299233_.pic_hd.jpg')
#     pdf = ProcessPDF(pdf_path=pdf_path,
#                      pdf_name=pdf_name,
#                      pdf_out_path=pdf_out_path,
#                      pdf_out_name=pdf_out_name,
#                      seal=seal,
#                      clarity=1.34)
#     pdf.out()
#
# run()
#
#
#
#
#
#

# md5
# m = hashlib.md5()
# m.update(b"Hello")
# m.update(bytes('Hello',encoding='utf-8'))
# m.update(bytes('d栋sa发生洛克菲勒简单暗示法阿福空间sad大师里看见；撒发放萨福卅粉红色的看法挥洒的口感还是打了个好老师的口感好好的颠覆活动是否还得送话费23423432',encoding='utf-8'))
#
# v =m.hexdigest()
# print(v)
# # m.update(b"Hello")
# m.update(bytes('d栋sa发生洛克菲勒简单暗示法阿福空间sad大师里看见；撒发放萨福卅粉红色的看法挥洒的口感还是打了个好老师的口感好好的颠覆活动是否还得送话费23423432',encoding='utf-8'))
#
# print(m.hexdigest())
# v = hashlib.md5()
# v.update(bytes('d栋sa发生洛克菲勒简单暗示法阿福空间sad大师里看见；撒发放萨福卅粉红色的看法挥洒的口感还是打了个好老师的口感好好的颠覆活动是否还得送话费23423432',encoding='utf-8'))
#
# # v.update(bytes('Hello',encoding='utf-8'))
# print(v.hexdigest())

# v =1
# with open('/Users/mac/PycharmProjects/PG_report/before_file/test5.txt','w') as f:
#     while v < 100000:
#         random_str = str(random.randint(1,100000))
#         random_str2 = str(random.randint(1,100000))
#         line = str(v)+' '+ str(v) +'红烧豆腐'+random_str+' '+'440829199203932'+random_str2+' '+'lsajflasll110'+'\r\n'
#         f.write(line)
#         v+=1


# v = 1
# with open('/Users/mac/PycharmProjects/PG_report/before_file/test8.txt', 'w') as f:
#     while v < 300000:
#         random_str = str(random.randint(1, 300000))
#         random_str2 = str(random.randint(1, 300000))
#         line = str(v) + ' ' + str(
#             v) + '红烧豆腐' + random_str + ' ' + '440829199203932' + random_str2 + ' ' + 'lsajflasll110' + '\r\n'
#         f.write(line)
#         v += 1

##ces  dev modify
#new
##dev 上加东西









