select *
from scotch
where distillery = 56
order by name

update price
set scotch = 99
where scotch in (1420)

delete from scotch where
scotch_id in (1420)

select p.price, s.*
from scotch s, price p
where p.scotch = s.scotch_id
and s.scotch_id in (99
)



select distinct(retailer)
from price


update scotch set distillery=56,  meta_critic=8.43, stdev=0.27, super_cluster='ABC', cluster='B' where name='1991 18yo (Gordon & MacPhail)' and distillery=56;

update scotch set distillery=140, meta_critic=8.17, stdev=0.51, super_cluster='GH',  cluster='G' where name='10 Year Old' and distillery=140;

update scotch set distillery=41,  meta_critic=8.67, stdev=0.22, super_cluster='ABC', cluster='C' where name='Hazelburn 12yo (Springbank)' and distillery=41;
update scotch set distillery=41,  meta_critic=8.42, stdev=0.37, super_cluster='GH',  cluster='G' where name='Hazelburn 8yo (Springbank)' and distillery=41;

update scotch set distillery=26,  meta_critic=8.54, stdev=0.3,  super_cluster='I',   cluster='I' where name='10 Year Old' and distillery=26;
update scotch set distillery=26,  meta_critic=8.68, stdev=0.23, super_cluster='I',   cluster='I' where name='12yo (all reviews)' and distillery=26;
update scotch set distillery=26,  meta_critic=8.39, stdev=0.4,  super_cluster='I',   cluster='I' where name='12yo (reviews post-mid 2014)' and distillery=26;
update scotch set distillery=26,  meta_critic=8.83, stdev=0.26, super_cluster='I',   cluster='I' where name='12yo (reviews pre-mid 2014)' and distillery=26;
update scotch set distillery=26,  meta_critic=9.15, stdev=0.3,  super_cluster='ABC', cluster='C' where name='16yo Odin' and distillery=26;
update scotch set distillery=26,  meta_critic=9.17, stdev=0.26, super_cluster='ABC', cluster='C' where name='18 Year Old' and distillery=26;
update scotch set distillery=26,  meta_critic=8.89, stdev=0.41, super_cluster='ABC', cluster='C' where name='21 Year Old' and distillery=26;
update scotch set distillery=26,  meta_critic=9.2   stdev=0.25, super_cluster='ABC', cluster='C' where name='25 Year Old' and distillery=26;
update scotch set distillery=26,  meta_critic=9.06, stdev=0.42, super_cluster='ABC', cluster='C' where name='30 Year Old' and distillery=26;
update scotch set distillery=26,  meta_critic=9.07, stdev=0.39, super_cluster='ABC', cluster='C' where name='40 Year Old' and distillery=26;
update scotch set distillery=26,  meta_critic=8.51, stdev=0.53, super_cluster='ABC', cluster='C' where name='Dark Origins' and distillery=26;
update scotch set distillery=26,  meta_critic=8.33, stdev=0.47, super_cluster='I',   cluster='I' where name='Einar' and distillery=26;
update scotch set distillery=26,  meta_critic=9.09, stdev=0.32, super_cluster='I',   cluster='I' where name='Sigurd' and distillery=26;
update scotch set distillery=26,  meta_critic=8.33, stdev=0.16, super_cluster='GH',  cluster='G' where name='Svein' and distillery=26;

update scotch set distillery=107, meta_critic=8.7   stdev=0.49, super_cluster='GH',  cluster='H' where name='14yo (F&F)' and distillery=107;

update scotch set distillery=27,  meta_critic=8.03, stdev=0.41, super_cluster='I',   cluster='I' where name='10yo Origin' and distillery=27;
update scotch set distillery=27,  meta_critic=8.33, stdev=0.52, super_cluster='ABC', cluster='C' where name='12yo Elixir' and distillery=27;
update scotch set distillery=27,  meta_critic=8.81, stdev=0.24, super_cluster='ABC', cluster='C' where name='Brooklyn' and distillery=27;
update scotch set distillery=27,  meta_critic=8.68, stdev=0.34, super_cluster='J',   cluster='J' where name='Prophecy' and distillery=27;
update scotch set distillery=27,  meta_critic=8.22, stdev=0.49, super_cluster='I',   cluster='I' where name='Superstition' and distillery=27;

