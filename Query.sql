--Step_1: Create New Table : CA81_LEML					
USE [SIGNALS]					
GO					
					
SET ANSI_NULLS ON					
GO					
					
SET QUOTED_IDENTIFIER ON					
GO					
					
CREATE TABLE [dbo].[CA81_LEML](					
	[Asset_Code] [varchar](50) NOT NULL,				
	[Strategy_Code] [varchar](50) NOT NULL,				
	[Date_Time] [date] NOT NULL,				
	[Opening_Position] [int] NULL,				
	[Op_Pos_Lag] [int] NULL,				
	[Closing_Position] [int] NULL,				
	[Under_Asst_Price] [decimal](18, 5) NULL,				
	[MTM_BH_Abs] [decimal](38, 5) NULL,				
	[Cum_Return] [decimal](38, 5) NULL,				
	[Op_Expo] [decimal](38, 5) NULL,				
	[Closing_Expo] [decimal](38, 5) NULL,				
	[MTM_BH_Perc] [decimal](38, 5) NULL,				
	[Qty] [int] NULL,				
	[Lot_Multi] [int] NULL,				
	[MTM_Abs_QL] [decimal](38, 5) NULL,				
	[Cum_Return_QL] [decimal](38, 5) NULL,				
	[Trd_Count] [int] NULL,				
	[Cum_Trd_Count] [int] NULL,				
	[Cum_MTM_trd] [decimal](38, 5) NULL,				
	[tcr_cum] [decimal](38, 5) NULL,				
 CONSTRAINT [PK_CA81_LEML] PRIMARY KEY CLUSTERED 					
(					
	[Strategy_Code] ASC,				
	[Asset_Code] ASC,				
	[Date_Time] ASC				
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]					
) ON [PRIMARY]					
GO					
					
