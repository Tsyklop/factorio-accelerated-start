local robot = data.raw["construction-robot"]["accelerated-start-robot"]
local multiplier = settings.startup["accelerated-start-robot-speed"].value
robot.speed = robot.speed * multiplier
if robot.max_speed then robot.max_speed = robot.max_speed * multiplier end
