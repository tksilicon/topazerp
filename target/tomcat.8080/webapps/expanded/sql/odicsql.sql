
CREATE  TABLE IF NOT EXISTS  `odicerpc_odic`.`odicproducts` (
  `product_id` varchar(100) NOT NULL,
  `product_desc`  varchar(100)  NOT NULL,
  `price`  float(10,2) NOT NULL,
  `lowerpriceretail`  float(10,2) NOT NULL,
  `higherpriceretail`  float(10,2) NOT NULL,
  `wholesaleprice`  float(10,2) NOT NULL,
  `lowerpricewholesale`  float(10,2) NOT NULL,
  `higherpricewholesale`  float(10,2) NOT NULL,   
  PRIMARY KEY  (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE  TABLE IF NOT EXISTS  `odicerpc_odic`.`odicproductscic` (
  `product_id` varchar(100) NOT NULL,
  `product_desc`  varchar(100)  NOT NULL,
  `wholesaleprice`  float(10,2) NOT NULL,
  `lowerpricewholesale`  float(10,2) NOT NULL,
  `higherpricewholesale`  float(10,2) NOT NULL,   
  PRIMARY KEY  (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE  TABLE IF NOT EXISTS  `odicerpc_odic`.`invoicegen` (
  `branch_id` varchar(50) NOT NULL,
  `maxnumber`  int(10)  NOT NULL,
 PRIMARY KEY  (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE  TABLE IF NOT EXISTS  `odicerpc_odic`.`invoicegentender` (
  `branch_id` varchar(50) NOT NULL,
  `maxnumber`  int(10)  NOT NULL,
 PRIMARY KEY  (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE  TABLE IF NOT EXISTS  `odicerpc_odic`.`mangtender` (
  `branch_id` varchar(50) NOT NULL,
  `maxnumber`  int(10)  NOT NULL,
 PRIMARY KEY  (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE  TABLE IF NOT EXISTS  `odicerpc_odic`.`transfergentender` (
  `branch_id` varchar(50) NOT NULL,
  `maxnumber`  int(10)  NOT NULL,
 PRIMARY KEY  (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `odicerpc_odic`.`mangtender` (`branch_id`, `maxnumber`) VALUES
('B25', 0),
('B28', 0),
('CA1', 0),
('HQS', 0),
('PLZ', 0);

INSERT INTO `odicerpc_odic`.`transfergentender` (`branch_id`, `maxnumber`) VALUES
('B25', 0),
('B28', 0),
('CA1', 0),
('HQS', 0),
('PLZ', 0);



CREATE  TABLE IF NOT EXISTS  `odicerpc_odic`.`temputilInteger` (
 `branch_id`  varchar(50)  NOT NULL,
 `util_name` varchar(50) NOT NULL,
  `util_value`  int(10)  NOT NULL,
 PRIMARY KEY  (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE  TABLE IF NOT EXISTS  `odicerpc_odic`.`userinvoices` (
  `username`  varchar(50) NOT NULL,
  `lastloginday`  date  NOT NULL,
  `branch_id`   varchar(50)  NOT NULL,
  `invoiceNo`  int(10)  NOT NULL,
 PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE  TABLE IF NOT EXISTS  `odicerpc_odic`.`dailyinvoicetotal` (
 `id` int(10) NOT NULL auto_increment,
 `branch_id`  varchar(50)  NOT NULL,
 `dateinvoice` date NOT NULL,
  `totalinvoice`  int(3)  NOT NULL,
 PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

select DAYOFYEAR(NOW());
select DAYOFYEAR(dateinvoice), totalinvoice from dailyinvoicetotal where branch_id='HEADOFFICE_SALES' and DAYOFYEAR(dateinvoice) = 315;

Alter table admin
add (dateofemploy date);



CREATE  TABLE IF NOT EXISTS  `odicerpc_odic`.`branchstock` (
 `id` varchar(15) NOT NULL,
 `branch_id`  varchar(50)  NOT NULL,
 `product_id` varchar(100) NOT NULL,
 `product_desc` varchar(50) NOT NULL,
 `tenderno` varchar(100),
 `datestock` date NOT NULL,
 `stockunit` varchar(50), 
 `goodsrecieved`  int(4) ,
 `goodsold`  int(4)  ,
 `balance`  int(4)  ,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

alter table `odicerpc_odic`.`branchstock`
modify column datestock datetime NOT NULL; 

alter table `odicerpc_odic`.`branchstock`
add column datestring varchar(15);

CREATE  TABLE IF NOT EXISTS  `odicerpc_odic`.`branchstocklastid` (
 `id2` int(5) NOT NULL auto_increment,
 `id` varchar(15) NOT NULL,
 `branch_id`  varchar(50)  NOT NULL,
 `product_id` varchar (100) NOT NULL,
  PRIMARY KEY  (`id2`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

alter table `odicerpc_odic`.`branchstocklastid`
add column datestring varchar(15);


CREATE  TABLE IF NOT EXISTS  `odicerpc_odic`.`branchstockbalance` (
 `branch_id`  varchar(50)  NOT NULL,
 `product_id` varchar(100) NOT NULL,
 `product_desc` varchar(100) NOT NULL,
 `stockunit` varchar(20) NOT NULL,
 `datestock` date NOT NULL,
 `balance`  int(4)  ,
 PRIMARY KEY  (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `odicerpc_odic`.`branchstockbalance` DROP PRIMARY KEY, ADD PRIMARY KEY(branch_id,product_id);

alter table `odicerpc_odic`.`branchstockbalance`
add column datestring varchar(15);


CREATE  TABLE IF NOT EXISTS  `odicerpc_odic`.`customercreditlimit` (
 `regno` varchar(20) NOT NULL,
 `creditlimit` int(10)  NOT NULL,
 `regdate` date NOT NULL,
  PRIMARY KEY  (`regno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

select DAYOFYEAR(dateinvoice), totalinvoice from dailyinvoicetotal where 
branch_id='HEADOFFICE_SALES' and product_id =  DAYOFYEAR(dateinvoice) = 315


CREATE  TABLE IF NOT EXISTS  `odicerpc_odic`.`ourinvoice` (
  `date` date NOT NULL,
  `invoiceid` varchar(20) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `custname` varchar(70) NOT NULL,
  `custid` varchar(20) NOT NULL,
  `custtype` varchar(20) NOT NULL,
  `tagno` varchar(100) NOT NULL,
  `totalqty` int(20) NOT NULL,
  `discount` float NOT NULL,
  `type` varchar(20) default NULL,
  `grandtotal` float NOT NULL,
  `amtpaid` float NOT NULL,
  `balance` float NOT NULL,
  `ready` varchar(30) NOT NULL,
  `staff` varchar(20) NOT NULL,
  `verify` varchar(20) NOT NULL,
  PRIMARY KEY  (`invoiceid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE  TABLE IF NOT EXISTS  `odicerpc_odic`.`ourinvoiceotherdetails` (
  `invoiceid` varchar(20) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `custid` varchar(20) NOT NULL,
  `totalshadow` double default 0.0,
  `invoicetype` varchar(25),
   PRIMARY KEY  (`invoiceid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `ourinvoiceotherdetails` (
  `invoiceid` varchar(20) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `custid` varchar(20) NOT NULL,
  `totalshadow` double DEFAULT '0',
  `invoicetype` varchar(25) DEFAULT NULL,
  `paymenttype` varchar (10),
  `cashamount` double default 0,
  `cashinbank` double default 0,
  `paymentbank` varchar(20),
  `paymentdate` date,
  `tellerno` varchar(20),
  `chequeno` varchar(20),
  `bankofcheque` varchar(50),
  `dateofcheque` date,
  PRIMARY KEY (`invoiceid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

Alter table ourinvoiceotherdetails
add (paymenttype varchar (30),cashamount double default 0,cashinbank double default 0,
paymentbank varchar(20),paymentdate date,tellerno varchar(20),chequeno varchar(20),
bankofcheque varchar(50),dateofcheque date);




CREATE  TABLE IF NOT EXISTS  `odicerpc_odic`.`invoicebody2` (
  `id` int(10) NOT NULL auto_increment,
  `branch` varchar(20) NOT NULL,
  `custid` varchar(20) NOT NULL,
  `invoiceid` varchar(20) NOT NULL,
  `itemid` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `qty` int(20) NOT NULL,
  `pricetype` varchar(20) NOT NULL,
  `totaldiscount` double default 0.0,
  `totalshadow` double default 0.0,
  `total` double default 0.0,
   PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;



CREATE  TABLE IF NOT EXISTS  `odicerpc_odic`.`ourinvoice2` (
  `date` date NOT NULL,
  `invoiceid` varchar(20) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `custname` varchar(70) NOT NULL,
  `custid` varchar(20) NOT NULL,
  `custtype` varchar(20) NOT NULL,
  `tagno` varchar(100) NOT NULL,
  `totalqty` int(20) NOT NULL,
  `discount` float NOT NULL,
  `type` varchar(20) default NULL,
  `grandtotal` float NOT NULL,
  `amtpaid` float NOT NULL,
  `balance` float NOT NULL,
  `ready` varchar(30) NOT NULL,
  `staff` varchar(20) NOT NULL,
  `verify` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL,
  `supplied` varchar(10) NOT NULL,
  `postedstatus` varchar(10) NOT NULL,
   PRIMARY KEY  (`invoiceid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE  TABLE IF NOT EXISTS  `odicerpc_odic`.`customers` (
  `branch` varchar(20) NOT NULL,
  `regdate` varchar(20) NOT NULL,
  `regno` varchar(20) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `custtype` varchar(20) NOT NULL,
  `address` varchar(70) NOT NULL,
  `state` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `day` varchar(10) NOT NULL,
  `month` varchar(10) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `phoneno` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY  (`regno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE  TABLE IF NOT EXISTS  `odicerpc_odic`.`customers` (
  `branch` varchar(20) NOT NULL,
  `regdate` varchar(20) NOT NULL,
  `regno` varchar(20) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `firstname` varchar(50),
  `custtype` varchar(20) ,
  `address` varchar(100) ,
  `state` varchar(20) ,
  `country` varchar(20) ,
  `day` varchar(10) ,
  `month` varchar(10) ,
  `gender` varchar(20) ,
  `phoneno` varchar(12) ,
  `email` varchar(50) ,
  PRIMARY KEY  (`regno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


ALTER TABLE customers MODIFY surname VARCHAR(100) NOT NULL;
ALTER TABLE customers MODIFY firstname VARCHAR(50);
ALTER TABLE customers MODIFY custtype VARCHAR(20);
ALTER TABLE customers MODIFY address VARCHAR(100);
ALTER TABLE customers MODIFY state VARCHAR(20);
ALTER TABLE customers MODIFY country VARCHAR(20);
ALTER TABLE customers MODIFY day VARCHAR(20);
ALTER TABLE customers MODIFY month VARCHAR(20);
ALTER TABLE customers MODIFY gender VARCHAR(20);
ALTER TABLE customers MODIFY phoneno VARCHAR(20);
ALTER TABLE customers MODIFY email VARCHAR(20);

CREATE  TABLE IF NOT EXISTS  `odicerpc_odic`.`warehousetender` (
  `date` date NOT NULL,
  `tenderid` varchar(20) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `totalitems` int(3) NOT NULL,
  `authorizer` varchar(100),
  `holder` varchar(100),
  `staff` varchar(20) NOT NULL,
  `approved` boolean default false,
  `supplied` boolean default false, 
  PRIMARY KEY  (`tenderid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE  TABLE IF NOT EXISTS  `odicerpc_odic`.`warehousetendertransfer` (
  `date` date NOT NULL,
  `tenderid` varchar(20) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `tobranch` varchar(30) NOT NULL,
  `totalitems` int(3) NOT NULL,
  `authorizer` varchar(100),
  `holder` varchar(100),
  `staff` varchar(20) NOT NULL,
  `confirm` varchar(20) default 'notconfirmed',   
  PRIMARY KEY  (`tenderid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE  TABLE IF NOT EXISTS  `odicerpc_odic`.`warehousetenderman` (
  `date` date NOT NULL,
  `tenderid` varchar(20) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `tobranch` varchar(30) NOT NULL,
  `totalitems` int(3) NOT NULL,
  `authorizer` varchar(100),
  `holder` varchar(100),
  `staff` varchar(20) NOT NULL,
   PRIMARY KEY  (`tenderid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE  TABLE IF NOT EXISTS  `odicerpc_odic`.`warehousetenderbody` (
  `id` int(10) NOT NULL auto_increment,
  `branch` varchar(20) NOT NULL,
  `invoiceid` varchar(20) NOT NULL,
  `itemid` varchar(100) NOT NULL,
  `itemdesc` varchar(100) NOT NULL,
  `qty` int(20) NOT NULL,  
   PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

 
CREATE  TABLE IF NOT EXISTS  `odicerpc_odic`.`voidedinvoicenosales` (
  `id` int(10) NOT NULL auto_increment,
  `branch` varchar(20) NOT NULL,
  `invoiceid` varchar(20) NOT NULL,
  `dateinvoice` date,   
   PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE  TABLE IF NOT EXISTS  `bankingbranches` (
  `id` int(11) NOT NULL auto_increment,
  `branch` varchar(50) NOT NULL,
  `amount` int NOT NULL,
  `tellerno` varchar(50) NOT NULL, 
  `bank` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `type` varchar(20) NOT NULL,
   PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;


CREATE  TABLE IF NOT EXISTS  `receipts` (
  `id` int(11) NOT NULL auto_increment,
  `receiptsno` varchar(10),
  `custid` varchar(50) NOT NULL,
  `custname` varchar (100),
  `amount` int NOT NULL,
  `date` date NOT NULL,
   PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;


CREATE  TABLE IF NOT EXISTS  `hoqexpenses` (
  `id` int(20) NOT NULL auto_increment,
  `expense_date` date NOT NULL,  
  `amount` int NOT NULL,
  `purpose` varchar(70) NOT NULL,
  `amountpaid` float NOT NULL,
  `balance` int NOT NULL,
  `type` varchar(70) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE  TABLE IF NOT EXISTS  `hoqexpensesbal` (
  `id` int(20) NOT NULL auto_increment,
  `expense_date` date NOT NULL,  
  `balance` int NOT NULL, 
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

CREATE  TABLE IF NOT EXISTS  `odicerpc_odic`.`fundexpenses` (
  `id` int(20) NOT NULL auto_increment,
  `expense_date` date NOT NULL,  
  `amount` int NOT NULL, 
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

CREATE  TABLE IF NOT EXISTS  `odicerpc_odic`.`receiptsgen` (
  `branch_id` varchar(50) NOT NULL,
  `maxnumber`  int(10)  NOT NULL,
 PRIMARY KEY  (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


SELECT invoiceid, DATE_SUB( DATE, INTERVAL 1 DAY ) AS YesterdaySales
FROM ourinvoice2

SELECT invoiceid, DATE AS todaySales
FROM ourinvoice2
WHERE DATE = CURDATE()

CREATE  TABLE IF NOT EXISTS  `odicerpc_odic`.`dailybalances` (
  `id` int(10) NOT NULL auto_increment,
  `branch_id` varchar(50) NOT NULL,
  `balance`  double  NOT NULL,
  `date` date NOT NULL,
 PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

alter table dailybalances
add (receipts double, banktransactions double, c19 double, b2526 double, b28 double, plaza double, invoices double);

alter table dailybalances
add (expenses double);

alter table dailybalances
add (cashsales double, notyetpaid double);

alter table dailybalances
add (paidtobank double);

alter table dailybalances
add (discount double);

alter table dailybalances
add (previousday double);




CREATE  TABLE IF NOT EXISTS  `odicerpc_odic`.`singlelogon` (
  `id` int(3) NOT NULL auto_increment,
  `staff_id` varchar(20) NOT NULL,
  `logon`  varchar(5)  NOT NULL,
 ) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

alter table customers 
modify creditlimit double default 0.0

alter table customers 
add customerbalance double default 0.0

alter table customers 
add customerbal2014 double default 0.0

alter table customers 
add customerbal2013 double default 0.0

alter branchstocks
add stocktype varchar(10);




alter table ourinvoice2 
add suppliedfrom varchar(30) default 'none';


CREATE  TABLE IF NOT EXISTS  `odicerpc_odic`.`supplytable` (
  `invoiceid` varchar(20) NOT NULL,
  `date`  timestamp  NOT NULL,
  `branch` varchar(30) NOT NULL,
  `status` varchar(20) NOT NULL default 'notsupplied',
  PRIMARY KEY  (`invoiceid`)
 ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

alter table ourinvoice2
modify column supplied varchar(20) default 'none';

alter table `odicerpc_odic`.`supplytable`
modify column date datetime NOT NULL; 


alter table branchstock
add stocktype varchar(10);


//new 

CREATE  TABLE IF NOT EXISTS  `cashshop` (
  `id` int(11) NOT NULL auto_increment,
  `cashno` varchar(10),
  `holder` varchar(50) NOT NULL,
  `branch` varchar (100),
  `amount` int NOT NULL,
  `date` date NOT NULL,
   PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;


CREATE TABLE IF NOT EXISTS `dailybalances` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `branch_id` varchar(50) NOT NULL,
  `balance` double NOT NULL,
  `date` date NOT NULL,
  `receipts` double DEFAULT NULL,
  `banktransactions` double DEFAULT NULL,
  `c19` double DEFAULT NULL,
  `b2526` double DEFAULT NULL,
  `plaza` double DEFAULT NULL,
  `invoices` double DEFAULT NULL,
  `expenses` double DEFAULT NULL,
  `cashsales` double DEFAULT NULL,
  `notyetpaid` double DEFAULT NULL,
  `paidtobank` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `previousday` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;


CREATE TABLE IF NOT EXISTS `warehousetender` (
  `date` date NOT NULL,
  `tenderid` varchar(20) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `totalitems` int(3) NOT NULL,
  `authorizer` varchar(100) DEFAULT NULL,
  `holder` varchar(100) DEFAULT NULL,
  `staff` varchar(20) NOT NULL,
  `approved` varchar(20) DEFAULT 'notapproved',
  `postedstatus` varchar(20) DEFAULT 'notposted',
  `supplied` varchar(20) DEFAULT 'notsupplied',
  PRIMARY KEY (`tenderid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1


CREATE TABLE IF NOT EXISTS `reportstatus` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL, 
  `branch` varchar(20) NOT NULL,  
  `postedstatus` varchar(20) DEFAULT 'false',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE  TABLE IF NOT EXISTS  `odicerpc_odic`.`tempinvoiceno` (
  `id` int(10) NOT NULL auto_increment,
  `branch` varchar(20) NOT NULL,
  `invoiceid` int(4) NOT NULL,
   PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;




 










