;menu test - creates main menu with buttons A B C D E, submenus to be added later
;to test this open gdl and type ".run mtst"
function MAKE_WIDGET_BTN_MENU, parent, val
    return, WIDGET_BUTTON(parent, xsize=50, VALUE=val, /MENU)
end

PRO mtst
    base = WIDGET_BASE(TITLE = 'GINE', /ROW, MBAR=bar)
    menubtn_names=['A','B','C','D','E']
    menubtns=list()
    foreach menubtn_name, menubtn_names do begin
        menubtns.add,MAKE_WIDGET_BTN_MENU(base, menubtn_name)
    endforeach
    WIDGET_CONTROL, base, /REALIZE
END

mtst

end