--Step_2 : Insert the Data for the Strategy Combination in the new table					
insert into CA81_LEML (Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_Abs,MTM_BH_Perc,Op_Expo,Closing_Expo,Qty,Lot_Multi)					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=3,Lot_Multi=5000  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00001002' and Asset_Code = 'C_MC_S_Aluminium_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=3,Lot_Multi=5000  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00001007' and Asset_Code = 'C_MC_S_Aluminium_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=3,Lot_Multi=5000  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00001021' and Asset_Code = 'C_MC_S_Aluminium_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=3,Lot_Multi=5000  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00002002' and Asset_Code = 'C_MC_S_Aluminium_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=3,Lot_Multi=5000  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00002007' and Asset_Code = 'C_MC_S_Aluminium_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=3,Lot_Multi=5000  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00002021' and Asset_Code = 'C_MC_S_Aluminium_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=3,Lot_Multi=5000  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00003007' and Asset_Code = 'C_MC_S_Aluminium_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=3,Lot_Multi=5000  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00003021' and Asset_Code = 'C_MC_S_Aluminium_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=3,Lot_Multi=5000  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00003022' and Asset_Code = 'C_MC_S_Aluminium_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=5,Lot_Multi=1000  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00001002' and Asset_Code = 'C_MC_S_Copper_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=5,Lot_Multi=1000  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00001007' and Asset_Code = 'C_MC_S_Copper_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=5,Lot_Multi=1000  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00001021' and Asset_Code = 'C_MC_S_Copper_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=5,Lot_Multi=1000  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00002002' and Asset_Code = 'C_MC_S_Copper_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=5,Lot_Multi=1000  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00002007' and Asset_Code = 'C_MC_S_Copper_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=5,Lot_Multi=1000  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00002021' and Asset_Code = 'C_MC_S_Copper_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=5,Lot_Multi=1000  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00003007' and Asset_Code = 'C_MC_S_Copper_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=5,Lot_Multi=1000  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00003021' and Asset_Code = 'C_MC_S_Copper_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=5,Lot_Multi=1000  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00003022' and Asset_Code = 'C_MC_S_Copper_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=4,Lot_Multi=100  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00001002' and Asset_Code = 'C_MC_S_Crude_Oil_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=4,Lot_Multi=100  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00001007' and Asset_Code = 'C_MC_S_Crude_Oil_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=4,Lot_Multi=100  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00001021' and Asset_Code = 'C_MC_S_Crude_Oil_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=4,Lot_Multi=100  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00002002' and Asset_Code = 'C_MC_S_Crude_Oil_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=4,Lot_Multi=100  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00002007' and Asset_Code = 'C_MC_S_Crude_Oil_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=4,Lot_Multi=100  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00002021' and Asset_Code = 'C_MC_S_Crude_Oil_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=4,Lot_Multi=100  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00003007' and Asset_Code = 'C_MC_S_Crude_Oil_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=4,Lot_Multi=100  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00003021' and Asset_Code = 'C_MC_S_Crude_Oil_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=4,Lot_Multi=100  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00003022' and Asset_Code = 'C_MC_S_Crude_Oil_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=1,Lot_Multi=100  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00001002' and Asset_Code = 'C_MC_S_Gold_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=1,Lot_Multi=100  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00001007' and Asset_Code = 'C_MC_S_Gold_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=1,Lot_Multi=100  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00001021' and Asset_Code = 'C_MC_S_Gold_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=1,Lot_Multi=100  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00002002' and Asset_Code = 'C_MC_S_Gold_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=1,Lot_Multi=100  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00002007' and Asset_Code = 'C_MC_S_Gold_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=1,Lot_Multi=100  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00002021' and Asset_Code = 'C_MC_S_Gold_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=1,Lot_Multi=100  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00003007' and Asset_Code = 'C_MC_S_Gold_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=1,Lot_Multi=100  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00003021' and Asset_Code = 'C_MC_S_Gold_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=1,Lot_Multi=100  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00003022' and Asset_Code = 'C_MC_S_Gold_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=3,Lot_Multi=5000  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00001002' and Asset_Code = 'C_MC_S_Lead_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=3,Lot_Multi=5000  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00001007' and Asset_Code = 'C_MC_S_Lead_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=3,Lot_Multi=5000  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00001021' and Asset_Code = 'C_MC_S_Lead_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=3,Lot_Multi=5000  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00002002' and Asset_Code = 'C_MC_S_Lead_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=3,Lot_Multi=5000  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00002007' and Asset_Code = 'C_MC_S_Lead_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=3,Lot_Multi=5000  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00002021' and Asset_Code = 'C_MC_S_Lead_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=3,Lot_Multi=5000  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00003007' and Asset_Code = 'C_MC_S_Lead_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=3,Lot_Multi=5000  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00003021' and Asset_Code = 'C_MC_S_Lead_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=3,Lot_Multi=5000  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00003022' and Asset_Code = 'C_MC_S_Lead_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=3,Lot_Multi=1250  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00001002' and Asset_Code = 'C_MC_S_Natural_Gas_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=3,Lot_Multi=1250  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00001007' and Asset_Code = 'C_MC_S_Natural_Gas_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=3,Lot_Multi=1250  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00001021' and Asset_Code = 'C_MC_S_Natural_Gas_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=3,Lot_Multi=1250  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00002002' and Asset_Code = 'C_MC_S_Natural_Gas_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=3,Lot_Multi=1250  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00002007' and Asset_Code = 'C_MC_S_Natural_Gas_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=3,Lot_Multi=1250  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00002021' and Asset_Code = 'C_MC_S_Natural_Gas_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=3,Lot_Multi=1250  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00003007' and Asset_Code = 'C_MC_S_Natural_Gas_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=3,Lot_Multi=1250  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00003021' and Asset_Code = 'C_MC_S_Natural_Gas_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=3,Lot_Multi=1250  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00003022' and Asset_Code = 'C_MC_S_Natural_Gas_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=8,Lot_Multi=250  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00001002' and Asset_Code = 'C_MC_S_Nickel_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=8,Lot_Multi=250  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00001007' and Asset_Code = 'C_MC_S_Nickel_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=8,Lot_Multi=250  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00001021' and Asset_Code = 'C_MC_S_Nickel_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=8,Lot_Multi=250  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00002002' and Asset_Code = 'C_MC_S_Nickel_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=8,Lot_Multi=250  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00002007' and Asset_Code = 'C_MC_S_Nickel_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=8,Lot_Multi=250  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00002021' and Asset_Code = 'C_MC_S_Nickel_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=8,Lot_Multi=250  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00003007' and Asset_Code = 'C_MC_S_Nickel_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=8,Lot_Multi=250  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00003021' and Asset_Code = 'C_MC_S_Nickel_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=8,Lot_Multi=250  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00003022' and Asset_Code = 'C_MC_S_Nickel_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=2,Lot_Multi=30  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00001002' and Asset_Code = 'C_MC_S_Silver_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=2,Lot_Multi=30  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00001007' and Asset_Code = 'C_MC_S_Silver_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=2,Lot_Multi=30  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00001021' and Asset_Code = 'C_MC_S_Silver_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=2,Lot_Multi=30  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00002002' and Asset_Code = 'C_MC_S_Silver_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=2,Lot_Multi=30  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00002007' and Asset_Code = 'C_MC_S_Silver_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=2,Lot_Multi=30  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00002021' and Asset_Code = 'C_MC_S_Silver_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=2,Lot_Multi=30  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00003007' and Asset_Code = 'C_MC_S_Silver_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=2,Lot_Multi=30  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00003021' and Asset_Code = 'C_MC_S_Silver_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=2,Lot_Multi=30  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00003022' and Asset_Code = 'C_MC_S_Silver_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=2,Lot_Multi=5000  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00001002' and Asset_Code = 'C_MC_S_Zinc_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=2,Lot_Multi=5000  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00001007' and Asset_Code = 'C_MC_S_Zinc_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=2,Lot_Multi=5000  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00001021' and Asset_Code = 'C_MC_S_Zinc_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=2,Lot_Multi=5000  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00002002' and Asset_Code = 'C_MC_S_Zinc_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=2,Lot_Multi=5000  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00002007' and Asset_Code = 'C_MC_S_Zinc_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=2,Lot_Multi=5000  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00002021' and Asset_Code = 'C_MC_S_Zinc_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=2,Lot_Multi=5000  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00003007' and Asset_Code = 'C_MC_S_Zinc_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=2,Lot_Multi=5000  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00003021' and Asset_Code = 'C_MC_S_Zinc_F' UNION					
select Asset_Code,Strategy_Code,Date_Time,Opening_Position,Closing_Position,MTM_BH_ABS,MTM_BH_Perc,Opening_Expo,Closing_Expo,Qty=2,Lot_Multi=5000  from Signal_MTM_Calc_Consol where Strategy_Code = 'SWBTFA00003022' and Asset_Code = 'C_MC_S_Zinc_F'					
order by Strategy_Code,Asset_Code,Date_Time										
					
						
					
					
--Step_3: Create the Cum_Return Series					
Update CA81_LEML set					
Cum_Return = (Select Sum(MTM_BH_ABS) from Signal_MTM_Calc_Consol where Asset_Code = a.Asset_Code and Strategy_Code = a.strategy_Code and Date_Time <= a.Date_Time)					
from CA81_LEML as a					
					
					
--Step_4: Update Actual_MTM and EXPOSURE					
Update CA81_LEML Set MTM_Abs_QL = (MTM_BH_Abs*Qty*Lot_Multi), Cum_Return_QL = (Cum_Return*Qty*Lot_Multi)					
					
					
--Step_5: Update the Closing_Position_Lag Column					
update c set 					
	Op_Pos_Lag = x.Opening_Position				
