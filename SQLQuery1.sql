use MarketingCampaign

select * from marketing_data

-- How many times each campaign was accepted
select count(case when acceptedcmp1=1 then 1 end) as Cmp1Accepted, count(case when acceptedcmp2=1 then 1 end) as Cmp2Accepted,
count(case when acceptedcmp3=1 then 1 end) as Cmp3Accepted, count(case when acceptedcmp4=1 then 1 end) as Cmp4Accepted,
count(case when acceptedcmp5=1 then 1 end) as Cmp5Accepted
from marketing_data

-- Looking at purchase methods based on campaign
select sum(numwebpurchases) as WebPurchases, sum(numcatalogpurchases) as CatalogPurchases, 
sum(numstorepurchases) as StorePurchases, sum(numdealspurchases) as PurchasesWithDeals
from marketing_data
where acceptedcmp1=1

select sum(numwebpurchases) as WebPurchases, sum(numcatalogpurchases) as CatalogPurchases, 
sum(numstorepurchases) as StorePurchases, sum(numdealspurchases) as PurchasesWithDeals
from marketing_data
where acceptedcmp2=1

select sum(numwebpurchases) as WebPurchases, sum(numcatalogpurchases) as CatalogPurchases, 
sum(numstorepurchases) as StorePurchases, sum(numdealspurchases) as PurchasesWithDeals
from marketing_data
where acceptedcmp3=1

select sum(numwebpurchases) as WebPurchases, sum(numcatalogpurchases) as CatalogPurchases, 
sum(numstorepurchases) as StorePurchases, sum(numdealspurchases) as PurchasesWithDeals
from marketing_data
where acceptedcmp4=1

select sum(numwebpurchases) as WebPurchases, sum(numcatalogpurchases) as CatalogPurchases, 
sum(numstorepurchases) as StorePurchases, sum(numdealspurchases) as PurchasesWithDeals
from marketing_data
where acceptedcmp5=1

-- Looking at campaign success based on age
select age, count(age) as NumAccepted
from marketing_data
where acceptedcmp1=1
group by age

select age, count(age) as NumAccepted
from marketing_data
where acceptedcmp2=1
group by age

select age, count(age) as NumAccepted
from marketing_data
where acceptedcmp3=1
group by age

select age, count(age) as NumAccepted
from marketing_data
where acceptedcmp4=1
group by age

select age, count(age) as NumAccepted
from marketing_data
where acceptedcmp5=1
group by age

-- Looking at campaign success based on kids and teens at home
select case when kidhome != 0 and teenhome = 0 then 'Kid' 
when teenhome != 0 and kidhome = 0 then 'Teen' 
when teenhome != 0 and kidhome != 0 then 'Both'
else 'No' end as KidsAtHome, count(income) as amount
from marketing_data
where acceptedcmp1=1
group by case when kidhome != 0 and teenhome = 0 then 'Kid' 
when teenhome != 0 and kidhome = 0 then 'Teen' 
when teenhome != 0 and kidhome != 0 then 'Both'
else 'No' end

select case when kidhome != 0 and teenhome = 0 then 'Kid' 
when teenhome != 0 and kidhome = 0 then 'Teen' 
when teenhome != 0 and kidhome != 0 then 'Both'
else 'No' end as KidsAtHome, count(income) as amount
from marketing_data
where acceptedcmp2=1
group by case when kidhome != 0 and teenhome = 0 then 'Kid' 
when teenhome != 0 and kidhome = 0 then 'Teen' 
when teenhome != 0 and kidhome != 0 then 'Both'
else 'No' end

select case when kidhome != 0 and teenhome = 0 then 'Kid' 
when teenhome != 0 and kidhome = 0 then 'Teen' 
when teenhome != 0 and kidhome != 0 then 'Both'
else 'No' end as KidsAtHome, count(income) as amount
from marketing_data
where acceptedcmp3=1
group by case when kidhome != 0 and teenhome = 0 then 'Kid' 
when teenhome != 0 and kidhome = 0 then 'Teen' 
when teenhome != 0 and kidhome != 0 then 'Both'
else 'No' end

select case when kidhome != 0 and teenhome = 0 then 'Kid' 
when teenhome != 0 and kidhome = 0 then 'Teen' 
when teenhome != 0 and kidhome != 0 then 'Both'
else 'No' end as KidsAtHome, count(income) as amount
from marketing_data
where acceptedcmp4=1
group by case when kidhome != 0 and teenhome = 0 then 'Kid' 
when teenhome != 0 and kidhome = 0 then 'Teen' 
when teenhome != 0 and kidhome != 0 then 'Both'
else 'No' end

select case when kidhome != 0 and teenhome = 0 then 'Kid' 
when teenhome != 0 and kidhome = 0 then 'Teen' 
when teenhome != 0 and kidhome != 0 then 'Both'
else 'No' end as KidsAtHome, count(income) as amount
from marketing_data
where acceptedcmp5=1
group by case when kidhome != 0 and teenhome = 0 then 'Kid' 
when teenhome != 0 and kidhome = 0 then 'Teen' 
when teenhome != 0 and kidhome != 0 then 'Both'
else 'No' end

