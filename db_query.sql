SELECT item.*
FROM t_item item

JOIN t_item_comment comment 
	ON item.pk_i_id = comment.fk_i_item_id
    
JOIN t_user user
	ON comment.fk_i_user_id = user.pk_i_id
    
JOIN t_city city
	ON user.fk_i_city_id =  city.pk_i_id
    
    WHERE city.pk_i_id = 1;
    