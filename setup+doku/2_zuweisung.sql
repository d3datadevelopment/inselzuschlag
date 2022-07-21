UPDATE `oxuser`, `d3isles` SET oxuser.`OXCOUNTRYID` = d3isles.`OXISLESCOUNTRYID` 
	WHERE (oxuser.oxzip BETWEEN `d3isles`.`oxzipfrom` AND `d3isles`.`oxzipto`) AND oxuser.`OXCOUNTRYID` = d3isles.`OXCOUNTRYID` AND d3isles.`OXZIPFROM` IS NOT NULL AND d3isles.`OXZIPTO` IS NOT NULL;
