"use strict";
exports.__esModule = true;
exports.activate = function (oni) {
    console.log('Config activated!');
    // Input
    var LEADER = ',';
    oni.input.bind("<c-enter>", function () { return console.log("Control+Enter was pressed"); });
    oni.input.bind(LEADER + "nn", 'sidebar.toggle');
    // Tabs
    oni.input.bind(LEADER + "tn", function () { return oni.automation.sendKeys("<ESC>:tabnew<CR>"); });
    //
    // Or remove the default bindings here by uncommenting the below line:
    //
    // oni.input.unbind("<c-p>")
};
exports.deactivate = function (oni) {
    console.log("config deactivated");
};
exports.configuration = {
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
};
