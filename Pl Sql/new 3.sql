select  
concat('123abc456' div 1,reverse( reverse('123abc456') div 1)), 
		concat(replace('123abc456',concat('123abc456' div 1,''), 
				replace( left('123abc456',length('123abc456' div 1)),
							reverse( reverse(right('123abc456',length('123abc456') - length('123abc456' div 1))) div 1),'');
							
							
							
							
select  
concat(concat('123abc456' div 1,reverse( reverse('123abc456') div 1)), replace('123abc456',''123abc456' div 1'));




select 
	concat('123abc456' div 1,reverse( reverse('123abc456') div 1)) number, 
	replace(
			right('123abc456',6), 
			reverse(
					reverse(
							replace(
									'123abc456',
									left('123abc456',3),
									''))div 1),
			'') string;
                            