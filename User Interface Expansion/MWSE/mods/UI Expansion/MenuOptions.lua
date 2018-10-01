
local function resizeContainer(parent, id)
	local button = parent:findChild(tes3ui.registerID("MenuOptions_Return_container"))
	if (button) then
		button.width = button.children[1].texture.width
	end
end

local function onCreatedMenuOptions(e)
	-- Only interested in menu creation, not updates
	if (not e.newlyCreated) then
		return
	end

	local mainMenu = e.element

	resizeContainer(mainMenu, "MenuOptions_Return_container")
	resizeContainer(mainMenu, "MenuOptions_New_container")
	resizeContainer(mainMenu, "MenuOptions_Save_container")
	resizeContainer(mainMenu, "MenuOptions_Load_container")
	resizeContainer(mainMenu, "MenuOptions_Options_container")
	resizeContainer(mainMenu, "MenuOptions_Credits_container")
	resizeContainer(mainMenu, "MenuOptions_Exit_container")

	mainMenu.autoWidth = true

	mainMenu:updateLayout()
end
event.register("uiActivated", onCreatedMenuOptions, { filter = "MenuOptions" })
