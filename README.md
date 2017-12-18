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

## gist token for syncing visual code
e1edfcb5dd2ab8dbf2ebb82773fe9796e02a950e

"sync.gist": "2c0e76a2c6e6a9d51a2701b6bf18a2ec"
