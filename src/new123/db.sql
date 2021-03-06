SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employee_Master]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Employee_Master](
	[emp_no] [int] NOT NULL,
	[emp_name] [nvarchar](30) NULL,
	[emp_dob] [nvarchar](50) NULL,
	[emp_doj] [nvarchar](50) NULL,
	[desig_id] [int] NOT NULL,
	[dept_id] [int] NOT NULL,
	[sales_office_id] [int] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Login_Master]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Login_Master](
	[user_name] [nvarchar](25) NOT NULL,
	[emp_id] [int] NOT NULL,
	[o_pwd] [nvarchar](10) NULL,
	[n_pwd] [nvarchar](10) NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Machine_Master]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Machine_Master](
	[machine_id] [int] NOT NULL,
	[machine_no] [int] NULL,
	[machine_purch_date] [datetime] NULL,
	[machine_inst_date] [datetime] NULL,
	[waranty_period] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Model_Process_Master]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Model_Process_Master](
	[mode_no] [int] NOT NULL,
	[proces_no] [int] NOT NULL,
	[model_process_seq_bt_no] [int] NULL,
	[model_process_desc] [nvarchar](30) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Model_Quantity_Requaired]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Model_Quantity_Requaired](
	[model_no] [int] NOT NULL,
	[model_name] [nvarchar](30) NOT NULL,
	[opt_qty_of_batch] [int] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[power_tool_model_master]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[power_tool_model_master](
	[model_no] [int] NOT NULL,
	[model_name] [nvarchar](30) NULL,
	[industria_rep_area_code] [nvarchar](10) NULL,
	[min_selling_price] [money] NULL,
	[model_other_details] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[power_tool_raw_material_model_master]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[power_tool_raw_material_model_master](
	[model_no] [int] NOT NULL,
	[raw_material_id] [int] NULL,
	[raw_material_qty_required] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Power_Tool_Sales_Details]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Power_Tool_Sales_Details](
	[bill_no] [int] NOT NULL,
	[model_no] [int] NOT NULL,
	[sale_qty] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Power_Tool_Sales_Master]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Power_Tool_Sales_Master](
	[bill_no] [int] NOT NULL,
	[bill_date] [datetime] NULL,
	[sales_order_no] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[process_master]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[process_master](
	[process_no] [int] NOT NULL,
	[process_name] [nvarchar](30) NULL,
	[process_desc] [nvarchar](30) NULL,
	[process_batch_qty] [decimal](10, 0) NULL,
	[process_batch_cost] [money] NULL,
	[process_batch_time] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Production_Process_Master]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Production_Process_Master](
	[prod_process_no] [int] NOT NULL,
	[prod_process_start_date] [datetime] NULL,
	[prod_process_end_date] [datetime] NULL,
	[prod_req_no] [int] NOT NULL,
	[prod_process_machine_id] [int] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Production_Request_Details]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Production_Request_Details](
	[prod_req_no] [int] NOT NULL,
	[sales_order_no] [int] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Production_Request_Master]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Production_Request_Master](
	[prod_req_no] [int] NOT NULL,
	[prod_req_date] [datetime] NULL,
	[exp_date_of_delv] [datetime] NULL,
	[prod_req_incharge_id] [int] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[raw_material_master]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[raw_material_master](
	[raw_material_id] [int] NOT NULL,
	[raw_material_name] [nvarchar](30) NULL,
	[raw_material_description] [nvarchar](50) NULL,
	[raw_material_price_unit] [money] NULL,
	[raw_material_quantity_avialable] [int] NULL,
	[raw_material_min_stock_level] [int] NULL,
	[raw_material_reorder_level] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Raw_Material_purchase_details]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Raw_Material_purchase_details](
	[purchase_id] [int] NOT NULL,
	[raw_material_id] [int] NOT NULL,
	[raw_materia_qtyl] [int] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Raw_Material_Purchase_Master]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Raw_Material_Purchase_Master](
	[purchase_id] [int] NOT NULL,
	[purchase_date] [datetime] NULL,
	[sup_id] [int] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[roles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[roles](
	[role_id] [int] NOT NULL,
	[role_desc] [nvarchar](200) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sales_office_master]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sales_office_master](
	[sales_office_id] [int] NOT NULL,
	[sales_office_name] [nvarchar](50) NULL,
	[sales_office_address] [nvarchar](50) NULL,
	[sales_office_phoneno] [nvarchar](15) NULL,
	[sales_office_email] [nvarchar](25) NULL,
	[sales_office_fax_no] [nvarchar](15) NULL,
	[sales_office_incharge_id] [int] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sales_Order_Master]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Sales_Order_Master](
	[sales_order_no] [int] NOT NULL,
	[sale_order_date] [datetime] NULL,
	[cust_no] [int] NOT NULL,
	[exp_date_of_delivery] [datetime] NULL,
	[sales_offices_id] [int] NOT NULL,
	[sales_exec_no] [int] NOT NULL,
	[sale_orders_satus] [nvarchar](1) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Supplier_Master]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Supplier_Master](
	[sup_no] [int] NOT NULL,
	[sup_name] [nvarchar](30) NULL,
	[sup_full_name] [nvarchar](30) NULL,
	[sup_address] [nvarchar](50) NULL,
	[sup_phone] [nvarchar](15) NULL,
	[sup_email] [nvarchar](25) NULL,
	[sup_fax_no] [nvarchar](15) NULL,
	[sup_cont_person_name] [nvarchar](30) NULL,
	[sup_cont_person_phoneno] [nvarchar](15) NULL,
	[sup_crd_limit_id] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Suppliers_Raw_Material_Master]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Suppliers_Raw_Material_Master](
	[sup_no] [int] NULL,
	[raw_material_id] [int] NULL,
	[estimated_supply_days] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_Roles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[User_Roles](
	[user_name] [nvarchar](25) NOT NULL,
	[role_id] [int] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Marketing_Alerts]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Marketing_Alerts](
	[Message_ID] [int] NULL,
	[Message_Desc] [varchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer_Master]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Customer_Master](
	[cust_no] [int] IDENTITY(1,1) NOT NULL,
	[cust_name] [nvarchar](30) NULL,
	[cust_address] [nvarchar](50) NULL,
	[cust_phone] [nvarchar](15) NULL,
	[cust_email] [nvarchar](50) NULL,
	[cust_fax_no] [nvarchar](15) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Forecast_Master]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Forecast_Master](
	[Forecast_ID] [int] NULL,
	[Forecast_Month] [varchar](50) NULL,
	[Forecast_Year] [datetime] NULL,
	[Sales_Office_ID] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Alerts]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Alerts](
	[alert_id] [int] IDENTITY(1,1) NOT NULL,
	[sales_office_id] [int] NOT NULL,
	[message_alerts] [nvarchar](max) NULL,
	[message_status] [nvarchar](10) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sales_Order_Details]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Sales_Order_Details](
	[sales_order_no] [int] IDENTITY(1,1) NOT NULL,
	[model_no] [int] NOT NULL,
	[sales_order_qty] [int] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Credit_Limit_Master]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Credit_Limit_Master](
	[credit_limit_id] [int] NOT NULL,
	[Credit_Limit_Master] [money] NOT NULL,
	[credit_rating_description] [nvarchar](200) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Dept_Master]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Dept_Master](
	[dept_id] [int] NOT NULL,
	[dept_name] [nvarchar](30) NULL,
	[highest_desig_id] [int] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Designation_Master]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Designation_Master](
	[desig_id] [int] NOT NULL,
	[desig_name] [nvarchar](30) NULL,
	[desig_abr] [nvarchar](5) NULL,
	[desig_desc] [nvarchar](200) NULL
) ON [PRIMARY]
END
