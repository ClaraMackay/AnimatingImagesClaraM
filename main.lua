-----------------------------------------------------------------------------------------
--Title: AnimatingImages
-- Name: Clara Mackay
--Course: ICS2OR
-- This program displays three images moving in different directions, 
-- with some coloured text and a background. 
-----------------------------------------------------------------------------------------

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- create the text abject at position (70, 100) with a size 50
textObject = display.newText ("Animating Images!", 70, 100, nil, 50)

--anchor the text object from the top left corner
textObject.anchorX = 0
textObject.anchorY = 0 

-- set the colour of the text object
textObject:setFillColor (255/255, 255/255, 255/255)

-- global variables
scrollSpeed = 5

-- background image with width and height
local backgroundImage = display.newImageRect("Images/background1.png", 2048, 1536)

-- character image with width and height
local Cat1 = display.newImageRect("Images/Kitten1.png", 200, 200)

local scrollSpeedX = 3
local scrollSpeedY = 1


-- set the image to be transparent
Cat1.alpha = 0

-- set the initial x and y position of Cat1
Cat1.y = 39 
Cat1.x = 0

-- Fuction: MoveShip
-- Input: this function accepts an event listener
-- Output: none
-- Description: This function adds the scroll speed to the x-value of the ship
local function MoveShip( event )
	-- add the scroll speed to the x-value of the ship 
	Cat1.x = Cat1.x + scrollSpeed
	-- change the transparency of the ship every time it moves so that it fades out
	Cat1.alpha = Cat1.alpha + 0.01
end

--MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveShip)

-- character image with width and height
local Cat2 = display.newImageRect("Images/Cat2.png", 200, 200)

-- set the image to be transparent
Cat2.alpha = 0

-- set the initial x and y position of Cat2
Cat2.y = display.contentHeight*2/3
Cat2.x = 1000

-- set the direction of the ship
Cat2:scale(-1,1)

-- Fuction: MoveShip
-- Input: this function accepts an event listener
-- Output: none
-- Description: This function adds the scroll speed to the x-value of the ship
local function MoveShip( event )
	-- add the scroll speed to the x-value of the ship 
	Cat2.x = Cat2.x - scrollSpeed
	-- change the transparency of the ship every time it moves so that it fades out
	Cat2.alpha = Cat2.alpha + 0.005
end

--MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveShip)

local function MoveCat2(event)
	-- add the scroll speed to the x-value of the Cat2
	Cat2.x = Cat2.x + scrollSpeedY

    -- width equals width plus scrollspeed
	Cat2.width = Cat2.width + scrollSpeedY

	Cat2.height = Cat2.height + scrollSpeedY

	-- change the transparency of the Cat2 every time is moves so that it fades out
	Cat2.alpha = Cat2.alpha + 0.03
end

--MoveCat2 will be called over and over again
Runtime:addEventListener("enterFrame", MoveCat2)




local function MoveCat1(event)
	-- add the scroll speed to the x-value of the ship
	Cat1.x = Cat1.x + scrollSpeed

	Cat1.y = Cat1.y + scrollSpeed
	-- change the transparency of the ship every time is moves so that it fades out
	Cat1.alpha = Cat1.alpha + 0.01
end

-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveCat1)

-- Correct sound
-- setting a variable to an mp3 file
local correctSound = audio.loadSound("Sounds/bensound-straight.mp3")
local correctSoundChannel

correctSoundChannel = audio.play(correctSound)

-- create the text abject at position (70, 100) with a size 50
textObject = display.newText ("Animating Images!", 70, 100, nil, 50)

--anchor the text object from the top left corner
textObject.anchorX = 0
textObject.anchorY = 0 

-- set the colour of the text object
textObject:setFillColor (100/255, 100/255, 255/255)