
local composer = require( "composer" )

local scene = composer.newScene()

-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------

local function goToGame()
		composer.gotoScene( "game", { time=800, effect="crossFade" } )
end

local function goToHighScores()
		composer.gotoScene( "highscores", { time=800, effect="crossFade" } )
end


-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------

-- create()
function scene:create( event )

	local sceneGroup = self.view
	-- Code here runs when the scene is first created but has not yet appeared on screen

	local background = display.newImageRect( sceneGroup, "homer.png", 1000, 1000 )
	background.x = 340
	background.y = 400

	local title = display.newImageRect( sceneGroup, "dabwuigi.png", 690, 420 )
	title.x = 375
	title.y = 500

	local playButton = display.newText( sceneGroup, "GABE FROM VALVE SAYS PLAY", display.contentCenterX, 700, native.systemFont, 30 )
	playButton:setFillColor( 1.82, 1.99, 1)

	local highScoresButton = display.newText( sceneGroup, "THE BEST OF THE BEST", display.contentCenterX, 810, native.systemFont, 44 )
	highScoresButton:setFillColor( 0.78, 0.79, 1 )

	playButton:addEventListener( "tap", goToGame )
	highScoresButton:addEventListener( "tap", goToHighScores)
end


-- show()
function scene:show( event )

	local sceneGroup = self.view
	local phase = event.phase

	if ( phase == "will" ) then
		-- Code here runs when the scene is still off screen (but is about to come on screen)

	elseif ( phase == "did" ) then
		-- Code here runs when the scene is entirely on screen

	end
end


-- hide()
function scene:hide( event )

	local sceneGroup = self.view
	local phase = event.phase

	if ( phase == "will" ) then
		-- Code here runs when the scene is on screen (but is about to go off screen)

	elseif ( phase == "did" ) then
		-- Code here runs immediately after the scene goes entirely off screen

	end
end


-- destroy()
function scene:destroy( event )

	local sceneGroup = self.view
	-- Code here runs prior to the removal of scene's view

end


-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------

return scene