update scotch set distillery=89,  meta_critic=8.79, stdev=0.29, super_cluster='J',   cluster='J' where name='100% Islay (all editions)' and distillery=89;
update scotch set distillery=89,  meta_critic=9.06, stdev=0.17, super_cluster='J',   cluster='J' where name='Loch Gorm' and distillery=89;
update scotch set distillery=89,  meta_critic=8.82, stdev=0.27, super_cluster='J',   cluster='J' where name='Machir Bay (2012/2013/2014)' and distillery=89;
update scotch set distillery=89,  meta_critic=8.54, stdev=0.17, super_cluster='J',   cluster='J' where name='Winter 2010 Release' and distillery=89;

update scotch set distillery=29,  meta_critic=9.23, stdev=0.14, super_cluster='J',   cluster='J' where name='12yo Cask Strength' and distillery=29;
update scotch set distillery=29,  meta_critic=9.3   stdev=0.26, super_cluster='J',   cluster='J' where name='16 Year Old' and distillery=29;
update scotch set distillery=29,  meta_critic=9.12, stdev=0.28, super_cluster='J',   cluster='J' where name='Distiller''s Edition (All Vintages)' and distillery=29;

update scotch set distillery=30,  meta_critic=8.92, stdev=0.26, super_cluster='J',   cluster='J' where name='10 Year Old' and distillery=30;
update scotch set distillery=30,  meta_critic=9.07, stdev=0.22, super_cluster='J',   cluster='J' where name='10yo Cask Strength (all batches)' and distillery=30;
update scotch set distillery=30,  meta_critic=8.85, stdev=0.32, super_cluster='J',   cluster='J' where name='15yo (200th Anniversary)' and distillery=30;
update scotch set distillery=30,  meta_critic=9.07, stdev=0.3,  super_cluster='J',   cluster='J' where name='18 Year Old' and distillery=30;
update scotch set distillery=30,  meta_critic=9.21, stdev=0.3,  super_cluster='ABC', cluster='C' where name='25 Year Old' and distillery=30;
update scotch set distillery=30,  meta_critic=8.82, stdev=0.52, super_cluster='ABC', cluster='C' where name='Cairdeas 2013 Port Wood' and distillery=30;
update scotch set distillery=30,  meta_critic=9.02, stdev=0.22, super_cluster='J',   cluster='J' where name='Cairdeas 2014 Amontillado' and distillery=30;
update scotch set distillery=30,  meta_critic=9.16, stdev=0.2,  super_cluster='J',   cluster='J' where name='Cairdeas 2015' and distillery=30;
update scotch set distillery=30,  meta_critic=9.1,  stdev=0.22, super_cluster='J',   cluster='J' where name='Quarter Cask   9.1' and distillery=30;

update scotch set distillery=59,  meta_critic=8.22, stdev=0.37, super_cluster='I',   cluster='I' where name='10yo (Tobermory)' and distillery=59;

update scotch set distillery=81,  meta_critic=8.61, stdev=0.37, super_cluster='GH',  cluster='H' where name='12yo (F&F)' and distillery=81;

update scotch set distillery=88  meta_critic=7.3   stdev=0.46, super_cluster='GH',  cluster='H' where name='Loch Lomond' and distillery=88;

update scotch set distillery=33,  meta_critic=8.69, stdev=0.34, super_cluster='ABC', cluster='C' where name='16 Year Old' and distillery=33;

update scotch set distillery=41,  meta_critic=8.81, stdev=0.26, super_cluster='I',   cluster='I' where name='Longrow Peated (NAS)' and distillery=41;

update scotch set distillery=34,  meta_critic=8.23, stdev=0.33, super_cluster='EF',  cluster='E' where name='10yo Fine Oak' and distillery=34;
update scotch set distillery=34,  meta_critic=8.48, stdev=0.41, super_cluster='GH',  cluster='G' where name='12yo Fine Oak' and distillery=34;
update scotch set distillery=34,  meta_critic=8.35, stdev=0.39, super_cluster='EF',  cluster='E' where name='1824 Amber' and distillery=34;
update scotch set distillery=34,  meta_critic=8.3,  stdev=0.3,  super_cluster='GH',  cluster='G' and distillery=34 and name='1824 Gold';
update scotch set distillery=34,  meta_critic=8.76, stdev=0.46, super_cluster='ABC', cluster='A' where name='1824 Rare Cask' and distillery=34;
update scotch set distillery=34,  meta_critic=8.82, stdev=0.2,  super_cluster='ABC', cluster='A' where name='1824 Ruby' and distillery=34;
update scotch set distillery=34,  meta_critic=8.84, stdev=0.33, super_cluster='ABC', cluster='C' where name='1824 Sienna' and distillery=34;
update scotch set distillery=34,  meta_critic=8.83, stdev=0.33, super_cluster='ABC', cluster='C' where name='18yo Fine Oak' and distillery=34;
update scotch set distillery=34,  meta_critic=8.59, stdev=0.37, super_cluster='ABC', cluster='C' where name='30yo Fine Oak' and distillery=34;

