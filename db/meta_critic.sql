select *
from scotch
where distillery = 36
--and name like '%Rare%'
order by name



update price
set scotch = 82
where scotch in (1526, 1776)

delete from scotch where
scotch_id in (1526, 1776)

select *
from price 
where scotch = 1832

select p.price, s.*
from scotch s, price p
where p.scotch = s.scotch_id
and s.scotch_id in (601,
1021,
1022
)

select distinct(retailer)
from price


update scotch set distillery=38,  meta_critic=8.43, stdev=0.44, super_cluster='I',   cluster='I' where name='14 Year Old' and distillery=38;
update scotch set distillery=38,  meta_critic=8.51, stdev=0.33, super_cluster='I',   cluster='I' where name='Little Bay' and distillery=38;

update scotch set distillery=39,  meta_critic=8.44, stdev=0.3,  super_cluster='EF',  cluster='E' where name='12 Year Old' and distillery=39;
update scotch set distillery=39,  meta_critic=8.85, stdev=0.29, super_cluster='EF',  cluster='E' where name='17 Year Old' and distillery=39;
update scotch set distillery=39,  meta_critic=8.66, stdev=0.65, super_cluster='GH',  cluster='H' where name='21 Year Old' and distillery=39;
update scotch set distillery=39,  meta_critic=8.42, stdev=0.31, super_cluster='EF',  cluster='E' where name='Navigator' and distillery=39;

update scotch set distillery=117, meta_critic=8.37, stdev=0.56, super_cluster='EF',  cluster='E' where name='12 Year Old' and distillery=117;

update scotch set distillery=151, meta_critic=7.83, stdev=0.32, super_cluster='ABC', cluster='C' where name='12 Year Old' and distillery=151;

update scotch set distillery=99,  meta_critic=8.27, stdev=0.29, super_cluster='EF',  cluster='E' where name='16 Year Old' and distillery=99;
update scotch set distillery=99,  meta_critic=7.63, stdev=0.11, super_cluster='EF',  cluster='E' where name='Skiren' and distillery=99;

update scotch set distillery=40,  meta_critic=8.01, stdev=0.33, super_cluster='GH',  cluster='H' where name='10 Year Old' and distillery=40;

update scotch set distillery=58,  meta_critic=7.65, stdev=0.71, super_cluster='EF',  cluster='E' where name='10 Year Old' and distillery=58;
update scotch set distillery=58,  meta_critic=7.82, stdev=0.65, super_cluster='GH',  cluster='H' where name='12 Year Old' and distillery=58;

update scotch set distillery=41,  meta_critic=8.69, stdev=0.28, super_cluster='I',   cluster='I' where name='10 Year Old' and distillery=41;
update scotch set distillery=41,  meta_critic=8.86, stdev=0.31, super_cluster='ABC', cluster='C' where name='12 Year Old Cask Strength' and distillery=41;
update scotch set distillery=41,  meta_critic=8.74, stdev=0.26, super_cluster='ABC', cluster='C' where name='15 Year Old' and distillery=41;
update scotch set distillery=41,  meta_critic=8.97, stdev=0.2,  super_cluster='I',   cluster='I' where name='18 Year Old' and distillery=41;

update scotch set distillery=71,  meta_critic=8.27, stdev=0.28, super_cluster='EF',  cluster='E' where name='12 Year Old' and distillery=71;

update scotch set distillery=101, meta_critic=8.36, stdev=0.3,  super_cluster='GH',  cluster='G' where name='12 Year Old' and distillery=101;
update scotch set distillery=101, meta_critic=8.84, stdev=0.44, super_cluster='EF',  cluster='E' where name='25 Year Old' and distillery=101;

update scotch set distillery=42,  meta_critic=8.92, stdev=0.22, super_cluster='I',   cluster='I' where name='10 Year Old' and distillery=42;
update scotch set distillery=42,  meta_critic=9.25, stdev=0.21, super_cluster='I',   cluster='I' where name='18 Year Old' and distillery=42;
update scotch set distillery=42,  meta_critic=8.95, stdev=0.26, super_cluster='I',   cluster='I' where name='25 Year Old' and distillery=42;
update scotch set distillery=42,  meta_critic=9.01, stdev=0.25, super_cluster='I',   cluster='I' where name='57 North' and distillery=42;
update scotch set distillery=42,  meta_critic=8.78, stdev=0.13, super_cluster='I',   cluster='I' where name='Dark Storm' and distillery=42;
update scotch set distillery=42,  meta_critic=8.92, stdev=0.29, super_cluster='I',   cluster='I' where name='Distiller''s Edition (all editions)' and distillery=42;
update scotch set distillery=42,  meta_critic=8.55, stdev=0.45, super_cluster='ABC', cluster='C' where name='Port Ruighe' and distillery=42;
update scotch set distillery=42,  meta_critic=8.45, stdev=0.3,  super_cluster='GH',  cluster='G' where name='Skye' and distillery=42;
update scotch set distillery=42,  meta_critic=8.64, stdev=0.29, super_cluster='I',   cluster='I' where name='Storm' and distillery=42;

