# VIM PHP IDE 

This uses pathogen to be able to manage plugins based on git submodules.  So, after you git clone, you will need to do the following
```git submodule init
git submodule update```

## Key Bindings
* &lt;F5> Toggle NERDTree - Show/Hide NERDTree
* &lt;F6> NERDTreeFind - Open NERDTree but in the directory of the currently opened file/buffer
* &lt;F8> - Toggle taglist
* &lt;F12> - Toggle the mouse

### PHP Specific
* &lt;C-X> - Execute the current file (useful for testing executables)
* &lt;C-L> - Run the PHP linter (php -l) on the current file to check for syntax errors
* ,c - Run syntax check

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

## Custom Extensions
Add any custom mappings into files and put them .vim/plugin
