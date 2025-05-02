/****** Script for SelectTopNRows command from SSMS  ******/
---looking for total number of players under 21 with a potential of greater than 85
SELECT 
	count(*)
  FROM [mboka].[dbo].[fifa players]
  where Potential > 85
  and Age <= 21
  

---looking for experienced players with overall greater than 78 and above 33 years
select 
	Name,
	Overall,
	Wage,
	Value,
	Position
	from mboka.dbo.[fifa players]
	where Age > 30 
	and Overall > 78
	order by Overall desc, Wage desc, Position


---the total number of postions
select
	COUNT(distinct Position)
	from mboka.dbo.[fifa players]
	where Position is not null


---average overall rating of all players
select 
	AVG(Overall) 
	from mboka.dbo.[fifa players]


 ---the count of different catergories of work rates per position
SELECT
	Position,
	Work_Rate,
	count(Work_Rate)
	from mboka.dbo.[fifa players]
	where Position IS not NULL
	group by Position, Work_Rate
	order by Position, count(Work_Rate) desc
	


----the list of all players and their attributes with a potential rating of above 85 for age less than 21 according to various positions	
CREATE VIEW potential_players as
select 
	*
	from [mboka].[dbo].[fifa players]
  where Potential > 85
  and Age <= 21;

SELECT 
	Name,
	Age,
	Overall,
	Potential,
	Position,
	Value,
	Wage,
	GKDiving,
	GKHandling,
	GKKicking,
	GKPositioning,
	GKReflexes,
	LongPassing,
	ShortPassing
  FROM potential_players
  where Position = 'GK'
  order by Value desc, Potential desc



SELECT 
	Name,
	Age,
	Overall,
	Potential,
	Position,
	Value,
	Wage,
	StandingTackle,
	SlidingTackle,
	SprintSpeed,
	LongPassing,
	ShortPassing,
	HeadingAccuracy
  FROM potential_players
  where Position IN ('CB','LCB', 'RCB')
  order by Overall desc, Value desc, Potential desc

SELECT 
	Name,
	Age,
	Overall,
	Potential,
	Position,
	Value,
	Wage,
	StandingTackle,
	SlidingTackle,
	SprintSpeed,
	LongPassing,
	ShortPassing,
	HeadingAccuracy,
	Reactions,
	Strength, 
	Aggression,
	Agility
  FROM potential_players
  where Position IN ('CB','LCB', 'RCB')
  order by Overall desc, Value desc, Potential desc



SELECT 
	Name,
	Age,
	Overall,
	Potential,
	Position,
	Value,
	Wage,
	StandingTackle,
	SlidingTackle,
	SprintSpeed,
	LongPassing,
	ShortPassing,
	HeadingAccuracy,
	Crossing,
	Reactions,
	Stamina
  FROM potential_players
  where Position IN ('RB','LWB', 'RWB','LB')
  order by Overall desc, Value desc, Potential desc

SELECT 
	Name,
	Age,
	Overall,
	Potential,
	Position,
	Value,
	Wage,
	StandingTackle,
	SlidingTackle,
	SprintSpeed,
	LongPassing,
	ShortPassing,
	LongShots,
	ShotPower,
	Work_Rate,
	Stamina,
	Strength,
	Interceptions,
	Aggression
  FROM potential_players
  where Position IN ('CDM', 'LDM', 'RDM')
  order by Overall desc, Value desc, Potential desc



SELECT 
	Name,
	Age,
	Overall,
	Potential,
	Position,
	Value,
	Wage,
	StandingTackle,
	SlidingTackle,
	SprintSpeed,
	LongPassing,
	ShortPassing,
	LongShots,
	ShotPower,
	Work_Rate,
	Stamina,
	Strength,
	Crossing,
	SprintSpeed,
	Weak_Foot
  FROM potential_players
  where Position IN ('CAM', 'LAM', 'RAM', 'CM', 'RCM', 'LCM')
  order by Overall desc, Value desc, Potential desc

SELECT 
	Name,
	Age,
	Overall,
	Potential,
	Position,
	Value,
	Wage,
	SprintSpeed,
	LongPassing,
	ShortPassing,
	LongShots,
	ShotPower,
	Work_Rate,
	Stamina,
	Strength,
	Crossing,
	SprintSpeed,
	Weak_Foot,
	Agility
  FROM potential_players
  where Position IN ('RW', 'LW')
  order by Overall desc, Value desc, Potential desc

SELECT 
	Name,
	Age,
	Overall,
	Potential,
	Position,
	Value,
	Wage,
	SprintSpeed,
	LongPassing,
	ShortPassing,
	LongShots,
	ShotPower,
	Work_Rate,
	Stamina,
	Strength,
	Crossing,
	SprintSpeed,
	Weak_Foot,
	Agility
  FROM potential_players
  where Position IN ('RF', 'LF', 'CF')
  order by Overall desc, Value desc, Potential desc

