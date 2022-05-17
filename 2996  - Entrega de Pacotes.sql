SELECT 
	packages.year
	,us.name
    ,ur.name
 FROM packages
 JOIN users AS us 
 	ON us.id = packages.id_user_sender
 JOIN users AS ur 
 	ON ur.id = packages.id_user_receiver
 WHERE (LOWER(us.address) <> 'taiwan'
        	AND LOWER(ur.address) <> 'taiwan')
        	AND (LOWER(packages.color) = 'blue' 
            OR packages.year = 2015)
ORDER BY packages.year DESC;
