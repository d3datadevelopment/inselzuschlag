UPDATE `oxuser`, `d3isles` SET oxuser.`OXCOUNTRYID` = d3isles.`OXISLESCOUNTRYID` 
	WHERE oxuser.oxzip = d3isles.oxzip AND oxuser.`OXCOUNTRYID` = d3isles.`OXCOUNTRYID` AND d3isles.`OXZIP` IS NOT NULL;