SELECT 
	Name,
	Age,
	Overall,
	Potential,
	Position,
	Value,
	Wage,
	SprintSpeed,
	LongPassing,
	ShortPassing,
	LongShots,
	ShotPower,
	Work_Rate,
	Stamina,
	Strength,
	Crossing,
	SprintSpeed,
	Weak_Foot,
	Agility
  FROM potential_players
  where Position IN ('RS', 'LS', 'ST')
  order by Overall desc, Value desc, Potential desc


----the list of all players and their attributes with an overall rating of 81 to 88 for ages 24 to 29 according to various positions
--DROP VIEW top_players
CREATE VIEW  top_players as
	select
	*
	from mboka.dbo.[fifa players]
	where Overall between 81 and 88
	and Age >= 24 and Age <=29;

select 
	*
	from top_players
	where Position = 'GK'
	order by Overall desc, Value desc, Wage desc

select 
	*
	from top_players
	where Position IN ('CB', 'LCB', 'RCB')
	order by Overall desc, Value desc, Wage desc

select 
	*
	from top_players
	where Position IN ('RB','LWB', 'RWB','LB')
	order by Overall desc, Value desc, Wage desc

select 
	*
	from top_players
	where Position IN ('CDM', 'LDM', 'RDM')
	order by Overall desc, Value desc, Wage desc

select 
	*
	from top_players
	where Position IN ('CAM', 'LAM', 'RAM', 'CM', 'RCM', 'LCM')
	order by Overall desc, Value desc, Wage desc

select 
	*
	from top_players
	where Position IN ('RW', 'LW')
	order by Overall desc, Value desc, Wage desc

select 
	*
	from top_players
	where Position IN ('RF', 'LF', 'CF')
	order by Overall desc, Value desc, Wage desc

select 
	*
	from top_players
	where Position IN ('RS', 'LS', 'ST')
	order by Overall desc, Value desc, Wage desc


---the number of players for each nationality
select
	Nationality,
	count(Nationality)
	from mboka.dbo.[fifa players]
	--where Nationality = 'Kenya'
	group by Nationality
	order by count(Nationality) desc
	--order by Overall desc



---top 20 highest ranked players in the game
select 
	top 20  * from(select
	Name,
	Age,
	Overall,
	Club,
	Value,
	Wage,
	dense_rank() over (order by Overall desc) as ranking
	from mboka.dbo.[fifa players]
	--order by dense_rank() over (order by Overall) desc
	)ts


---number of players per position
select
	Position,
	count(Position)
	from mboka.dbo.[fifa players]
	group by Position
	order by count(Position) desc


---the count of positions grouped by nationality and position when the overall is higher than the average overall
select 
	Nationality,
	Position,
	count(Position) 
	from mboka.dbo.[fifa players]
	where Position is not null 
	and Overall > (select AVG(overall) from mboka.dbo.[fifa players])
	group by Nationality, Position
	order by count(Position) desc


---Highest Overall According to Club
select
	Club,
	AVG(Overall) as average
	from mboka.dbo.[fifa players]
	where Club is not null
	group by Club
	order by AVG(Overall) desc


---Highest Overall according to nationality
select
	Nationality,
	AVG(Overall) as average
	from mboka.dbo.[fifa players]
	where Nationality is not null
	group by Nationality
	order by AVG(Overall) desc

---percentage of left football players and right football players
select 
	count(case when Preferred_Foot = 'Right' then 1 end)as right_footer,
	count(case when Preferred_Foot = 'Left' then 1 end)as left_footer,
	round(count(case when Preferred_Foot = 'Left' then 1 end) * 100.0/count(*), 2) left_footers_percentage,
	round(count(case when Preferred_Foot = 'Right' then 1 end) * 100.0/count(*), 2) right_footers_percentage
	from mboka.dbo.[fifa players]
	where Preferred_Foot is not null

---Calculating the average age of players according to clubs ordered by average age and average potential
select
	Club,
	AVG(Age) average_age,
	AVG(Overall) avgOverall,
	AVG(Potential) average_potential
	from mboka.dbo.[fifa players]
	--where Club like '%Arsenal%'
	group by Club
	order by AVG(Age), AVG(Potential) desc

---clubs with the highest wage bill
select
	Club,
	SUM(CAST(SUBSTRING(Wage, 2, LEN(Wage) - 2) AS float)) as total_value
	from mboka.dbo.[fifa players]
	group by Club
	order by SUM(CAST(SUBSTRING(Wage, 2, LEN(Wage) - 2) AS float)) desc





	

	
	
