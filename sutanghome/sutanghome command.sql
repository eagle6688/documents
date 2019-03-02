#Select all payment for display.
select p.id, u.name userName, p.type, p.cost, p.medium, p.time, p.description, p.creatorid, p.created, p.updated
from payment p
inner join user u on p.userid = u.id and u.deleted = 0
where p.deleted = 0
order by time desc, created desc;

#Select all shopping for display.
select p.id, u.name userName, p.type, s.channel, p.cost, p.medium, p.time, p.description, p.creatorid, p.created, p.updated
from payment p
inner join shopping s on p.id = s.paymentid
inner join user u on p.userid = u.id and u.deleted = 0
where p.deleted = 0;

#Select all transfer for display.
select p.id, fu.name userName, p.type, t.to_user_id toUserId, tu.name toUser, p.cost, p.medium, p.time, p.description, p.creatorid, p.created, p.updated
from (select * from payment where userid = 13) p
join transfer t on p.id = t.paymentid
inner join user fu on p.userid = fu.id and fu.deleted = 0
inner join user tu on t.to_user_id = tu.id and tu.deleted = 0
union
select p.id, fu.name userName, p.type, t.to_user_id toUserId, tu.name toUser, p.cost, p.medium, p.time, p.description, p.creatorid, p.created, p.updated
from payment p
join (select * from transfer where to_user_id = 13) t on p.id = t.paymentid
inner join user fu on p.userid = fu.id and fu.deleted = 0
inner join user tu on t.to_user_id = tu.id and tu.deleted = 0;