update scotch set distillery=146, meta_critic=8.26, stdev=0.13, super_cluster='GH',  cluster='G' where name='12yo (F&F)' and distillery=146;

update scotch set distillery=76,  meta_critic=8.07, stdev=0.48, super_cluster='EF',  cluster='E' where name='10yo (F&F)' and distillery=76;

update scotch set distillery=36,  meta_critic=8.72, stdev=0.4,  super_cluster='ABC', cluster='C' where name='15yo (Gordon & MacPhail)' and distillery=36;
update scotch set distillery=36,  meta_critic=8.69, stdev=0.32, super_cluster='ABC', cluster='C' where name='16yo (F&F)' and distillery=36;
update scotch set distillery=36,  meta_critic=8.71, stdev=0.73, super_cluster='EF',  cluster='E' where name='18 Year Old' and distillery=36;
update scotch set distillery=36,  meta_critic=8.56, stdev=0.4,  super_cluster='EF',  cluster='E' where name='Rare Old' and distillery=36;
update scotch set distillery=36,  meta_critic=8.74, stdev=0.64, super_cluster='EF',  cluster='E' where name='Special Strength' and distillery=36;

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
update scotch set distillery=41,  meta_critic=8.86, stdev=0.31, super_cluster='ABC', cluster='C' where name='12yo Cask Strength' and distillery=41;
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

update scotch set distillery=66,  meta_critic=8.13, stdev=0.18, super_cluster='EF',  cluster='F' where name='10yo (F&F)' and distillery=66;

update scotch set distillery=59,  meta_critic=8.21, stdev=0.46, super_cluster='EF',  cluster='F' where name='10 Year Old' and distillery=59;
update scotch set distillery=59,  meta_critic=8.53, stdev=0.37, super_cluster='ABC', cluster='C' where name='15 Year Old' and distillery=59;

update scotch set distillery=44,  meta_critic=7.83, stdev=0.65, super_cluster='EF',  cluster='E' where name='12 Year Old' and distillery=44;
update scotch set distillery=44,  meta_critic=8.64, stdev=0.44, super_cluster='ABC', cluster='C' where name='14yo Portwood' and distillery=44;
update scotch set distillery=44,  meta_critic=8.33, stdev=0.14, super_cluster='EF',  cluster='E' where name='15 Year Old' and distillery=44;
update scotch set distillery=44,  meta_critic=8.68, stdev=0.23, super_cluster='ABC', cluster='C' where name='18 Year Old' and distillery=44;
update scotch set distillery=44,  meta_critic=8.09, stdev=0.33, super_cluster='GH',  cluster='H' where name='Cu Bocan' and distillery=44;
update scotch set distillery=44,  meta_critic=8.95, stdev=0.33, super_cluster='I',   cluster='I' where name='Cu Bocan 1989 Limited Edition' and distillery=44;
update scotch set distillery=44,  meta_critic=8.39, stdev=0.37, super_cluster='ABC', cluster='C' where name='Cu Bocan Sherry Edition' and distillery=44;
update scotch set distillery=44,  meta_critic=8.52, stdev=0.49, super_cluster='GH',  cluster='H' where name='Cu Bocan Virgin Oak Edition' and distillery=44;
update scotch set distillery=44,  meta_critic=8.26, stdev=0.48, super_cluster='GH',  cluster='G' where name='Legacy' and distillery=44;

update scotch set distillery=45,  meta_critic=7.87, stdev=0.3,  super_cluster='GH',  cluster='G' where name='10 Year Old' and distillery=45;
update scotch set distillery=45,  meta_critic=8.28, stdev=0.6,  super_cluster='EF',  cluster='E' where name='12yo Oloroso Sherry' and distillery=45;
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

update scotch set distillery=165, meta_critic=8.0,  stdev=0.56, super_cluster='GH',  cluster='H' where name='12yo (F&F)' and distillery=165;

update scotch set distillery=109, meta_critic=8.0,  stdev=0.61, super_cluster='EF',  cluster='E' where name='Singleton of Dufftown 12 Year Old' and distillery=109;

update scotch set distillery=3,   meta_critic=9.0,  stdev=0.31, super_cluster='J',   cluster='J' where name='Auriverdes' and distillery=3;


select *
from scotch
where age = 75

select *
from producer where producer_id = 73

