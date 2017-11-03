;creates main menu with buttons A B C D E, submenus to be added later
function MAKE_WIDGET_BTN, parent, val
    return, WIDGET_BUTTON(parent, xsize=50, VALUE=val, /MENU)
end

function mtst ;using function to keep a reference
    base = WIDGET_BASE(TITLE = 'GINE', /ROW, MBAR=bar)
    menubtn_names=['A','B','C','D','E']; replace this with nested list
    menubtns=list()
    menustruct={parent:base}
    foreach menubtn_name, menubtn_names do begin
;add recursive function here to go through a nested list
        menustruct=CREATE_STRUCT(menustruct,menubtn_name,$
            {parent:MAKE_WIDGET_BTN(base, menubtn_name)})
    endforeach
    WIDGET_CONTROL, base, /REALIZE
    return, menustruct
END

q=mtst(); retain reference to the dictionary


end
