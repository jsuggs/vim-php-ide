# VIM PHP IDE 

This uses pathogen to be able to manage plugins based on git submodules.  So, after you git clone, you will need to do the following
```
git submodule init
git submodule update
```

## Key Bindings
#### Note: Leader re-mapped to ,
* &lt;Leader>lp Toggle NERDTree - Show/Hide NERDTree
* &lt;F6> NERDTreeFind - Open NERDTree but in the directory of the currently opened file/buffer
* &lt;F8> - Toggle taglist
* &lt;Leader>p - Toggle the mouse
* jj - Exit to command mode
* &lt;Leader>w - Split the current window
* &lt;Cmd - T> - Open new tab

### PHP Specific
* &lt;C-X> - Execute the current file (useful for testing executables)
* &lt;C-L> - Run the PHP linter (php -l) on the current file to check for syntax errors
* &lt;Leader>c - Run syntax check

## Included Submodules
* Ack - Better Searching
* Command-T - File Searching
* FindFile - File Searching
* Fugutive - GIT Integration
* MatchIt - Advanced matching using *
* NERDCommenter - Commenting of code
* NERDTree - File Navigation
* PDV - Generate PHP Documentation
* Supertab - autocompletion using tab
* Taglist - View various aspects of the file being edited
* Syntastic - Syntax checking
* LustyExplorer - Buffer explorer - Search through your open buffers!
* LustyJuggler - Buffer switcher

## Custom Extensions
Add any custom mappings into files and put them .vim/plugin

### Other thoughts
I highlight any extra whitespace whenever you change modes or enter a buffer... Kill the whitespace!
