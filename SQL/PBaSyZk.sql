USE [batj2005]
GO
/****** Object:  StoredProcedure [dbo].[PBaSyZk]    Script Date: 06/02/2016 09:59:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[PBaSyZk]
 @StartDate DateTime,  ---出院日期开始
 @EndDate DateTime,     ---出院日期截止
 @UserName varchar(10)       -----评分人
 WITH RECOMPILE
AS
BEGIN
   
   declare @PFSJ datetime -----评分时间
   declare @historySql varchar(8000) ---质控评分历史记录语句
   declare @SQLtext  varchar(2000)  ---返回集语句
   declare @Ltext varchar(1000)  
   declare @PFSQL varchar(2000)      ---病案首页评分条件
   declare @PFMC varchar(10)       ----评价名目
   declare @PFFZ int                ----项目分值
   
   --获取当前时间
   set @PFSJ=GetDate()
   
   
    ------提取符合出院日期查询范围的病案首页信息------------------------------------------------------------------------------------------
    Select VsCh0A.*,
         Ch0B83,Ch0B84,Ch0B85,Ch0B86,Ch0B87,Ch0B88,Ch0B89,Ch0B90,Ch0B91,Ch0B92,Ch0B93,Ch0B94,Ch0B95,Ch0B96,
         Ch0B98,Ch0B97,Ch0B99,Ch0BE2,Ch0BE3,Ch0BE4,Ch0BE5,Ch0BE6,
         Ch0BP1,Ch0BP2,Ch0BP3,Ch0BP4,Ch0BP5,Ch0BP6,Ch0BP7,Ch0BP8,Ch0BP9,Ch0BPA,Ch0BPB,Ch0BPC,Ch0BPD,Ch0BPE,
         Ch0BPF,Ch0BPG,Ch0BPH,Ch0BPI,Ch0BPJ,Ch0BPK,Ch0BPL,Ch0BPM,Ch0BPN,Ch0BPO,Ch0BPP,Ch0BPQ,Ch0BPR,Ch0BPS,Ch0BPT,
         Ch0BZ1,Ch0BZ2,Ch0BZ3,Ch0BZ4,Ch0BZ5,Ch0BZ6,Ch0BZ7,Ch0BZ8,Ch0BZ9,Ch0BZA,Ch0BZB,Ch0BZC,Ch0BZD,
         BmICD MZZD
   Into #CH0A From VsCh0A  -----病案首页
     Left Join VsCh0B  --  病案首页住院费用
	 on VsCh0A.ChYear=VsCh0B.ChYear And Ch0A01=Ch0B01
     Left Join (Select Bmm,(Case When ISNULL(BZICD,'')='' THEN BmMC  ELSE BZMC END)BmMC,(Case When ISNULL(BZICD,'')='' THEN BmICD  ELSE BZICD END)BmICD FROM VsUseICD)VsUseICD  ----用户诊断
	 on CH0A36=Bmm
   Where  Ch0A27 >=@StartDate And Ch0A27 <=@EndDate 
   

 -----------------------------------更新默认值------------------------------------------------------------------------------ 
  Update #CH0A Set
	 Ch0a65=(select (Case When ISNULL(BZICD,'')='' THEN BmICD  ELSE BZICD END)BmICD  from VsUseICD where bmm=ch0a38), 
     Ch0A27=Convert(DateTime,Convert(VarChar(10), Ch0A27,120)),
     Ch0A24=Convert(DateTime,Convert(VarChar(10), Ch0A24,120)),
     Ch0AB7=Convert(DateTime,Convert(VarChar(10), Ch0AB7,120)), 
     Ch0B83=IsNUll(Ch0B83,0),Ch0B84=IsNUll(Ch0B84,0),Ch0B85=IsNUll(Ch0B85,0),Ch0B86=IsNUll(Ch0B86,0),Ch0B87=IsNUll(Ch0B87,0),
     Ch0B88=IsNUll(Ch0B88,0),Ch0B89=IsNUll(Ch0B89,0),Ch0B90=IsNUll(Ch0B90,0),Ch0B91=IsNUll(Ch0B91,0),Ch0B92=IsNUll(Ch0B92,0),
     Ch0B93=IsNUll(Ch0B93,0),Ch0B94=IsNUll(Ch0B94,0),Ch0B95=IsNUll(Ch0B95,0),Ch0B96=IsNUll(Ch0B96,0),Ch0B97=IsNUll(Ch0B97,0),
     Ch0B98=IsNUll(Ch0B98,0),Ch0B99=IsNUll(Ch0B99,0),Ch0BE2=IsNUll(Ch0BE2,0),Ch0BE3=IsNUll(Ch0BE3,0),Ch0BE4=IsNUll(Ch0BE4,0),
     Ch0BE5=IsNUll(Ch0BE5,0),Ch0BE6=IsNUll(Ch0BE6,0),
     Ch0BP1=IsNUll(Ch0BP1,0),Ch0BP2=IsNUll(Ch0BP2,0),Ch0BP3=IsNUll(Ch0BP3,0),Ch0BP4=IsNUll(Ch0BP4,0),Ch0BP5=IsNUll(Ch0BP5,0),
     Ch0BP6=IsNUll(Ch0BP6,0),Ch0BP7=IsNUll(Ch0BP7,0),Ch0BP8=IsNUll(Ch0BP8,0),Ch0BP9=IsNUll(Ch0BP9,0),Ch0BPA=IsNUll(Ch0BPA,0),
     Ch0BPB=IsNUll(Ch0BPB,0),Ch0BPC=IsNUll(Ch0BPC,0),Ch0BPD=IsNUll(Ch0BPD,0),Ch0BPE=IsNUll(Ch0BPE,0),Ch0BPF=IsNUll(Ch0BPF,0),
     Ch0BPG=IsNUll(Ch0BPG,0),Ch0BPH=IsNUll(Ch0BPH,0),Ch0BPI=IsNUll(Ch0BPI,0),Ch0BPJ=IsNUll(Ch0BPJ,0),Ch0BPK=IsNUll(Ch0BPK,0),
     Ch0BPL=IsNUll(Ch0BPL,0),Ch0BPM=IsNUll(Ch0BPM,0),Ch0BPN=IsNUll(Ch0BPN,0),Ch0BPO=IsNUll(Ch0BPO,0),Ch0BPP=IsNUll(Ch0BPP,0),
     Ch0BPQ=IsNUll(Ch0BPQ,0),Ch0BPR=IsNUll(Ch0BPR,0),Ch0BPS=IsNUll(Ch0BPS,0),Ch0BPT=IsNUll(Ch0BPT,0),
     Ch0BZ1=IsNUll(Ch0BZ1,0),Ch0BZ2=IsNUll(Ch0BZ2,0),Ch0BZ3=IsNUll(Ch0BZ3,0),Ch0BZ4=IsNUll(Ch0BZ4,0),Ch0BZ5=IsNUll(Ch0BZ5,0),
     Ch0BZ6=IsNUll(Ch0BZ6,0),Ch0BZ7=IsNUll(Ch0BZ7,0),Ch0BZ8=IsNUll(Ch0BZ8,0),Ch0BZ9=IsNUll(Ch0BZ9,0),Ch0BZA=IsNUll(Ch0BZA,0),
     Ch0BZB=IsNUll(Ch0BZB,0),Ch0BZC=IsNUll(Ch0BZC,0),Ch0BZD=IsNUll(Ch0BZD,0)    
  
  --------------------创建返回质控数据集虚拟表---------------------------------
    Create Table #Result(
	  Ch0A01 VarChar(50),   ----病案号
	  Ch0A02 VarChar(50),   ----病人姓名	 	 
	  Ch0ABE VarChar(50),-----录入员
	  CH0A59 VarChar(50),  -----编码员
	  Ch0A27 datetime,  -------出院日期
 	  Score VarChar(200))  ---得分
	  
	  -------------创建病案首页质控项目评分字典表的游标----------------------------------
	Declare a_Cursor cursor for
	
		select dm,xmfz,sSql from Vssjpf where isTy = 0  ---查询启用的评价条件
		
	Open a_Cursor 
	FETCH NEXT FROM a_Cursor INTO @PFMC,@PFFZ,@PFSQL
	WHILE @@FETCH_STATUS = 0
	BEGIN
	    
		--------------------根据评分字典表 审核病案数据，记录插入VsBAsyzk-----------------------------
		set @historySql ='Insert  VsBAsyzk' 
				+' select Ch0A01,'''+@PFMC+''','+convert(varchar(10),@PFFZ)+','''+@UserName+''','''+Convert(varchar(100),@PFSJ,120)
				+''' from #CH0A A where '+@PFSQL
						
	    print(@historySql)
		Execute(@historySql)
		FETCH NEXT FROM a_Cursor INTO @PFMC,@PFFZ,@PFSQL
	END
	CLOSE a_Cursor
	DEALLOCATE a_Cursor

	------------病案首页质控总结记录插入--------------------
	set @SQLtext=' insert into #Result '
			+' select A.Ch0A01,B.Ch0A02,B.Ch0ABE,B.CH0A59,B.Ch0A27,100-ISNULL(SUM(A.Score),0)  from VsBAsyzk A '
			+' right join #CH0A B on A.Ch0A01 = B.Ch0A01 where Convert(varchar(100),A.PFSJ,120) = '''
			+Convert(varchar(100),@PFSJ,120)
			+''' group by A.Ch0A01,B.Ch0A02,B.Ch0ABE,B.CH0A59,B.Ch0A27,A.PFSJ '
			
	Execute(@SQLtext)
		
	------------返回数据集----------------
	select * from #Result ORDER BY Ch0A01
	
  
END 
