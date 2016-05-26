

/*if not exists(select * from VsMidOper where MidOperCode ='405')
  insert into VsMidOper(MidOperCode,MidOperName,MidOperLib,MidOperEnu,MidOperDes) 
     VALUES  (405,'TVsSjpf','200003','EuVsSjpf','病案数据评分设置中间层')
     
  
if not exists(select * from VsMenu where MenuCode ='99851')
  insert into VsMenu(MenuCode,MenuICode,MenuPCode,MenuName,MenuEnd,MenuFormName,MenuLib,MenuSysCenter,MenuVisible,MenuImgIndex)
     values('99851','51','998','&E.病案数据评分设置','1','TfrmSjpf','100003','1','1',null)
     */
     
     


	
---------------------------------病案菜单栏----------------------------------------------	
if not exists (select * from VsLib where LibCode ='100025')
	insert into VsLib(LibCode,LibName,LibDesc) values('100025','BaQuality.dll','病案质控&评价')
	
	
if  exists (select * from VsMenu where MenuCode = '108')
begin
	delete from VsMenu where MenuCode = '108'
	insert into VsMenu (MenuCode,MenuICode,MenuPCode,MenuName,MenuEnd,MenuFormName,MenuLib,MenuSysCenter,MenuVisible,MenuImgIndex)
	values('108','01','','病案质控','0','','100025','1','1',null)
end
else
	insert into VsMenu (MenuCode,MenuICode,MenuPCode,MenuName,MenuEnd,MenuFormName,MenuLib,MenuSysCenter,MenuVisible,MenuImgIndex)
	values('108','01','','病案质控','0','','100025','1','1',null)

if  exists (select * from VsMenu where MenuCode = '10801')
begin
	delete from VsMenu where MenuCode = '10801'
	insert into VsMenu (MenuCode,MenuICode,MenuPCode,MenuName,MenuEnd,MenuFormName,MenuLib,MenuSysCenter,MenuVisible,MenuImgIndex)
	values('10801','01','108','&1.病案首页质控','1','TFrmBaSy','100025','1','1',null)
end
else
	insert into VsMenu (MenuCode,MenuICode,MenuPCode,MenuName,MenuEnd,MenuFormName,MenuLib,MenuSysCenter,MenuVisible,MenuImgIndex)
	values('10801','01','108','&1.病案首页质控','1','TFrmBaSy','100025','1','1',null)
	
if  exists (select * from VsMenu where MenuCode = '10802')
begin
	delete from VsMenu where MenuCode = '10802'
	insert into VsMenu (MenuCode,MenuICode,MenuPCode,MenuName,MenuEnd,MenuFormName,MenuLib,MenuSysCenter,MenuVisible,MenuImgIndex)
	values('10802','02','108','&2.病案首页质量评价','0','','100025','1','1',null)
end

else
	insert into VsMenu (MenuCode,MenuICode,MenuPCode,MenuName,MenuEnd,MenuFormName,MenuLib,MenuSysCenter,MenuVisible,MenuImgIndex)
	values('10802','02','108','&2.病案首页质量评价','0','','100025','1','1',null)

if  exists (select * from VsMenu where MenuCode = '1080201')
begin
    delete from VsMenu where MenuCode = '1080201'
	insert into VsMenu (MenuCode,MenuICode,MenuPCode,MenuName,MenuEnd,MenuFormName,MenuLib,MenuSysCenter,MenuVisible,MenuImgIndex)
	values('1080201','01','10802','&1.病案首页筛选','1','TFrmBaSx','100025','1','1',null)
end
else
	insert into VsMenu (MenuCode,MenuICode,MenuPCode,MenuName,MenuEnd,MenuFormName,MenuLib,MenuSysCenter,MenuVisible,MenuImgIndex)
	values('1080201','01','10802','&1.病案首页筛选','1','TFrmBaSx','100025','1','1',null)
	
if  exists (select * from VsMenu where MenuCode = '1080202')
begin
	delete from VsMenu where MenuCode = '1080202'
	insert into VsMenu (MenuCode,MenuICode,MenuPCode,MenuName,MenuEnd,MenuFormName,MenuLib,MenuSysCenter,MenuVisible,MenuImgIndex)
	values('1080202','02','10802','&2.病案首页质量评价','1','TFrmBaPJ','100025','1','1',null)
end
else
	insert into VsMenu (MenuCode,MenuICode,MenuPCode,MenuName,MenuEnd,MenuFormName,MenuLib,MenuSysCenter,MenuVisible,MenuImgIndex)
	values('1080202','02','10802','&2.病案首页质量评价','1','TFrmBaPJ','100025','1','1',null)


select * from VsMenu where left(MenuCode,3)=108

---------------------------病案质控中间业务表----------------------------

if Not exists (select * from VsLib where LibCode ='200025')
begin
	delete from VsLib where LibCode='200025'
	insert into VsLib(LibCode,LibName,LibDesc) values('200025','M_BaQuality.dll','病案质控&评价')
end
else
	insert into VsLib(LibCode,LibName,LibDesc) values('200025','M_BaQuality.dll','病案质控&评价')
	
	
	
if  exists(select * from VsMidOper where MidOperCode ='402')
begin
	delete from VsMidOper where MidOperCode = '402'
	insert into VsMidOper(MidOperCode,MidOperName,MidOperLib,MidOperEnu,MidOperDes) 
     VALUES  (402,'TVsBaSyZk','200025','EuVsBaSy','病案首页质控中间层')	
end
else
  insert into VsMidOper(MidOperCode,MidOperName,MidOperLib,MidOperEnu,MidOperDes) 
     VALUES  (402,'TVsBaSyZk','200025','EuVsBaSy','病案首页质控中间层')	
 
 if  exists(select * from VsMidOper where MidOperCode ='403')
begin
	delete from VsMidOper where MidOperCode = '403'
	insert into VsMidOper(MidOperCode,MidOperName,MidOperLib,MidOperEnu,MidOperDes) 
     VALUES  (403,'TVsZkDetail','200025','EuVsZkDetail','病案首页质控详细信息中间层')	
end
else
  insert into VsMidOper(MidOperCode,MidOperName,MidOperLib,MidOperEnu,MidOperDes) 
     VALUES  (403,'TVsZkDetail','200025','EuVsZkDetail','病案首页质控详细信息中间层')	    
     
     
  if  exists(select * from VsMidOper where MidOperCode ='404')
begin
	delete from VsMidOper where MidOperCode = '404'
	insert into VsMidOper(MidOperCode,MidOperName,MidOperLib,MidOperEnu,MidOperDes) 
     VALUES  (404,'TVsBaSx','200025','EuVsBaSx','病案筛选中间层')	
end
else
  insert into VsMidOper(MidOperCode,MidOperName,MidOperLib,MidOperEnu,MidOperDes) 
     VALUES  (404,'TVsBaSx','200025','EuVsBaSx','病案筛选中间层')	    
     
 if  exists(select * from VsMidOper where MidOperCode ='406')
begin
	delete from VsMidOper where MidOperCode = '406'
	insert into VsMidOper(MidOperCode,MidOperName,MidOperLib,MidOperEnu,MidOperDes) 
     VALUES  (407,'TVsBaZmPj','200025','EuVsBaZmPj','病案终末评价中间层')	
end
else
  insert into VsMidOper(MidOperCode,MidOperName,MidOperLib,MidOperEnu,MidOperDes) 
     VALUES  (407,'TVsBaZmPj','200025','EuVsBaZmPj','病案终末评价中间层')	    
     
select * from VsMidOper where MidOperLib=200025
     
Select * from VsLib