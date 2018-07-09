
import * as React from "react"
import * as Oni from "oni-api"

export const activate = (oni: Oni.Plugin.Api) => {
    console.log('Config activated!')

    // Input
    const LEADER = ',';
    oni.input.bind("<c-enter>", () => console.log("Control+Enter was pressed"))
    oni.input.bind(`${LEADER}nn`, 'sidebar.toggle')
    // Tabs
    oni.input.bind(`${LEADER}tn`, () => oni.automation.sendKeys("<ESC>:tabnew<CR>"))

    //
    // Or remove the default bindings here by uncommenting the below line:
    //
    // oni.input.unbind("<c-p>")

}

export const deactivate = (oni: Oni.Plugin.Api) => {
    console.log("config deactivated")
}

export const configuration = {
    //add custom config here, such as

    "ui.colorscheme": "nord",

    //"oni.useDefaultConfig": true,
    //"oni.bookmarks": ["~/Documents"],
    //"oni.loadInitVim": false,
    //"editor.fontSize": "12px",
    "editor.fontFamily": "Meslo LG L DZ for Powerline",

    // UI customizations
    "ui.animations.enabled": true,
    "ui.fontSmoothing": "auto",

    // Clangd path
    "environment.additionalPaths": [
        '/usr/bin',
        '/usr/local/bin',
        '/usr/local/opt/llvm/bin'
    ]
}
