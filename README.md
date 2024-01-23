# autocorrect.nvim

Correct commonly misspelled words automatically. A port of [vim-autocorrect](https://github.com/panozzaj/vim-autocorrect) to lua for efficiency in Neovim.

## Setup

With lazy.nvim

```lua
return {
	"nathom/autocorrect.nvim",
	ft = { "markdown" }, -- Filetypes to enable plugin in
	config = function()
		require("autocorrect").Autocorrect()
	end,
}
```
