In Vim: `:edit $MYVIMRC`
Add line: `let $VIMPREFS='<C:/repos/myPreferences/>'`
Point the location to wherever this repo is cloned to
Add line: `source $VIMPREFS/vim_config.vim`
If it exists remove line: `source $VIMRUNTIM/vimrc_example.vim`
remove lines:
```
augroup myvimrc
	au!
	au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END
```
Remove duplicate junk that is in there for somreason, such as: `source $VIMRUNTIME/mswin.vim` and any other duplicates you find
