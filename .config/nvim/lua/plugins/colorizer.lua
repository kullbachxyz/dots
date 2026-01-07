return {
    {
    "catgoose/nvim-colorizer.lua",
    event = "BufReadPre",
    config = function()
        require("colorizer").setup({
            "css"; -- Add other filetypes here if needed
            mode = "background",  -- You can change it to 'foreground' if preferred
            css = true,  -- Enable CSS color detection
        })
    end,
    }

}
