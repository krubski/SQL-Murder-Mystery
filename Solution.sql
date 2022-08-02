--https://mystery.knightlab.com/
/*
--Security footage shows that there were 2 witnesses. The first witness lives at the last house on "Northwestern Dr". The second witness, named Annabel, lives somewhere on "Franklin Ave".
SELECT *
FROM crime_scene_report
WHERE date = 20180115 AND city = 'SQL City' AND type = 'murder';
*/

/*
--Morty Schapiro ID: 14887
SELECT *
FROM person
WHERE address_street_name = 'Northwestern Dr'
ORDER BY address_number DESC;
*/

/*
--Annabel Miller ID: 16371
SELECT *
FROM person
WHERE address_street_name = 'Franklin Ave';
*/           

/*
--Morty
--I heard a gunshot and then saw a man run out. He had a "Get Fit Now Gym" bag. The membership number on the bag started with "48Z". Only gold members have those bags. The man got into a car with a plate that included "H42W".
SELECT *
FROM interview
WHERE person_id = 14887;
*/

/*
--Annabel
--I saw the murder happen, and I recognized the killer from my gym when I was working out last week on January the 9th.
SELECT *
FROM interview
WHERE person_id = 16371;
*/

/*
SELECT *
FROM get_fit_now_check_in
WHERE check_in_date = 20180109;
*/

/*
--Jeremy Bowers (67318) or Joe Germuska (28819) are both Gold members from Jan 9 
SELECT *
FROM get_fit_now_member
WHERE id IN ('48Z7A','48Z55')
*/

/*
--Jeremy Bowers (license: 423327) or Joe Germuska (license: 173289) are both Gold members from Jan 9 
SELECT *
FROM person
WHERE id IN ('67318','28819');
*/

/*
--Jeremy Bowers
SELECT *
FROM drivers_license
WHERE id IN ('173289','423327');
*/

/*
--Jeremy Bowers
--I was hired by a woman with a lot of money. I don't know her name but I know she's around 5'5" (65") or 5'7" (67"). She has red hair and she drives a Tesla Model S. I know that she attended the SQL Symphony Concert 3 times in December 2017.
SELECT *
FROM interview
WHERE person_id = 67318;
*/

/*
--99716
SELECT *
FROM facebook_event_checkin
WHERE event_name = 'SQL Symphony Concert'
	AND date >= '20171201' AND date < '20180101'
ORDER by person_id;
*/

/*
--Miranda Priestly (license ID: 202298 ssn: 987756388)
SELECT *
FROM person
WHERE id = 99716;
*/

/*
CONFIRMED
SELECT *
FROM drivers_license
WHERE id = '202298';
*/

--CONFIRMED
SELECT *
FROM income
WHERE ssn = 987756388;