USE [batj2005]
GO
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'PBAzmpj' 
)
   DROP PROCEDURE dbo.PBAzmpj
GO

CREATE PROCEDURE dbo.PBAzmpj
	@CH0A00 varchar(20)
WITH RECOMPILE	 
AS
BEGIN
  DECLARE @code varchar(15)      ---项目序号
  DECLARE @codename varchar(100)  ---项目内容
  DECLARE @uppercode varchar(15)  ---上级项目序号 
  DECLARE @num int                ---数据集行数
  DECLARE @FZ int                  ---项目分值
  DECLARE @xmfz varchar(10)        
  
  ----评价项目整合表
  CREATE TABLE #ZLPJTmp(
	FcodeName varchar(100),
	ScodeName varchar(100),
	TcodeName varchar(100),
	Fcode varchar(15),
	Scode varchar(15),
	Tcode varchar(15),
	Score numeric(5,2) default 0,
	Remark varchar(100)
  )
  
  DECLARE cur_level cursor LOCAL FOR
    SELECT code,codename,uppercode,xmfz from Vszmzlpf where isTy =0 order by uppercode
  Open cur_level 
  FETCH NEXT FROM cur_level INTO @code,@codename,@uppercode,@FZ
  WHILE @@FETCH_STATUS = 0
  BEGIN
    if @uppercode ='' 
    begin
    set @xmfz ='('+CONVERT(varchar(5),@FZ)+'分)'
     ---------主项目------------
      select @num=COUNT(*) from #ZLPJTmp where Fcode=@code 
      if @num = 0 
      ----------不存在则插入------
       insert into #ZLPJTmp (FcodeName,Fcode) values(@codename+@xmfz,@code)
    end
    else
    begin
      ----------二级项目-------
       select @num=COUNT(*) from #ZLPJTmp where Fcode=@uppercode
       if @num >0 
       begin
			if exists ( select * from #ZLPJTmp where Fcode=@uppercode and Scode is null)
			 update #ZLPJTmp set ScodeName = @codename+@xmfz,Scode=@code where Fcode=@uppercode and Scode is null
			else
			   insert into #ZLPJTmp(FcodeName,ScodeName,Fcode,Scode)  
				select top 1 Fcodename,@codename+@xmfz,Fcode,@code from #ZLPJTmp where Fcode=@uppercode 
       end 
       else
       begin
       -----------三级项目
			select @num=COUNT(*) from #ZLPJTmp where Scode=@uppercode
			if @num>0
			begin
				 if exists (select * from #ZLPJTmp where Scode=@uppercode and Tcode is  null)
					update #ZLPJTmp set TcodeName = @codename+@xmfz,Tcode=@code where Scode=@uppercode
				else
				  insert into #ZLPJTmp(FcodeName,ScodeName,TcodeName,Fcode,Scode,Tcode)  
					 select top 1 Fcodename,ScodeName,@codename+@xmfz,Fcode,Scode,@code from #ZLPJTmp where Scode=@uppercode
				  
			end
			  
       end
    end
    
    FETCH NEXT FROM cur_level INTO @code,@codename,@uppercode,@FZ
  END
  CLOSE cur_level
  DEALLOCATE cur_level
  
  if not exists(select a.FcodeName,a.ScodeName,a.TcodeName,FCode,SCode,TCode,b.CH0A00 ,ISNULL(b.score,0.0) Score,b.remark 
  from #ZLPJTmp a left join VsBAZmPj b on a.Fcode = b.code or a.Scode=b.code or a.Tcode=b.code  
  where b.CH0A00 =@CH0A00)
  begin
    select a.FcodeName,a.ScodeName,a.TcodeName,FCode,SCode,TCode, Score,remark 
    from #ZLPJTmp a order by Scode,Tcode 
    
  end
  else
    select a.FcodeName,a.ScodeName,a.TcodeName,FCode,SCode,TCode ,ISNULL(b.score,0.0) Score,b.remark 
  from #ZLPJTmp a left join VsBAZmPj b on a.Fcode = b.code or a.Scode=b.code or a.Tcode=b.code  
  where b.CH0A00 =@CH0A00  order by Scode,Tcode 
	
	
END	
GO