from CA81_LEML c					
inner join (					
	Select a.Asset_Code, a.Strategy_Code, a.Date_Time, a.Opening_Position, min(b.Date_Time) as MinDate				
	from CA81_LEML a				
	inner join CA81_LEML b				
	on a.Asset_Code = b.Asset_Code				
	and a.Strategy_Code = b.Strategy_Code				
	and a.Date_Time < b.Date_Time				
	group by  a.Asset_Code, a.Strategy_Code, a.Date_Time, a.Opening_Position				
) as x					
on c.Asset_Code = x.Asset_Code					
and c.Strategy_Code = x.Strategy_Code					
and c.Date_Time = x.MinDate					
					
					
--Step_6: Individual Trade Counter					
Update CA81_LEML Set Trd_Count = 					
CASE 					
--FIRST DATE IN DATA					
	WHEN 				
	CA81_LEML.Opening_Position  = '0' 				
	THEN				
	'0'				
--NORMAL					
	WHEN 				
	CA81_LEML.Opening_Position != CA81_LEML.Op_Pos_Lag				
	THEN 				
	'1'				
	ELSE '0'				
END					
					
					
--Step_7: Cum_Trade Counnter					
update c set 					
Cum_Trd_Count = x.CUM_TEMP					
from CA81_LEML as c					
inner join (					
	Select a.Asset_Code, a.Strategy_Code,a.Date_Time, min(b.Date_Time) as MinDate, SUM(b.Trd_Count) as CUM_TEMP				
	from CA81_LEML as a				
	inner join CA81_LEML as b				
	on a.Asset_Code = b.Asset_Code				
	and a.Strategy_Code = b.Strategy_Code				
	and a.Date_Time >= b.Date_Time				
	group by  a.Asset_Code, a.Strategy_Code, a.Date_Time				
	) as x				
