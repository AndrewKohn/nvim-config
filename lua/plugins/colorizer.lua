-- colorizer
-- highlights rbg's/hex/etc...

return {
	"norcalli/nvim-colorizer.lua",
	config = function()
		require("colorizer").setup()
	end,
}
