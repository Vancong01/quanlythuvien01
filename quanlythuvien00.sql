use quanlythuvien00;


drop table sach,theloai,chitietdanhsachmuon,danhsachmuon,thesinhvien;

create table theloai
(
matheloai char(20) not null,
tentheloai char(100),
constraint pk_matheloai primary key(matheloai)
);

create table sach
(
masach char(20) not null,
matheloai char(20) not null,
tensach char(255) not null,
nhaxuatban char(100) not null,
tacgia char(100) not null,
namxuatban date,
solantaiban int,
giathanh int,
hinhanh char(100),
constraint pk_masach primary key(masach),
constraint fk_matheloai foreign key(matheloai) references theloai(matheloai)
);

create table thesinhvien
(
mathe char(20) not null,
tensinhvien char(100) not null,
ngaysinh date,
diachi char(100),
email char(100),
sodienthoai char(15),
hinhanh char(100),
constraint pk_mathe primary key(mathe)
);

create table danhsachmuon
(
mamuon char(20) not null,
mathe char(20) not null,
ngaymuon date,
ngaytra date,
constraint pk_mamuon primary key(mamuon),
constraint fk_mathe foreign key(mathe) references thesinhvien(mathe)
);

create table chitietdanhsachmuon
(
mamuon char(20) not null,
masach char(20) not null,
soluongsach int,
constraint pk_CTDSM primary key(masach,mamuon),
constraint fk_mamuon foreign key(mamuon) references danhsachmuon(mamuon),
constraint fk_masach foreign key(masach) references sach(masach)
);



/*chèn dữ liệu*/

insert into theloai(matheloai, tentheloai)
values('theloai1','sách tin học');
insert into theloai(matheloai, tentheloai)
values('theloai2','sách triết học');
insert into theloai(matheloai, tentheloai)
values('theloai3','sách kế toán');
insert into theloai(matheloai, tentheloai)
values('theloai4','sách xây dựng');
insert into theloai(matheloai, tentheloai)
values('theloai5','sách tiếng anh');

insert into sach(masach, matheloai, tensach, nhaxuatban, tacgia, namxuatban, solantaiban, giathanh, hinhanh)
values('sach1','theloai1','ngôn ngữ java','nguyễn an','tacgia1','1977-01-02',1,30000,'anh1');
insert into sach(masach, matheloai, tensach, nhaxuatban, tacgia, namxuatban, solantaiban, giathanh, hinhanh)
values('sach2','theloai1','ngôn ngữ php','mai thu','tacgia2','1977-03-04',2,40000,'anh2');
insert into sach(masach, matheloai, tensach, nhaxuatban, tacgia, namxuatban, solantaiban, giathanh, hinhanh)
values('sach3','theloai2','triết học','an tiến','tacgia3','1979-08-07',20,50000,'anh3');
insert into sach(masach, matheloai, tensach, nhaxuatban, tacgia, namxuatban, solantaiban, giathanh, hinhanh)
values('sach4','theloai2','mác -lê nin','hoàng thủy','tacgia4','1999-12-01',3,90000,'anh4');
insert into sach(masach, matheloai, tensach, nhaxuatban, tacgia, namxuatban, solantaiban, giathanh, hinhanh)
values('sach5','theloai3','doanh thu doanh nghiệp','lung linh','tacgia5','1992-10-10',10,100000,'anh5');


insert into thesinhvien(mathe, tensinhvien, ngaysinh, diachi, email, sodienthoai, hinhanh)
values('the1','tạ văn công','1994-11-08','phúc thọ, hà nội','tavancong1994@gmail.com','0942199723','hình ảnh của công');
insert into thesinhvien(mathe, tensinhvien, ngaysinh, diachi, email, sodienthoai, hinhanh)
values('the2','nguyên đạt','1995-01-01','nam từ liêm, hà nội','nguyendat@gmail.com','0347937483','hình ảnh của đạt');
insert into thesinhvien(mathe, tensinhvien, ngaysinh, diachi, email, sodienthoai, hinhanh)
values('the3','Tố hưu','1992-03-02','cầu giấy, hà nội','tohuu@gmail.com','012345678','hình ảnh của hưu');
insert into thesinhvien(mathe, tensinhvien, ngaysinh, diachi, email, sodienthoai, hinhanh)
values('the4','thị huyền','1990-04-04','thanh xuân, hà nội','thihuyen@gmail.com','098765432','hình ảnh của huyền');
insert into thesinhvien(mathe, tensinhvien, ngaysinh, diachi, email, sodienthoai, hinhanh)
values('the5','trang mun','1997-06-06','minh khai, hà nội','trangmun@gmail.com','022334455','hình ảnh của trang');
  
insert into danhsachmuon(mamuon, mathe, ngaymuon, ngaytra)
values('muon1','the1','2019-11-01','2019-12-01');
insert into danhsachmuon(mamuon, mathe, ngaymuon, ngaytra)
values('muon2','the1','2019-11-02','2019-12-02');
insert into danhsachmuon(mamuon, mathe, ngaymuon, ngaytra)
values('muon3','the2','2019-11-03','2019-12-03');
insert into danhsachmuon(mamuon, mathe, ngaymuon, ngaytra)
values('muon4','the2','2019-11-09','2019-11-30');
insert into danhsachmuon(mamuon, mathe, ngaymuon, ngaytra)
values('muon5','the3','2019-11-17','2019-11-20');
insert into danhsachmuon(mamuon, mathe, ngaymuon, ngaytra)
values('muon6','the4','2019-10-19','2019-11-11');

insert into chitietdanhsachmuon(mamuon, masach, soluongsach)
values('muon1','sach1',1);
insert into chitietdanhsachmuon(mamuon, masach, soluongsach)
values('muon1','sach2',2);
insert into chitietdanhsachmuon(mamuon, masach, soluongsach)
values('muon1','sach3',3);
insert into chitietdanhsachmuon(mamuon, masach, soluongsach)
values('muon2','sach1',4);
insert into chitietdanhsachmuon(mamuon, masach, soluongsach)
values('muon2','sach4',5);
insert into chitietdanhsachmuon(mamuon, masach, soluongsach)
values('muon2','sach5',6);
insert into chitietdanhsachmuon(mamuon, masach, soluongsach)
values('muon3','sach1',7);
insert into chitietdanhsachmuon(mamuon, masach, soluongsach)
values('muon3','sach2',8);
insert into chitietdanhsachmuon(mamuon, masach, soluongsach)
values('muon3','sach3',9);
insert into chitietdanhsachmuon(mamuon, masach, soluongsach)
values('muon4','sach2',10);
insert into chitietdanhsachmuon(mamuon, masach, soluongsach)
values('muon5','sach1',1);