update scotch set distillery=102, meta_critic=8.21, stdev=0.73, super_cluster='GH',  cluster='H' where name='10 Year Old' and distillery=102;

update scotch set distillery=153, meta_critic=7.62, stdev=0.93, super_cluster='GH',  cluster='H' where name='12 Year Old' and distillery=153;

update scotch set distillery=66,  meta_critic=8.13, stdev=0.18, super_cluster='EF',  cluster='F' where name='10 Year Old (F&F)' and distillery=66;

update scotch set distillery=59,  meta_critic=8.21, stdev=0.46, super_cluster='EF',  cluster='F' where name='10 Year Old' and distillery=59;
update scotch set distillery=59,  meta_critic=8.53, stdev=0.37, super_cluster='ABC', cluster='C' where name='15 Year Old' and distillery=59;

update scotch set distillery=44,  meta_critic=7.83, stdev=0.65, super_cluster='EF',  cluster='E' where name='12 Year Old' and distillery=44;
update scotch set distillery=44,  meta_critic=8.64, stdev=0.44, super_cluster='ABC', cluster='C' where name='14 Year Old Portwood' and distillery=44;
update scotch set distillery=44,  meta_critic=8.33, stdev=0.14, super_cluster='EF',  cluster='E' where name='15 Year Old' and distillery=44;
update scotch set distillery=44,  meta_critic=8.68, stdev=0.23, super_cluster='ABC', cluster='C' where name='18 Year Old' and distillery=44;
update scotch set distillery=44,  meta_critic=8.09, stdev=0.33, super_cluster='GH',  cluster='H' where name='Cu Bocan' and distillery=44;
update scotch set distillery=44,  meta_critic=8.95, stdev=0.33, super_cluster='I',   cluster='I' where name='Cu Bocan 1989 Limited Edition' and distillery=44;
update scotch set distillery=44,  meta_critic=8.39, stdev=0.37, super_cluster='ABC', cluster='C' where name='Cu Bocan Sherry Edition' and distillery=44;
update scotch set distillery=44,  meta_critic=8.52, stdev=0.49, super_cluster='GH',  cluster='H' where name='Cu Bocan Virgin Oak Edition' and distillery=44;
update scotch set distillery=44,  meta_critic=8.26, stdev=0.48, super_cluster='GH',  cluster='G' where name='Legacy' and distillery=44;

update scotch set distillery=45,  meta_critic=7.87, stdev=0.3,  super_cluster='GH',  cluster='G' where name='10 Year Old' and distillery=45;
update scotch set distillery=45,  meta_critic=8.28, stdev=0.6,  super_cluster='EF',  cluster='E' where name='12 Year Old Oloroso Sherry' and distillery=45;
update scotch set distillery=45,  meta_critic=8.43, stdev=0.48, super_cluster='GH',  cluster='G' where name='16 Year Old' and distillery=45;
update scotch set distillery=45,  meta_critic=7.96, stdev=0.79, super_cluster='J',   cluster='J' where name='Peaty Tang' and distillery=45;

update scotch set distillery=154, meta_critic=7.83, stdev=0.4,  super_cluster='GH',  cluster='G' where name='12 Year Old' and distillery=154;
update scotch set distillery=154, meta_critic=8.05, stdev=0.28, super_cluster='GH',  cluster='G' where name='14 Year Old' and distillery=154;

update scotch set distillery=103, meta_critic=7.98, stdev=0.38, super_cluster='ABC', cluster='B' where name='1993 Port' and distillery=103;
update scotch set distillery=103, meta_critic=8.25, stdev=0.37, super_cluster='EF',  cluster='E' where name='1993 Sauternes' and distillery=103;
update scotch set distillery=103, meta_critic=8.68, stdev=0.32, super_cluster='GH',  cluster='G' where name='20 Year Old' and distillery=103;
update scotch set distillery=103, meta_critic=8.41, stdev=0.47, super_cluster='EF',  cluster='E' where name='225 Sauternes Finish' and distillery=103;
update scotch set distillery=103, meta_critic=8.17, stdev=0.46, super_cluster='GH',  cluster='G' where name='Aged Oak Edition' and distillery=103;
update scotch set distillery=103, meta_critic=8.3,  stdev=0.5,  super_cluster='GH',  cluster='G' where name='Vintage 1993' and distillery=103;

update scotch set distillery=165, meta_critic=8.0,  stdev=0.56, super_cluster='GH',  cluster='H' where name='12 Year Old (F&F)' and distillery=165;

update scotch set distillery=109, meta_critic=8.0,  stdev=0.61, super_cluster='EF',  cluster='E' where name='Singleton of Dufftown 12 Year Old' and distillery=109;

update scotch set distillery=3,   meta_critic=9.0,  stdev=0.31, super_cluster='J',   cluster='J' where name='Auriverdes' and distillery=3;


select *
from scotch
where age = 75

select *
from producer where producer_id = 73
