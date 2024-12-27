SELECT ps.firstName, ps.lastName, adds.city, adds.state
FROM Person as ps
LEFT JOIN Address as adds 
ON ps.personId = adds.personId;