-- Looking at campaign success based on education level
select count(case when education_2n_cycle=1 then 1 end) as '2n_cycle', count(case when education_basic=1 then 1 end) as 'basic',
count(case when education_graduation=1 then 1 end) as 'graduate', count(case when education_master=1 then 1 end) as 'master',
count(case when education_phd=1 then 1 end) as 'phd'
from marketing_data
where acceptedcmp1=1

select count(case when education_2n_cycle=1 then 1 end) as '2n_cycle', count(case when education_basic=1 then 1 end) as 'basic',
count(case when education_graduation=1 then 1 end) as 'graduate', count(case when education_master=1 then 1 end) as 'master',
count(case when education_phd=1 then 1 end) as 'phd'
from marketing_data
where acceptedcmp2=1

select count(case when education_2n_cycle=1 then 1 end) as '2n_cycle', count(case when education_basic=1 then 1 end) as 'basic',
count(case when education_graduation=1 then 1 end) as 'graduate', count(case when education_master=1 then 1 end) as 'master',
count(case when education_phd=1 then 1 end) as 'phd'
from marketing_data
where acceptedcmp3=1

select count(case when education_2n_cycle=1 then 1 end) as '2n_cycle', count(case when education_basic=1 then 1 end) as 'basic',
count(case when education_graduation=1 then 1 end) as 'graduate', count(case when education_master=1 then 1 end) as 'master',
count(case when education_phd=1 then 1 end) as 'phd'
from marketing_data
where acceptedcmp4=1

select count(case when education_2n_cycle=1 then 1 end) as '2n_cycle', count(case when education_basic=1 then 1 end) as 'basic',
count(case when education_graduation=1 then 1 end) as 'graduate', count(case when education_master=1 then 1 end) as 'master',
count(case when education_phd=1 then 1 end) as 'phd'
from marketing_data
where acceptedcmp5=1

-- Looking at campaign success based on expenditure of different categories
select avg(mntwines) as AvgSpentOnWines, avg(mntfruits) as AvgSpentOnFruits, avg(mntmeatproducts) as AvgSpentOnMeat,
avg(mntfishproducts) as AvgSpentOnFish, avg(mntsweetproducts) as AvgSpentOnSweets, avg(mntgoldprods) as AvgSpentOnGold
from marketing_data
where acceptedcmp1=1

select avg(mntwines) as AvgSpentOnWines, avg(mntfruits) as AvgSpentOnFruits, avg(mntmeatproducts) as AvgSpentOnMeat,
avg(mntfishproducts) as AvgSpentOnFish, avg(mntsweetproducts) as AvgSpentOnSweets, avg(mntgoldprods) as AvgSpentOnGold
from marketing_data
where acceptedcmp2=1

select avg(mntwines) as AvgSpentOnWines, avg(mntfruits) as AvgSpentOnFruits, avg(mntmeatproducts) as AvgSpentOnMeat,
avg(mntfishproducts) as AvgSpentOnFish, avg(mntsweetproducts) as AvgSpentOnSweets, avg(mntgoldprods) as AvgSpentOnGold
from marketing_data
where acceptedcmp3=1

select avg(mntwines) as AvgSpentOnWines, avg(mntfruits) as AvgSpentOnFruits, avg(mntmeatproducts) as AvgSpentOnMeat,
avg(mntfishproducts) as AvgSpentOnFish, avg(mntsweetproducts) as AvgSpentOnSweets, avg(mntgoldprods) as AvgSpentOnGold
from marketing_data
where acceptedcmp4=1

select avg(mntwines) as AvgSpentOnWines, avg(mntfruits) as AvgSpentOnFruits, avg(mntmeatproducts) as AvgSpentOnMeat,
avg(mntfishproducts) as AvgSpentOnFish, avg(mntsweetproducts) as AvgSpentOnSweets, avg(mntgoldprods) as AvgSpentOnGold
from marketing_data
where acceptedcmp5=1

-- Looking at where people shop based on campaign
select avg(numwebpurchases) as AvgWebPurchases, avg(numcatalogpurchases) as AvgCatalogPurchases,
avg(numstorepurchases) as AvgStorePurchases
from marketing_data
where acceptedcmp1=1

select avg(numwebpurchases) as AvgWebPurchases, avg(numcatalogpurchases) as AvgCatalogPurchases,
avg(numstorepurchases) as AvgStorePurchases
from marketing_data
where acceptedcmp2=1

select avg(numwebpurchases) as AvgWebPurchases, avg(numcatalogpurchases) as AvgCatalogPurchases,
avg(numstorepurchases) as AvgStorePurchases
from marketing_data
where acceptedcmp3=1

select avg(numwebpurchases) as AvgWebPurchases, avg(numcatalogpurchases) as AvgCatalogPurchases,
avg(numstorepurchases) as AvgStorePurchases
from marketing_data
where acceptedcmp4=1

select avg(numwebpurchases) as AvgWebPurchases, avg(numcatalogpurchases) as AvgCatalogPurchases,
avg(numstorepurchases) as AvgStorePurchases
from marketing_data
where acceptedcmp5=1