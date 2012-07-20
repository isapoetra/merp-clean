dxgettext -r --delphi -o locale\ --so locale\defnew.po
msgmkignore locale\defnew.po -o locale\ignore.po
msgremove locale\defnew.po -i locale\ignore.po -o locale\defaultnew.po
msgmerge locale\default.po locale\defaultnew.po --update
msgmerge bin\locale\en\LC_MESSAGES\default.po locale\default.po --update


del locale\defnew.po
del locale\defaultnew.po
