select  accountid,userinfo.userid,realname,organ.organid,organname,post.postid,postname from account 
			join userinfo on account.userid=userinfo.userid
			join organ on organ.organid=userinfo.organid
			join post on userinfo.postid=post.postid
			where 1=1 			
<#if accountId ?exists>
	and accountid = ${accountId}
</#if>