on c.Asset_Code = x.Asset_Code					
and c.Strategy_Code = x.Strategy_Code					
and c.Date_Time = x.Date_Time					
					
					
--Step_8: Cum_Trade Counnter					
Update CA81_LEML					
Set Cum_MTM_trd = Y.BBB					
from CA81_LEML as z					
inner join					
	(				
	Select c.Asset_Code,C.Strategy_Code,C.Cum_Trd_Count,SUM(x.AAA) as BBB				
	from CA81_LEML as c				
	inner join (				
		Select a.Asset_Code, a.Strategy_Code,a.Date_Time,a.Cum_Trd_Count, a.MTM_Abs_QL as AAA			
		from CA81_LEML as a			
		where Asset_Code = a.Asset_Code and Strategy_Code = a.Strategy_Code  and Cum_Trd_Count = a.Cum_Trd_Count and Date_Time = a.Date_Time			
		) as x			
	on c.Asset_Code = x.Asset_Code				
	and c.Strategy_Code = x.Strategy_Code				
	and c.Cum_Trd_Count = x.Cum_Trd_Count				
	and c.Date_Time = x.Date_Time				
Where c.Asset_Code = x.Asset_Code and c.Strategy_Code = x.Strategy_Code and c.Cum_Trd_Count = x.Cum_Trd_Count and C.Date_Time <= x.Date_Time 					
Group by c.Asset_Code,c.Strategy_Code,c.Cum_Trd_Count					
) as y					
on z.Asset_Code = y.Asset_Code and  z.strategy_Code = y.Strategy_Code and z.Cum_Trd_Count = y.Cum_Trd_Count					
					
					
--Step_9: tcr_Cum					
Update CA81_LEML Set tcr_cum = 					
CASE 					
--FIRST DATE IN DATA					
	WHEN 				
	CA81_LEML.Trd_Count  = '1' 				
	THEN				
	CA81_LEML.Cum_MTM_trd				
					
	ELSE '0'				
END					
					
--Step_10: Get th Underlying Asset Price					
Update CA81_LEML set					
Under_Asst_Price = (Select Closing_Expo from MTM_Calc where Asset_Code = a.Asset_Code and Date_Time = a.Date_Time)					
from CA81_LEML as a					
					
					
--Display the Table Power_BI					
Select * from CA81_LEML Order by Asset_Code,Strategy_Code,Date_Time					