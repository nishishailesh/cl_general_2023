delimiter //
drop procedure if exists `calculate_eGFRcr` //
CREATE DEFINER=`rootuser`@`localhost` PROCEDURE `calculate_eGFRcr`(IN sid bigint)
begin

set @cr= '';
set @age= '';
set @sex= '';

set @e_cr= '';
set @e_age= '';
set @e_sex= '';
set @er='';


select result into @cr from result where sample_id=sid and examination_id=5001;
select result into @age from result where sample_id=sid and examination_id=1007;
select result into @sex from result where sample_id=sid and examination_id=1008;

if (CHAR_LENGTH(@cr)<1) then
  set @e_cr = 'cr?';
elseif (@cr<0.2) then
  set @e_cr = 'cr<LOQ?';
end if;

if (CHAR_LENGTH(@age)<1) then
  set @e_age = 'age?';
elseif (@age<1) then
  set @e_age = 'age<18?';
end if;

if (CHAR_LENGTH(@sex)<1) then
  set @e_sex = 'sex?';
elseif (@sex!='Male' && @sex!='Female') then
  set @e_sex = 'Sex must be M or F?';
elseif (@sex='Male') then
  set @kappa=0.9;
  set @alpha=-0.302;
  set @sex_factor=1;
elseif (@sex='Female') then
  set @kappa=0.7;
  set @alpha=-0.241;
  set @sex_factor=1.012;
end if;


set @er=concat(@e_age, @e_sex,@e_cr);
if(CHAR_LENGTH(@er)>0) then
  set @er = concat(@er,' eGFR can not be calculated');
  update result set result=@er where sample_id=sid and examination_id=5225;
else
  set @egfr= round(142 * power(least(@cr/@kappa,1),@alpha) * power(greatest(@cr/@kappa,1),-1.200) * power(0.9938,@age) * @sex_factor);
  update result set result=@egfr where sample_id=sid and examination_id=5225;
end if;

end //



call calculate_eGFRcr(539226)

show   create procedure `calculate_eGFRcr`
