; Create main menu widget
PRO main_menu
    base = WIDGET_BASE(TITLE = 'GINE', /ROW, MBAR=bar)
    file_menu = WIDGET_BUTTON(base, xsize=50, VALUE='File', /MENU)
    file_bttn1=WIDGET_BUTTON(file_menu, VALUE='Item 1',UVALUE='FILE1')
    file_bttn2=WIDGET_BUTTON(file_menu, VALUE='Item 2',UVALUE='FILE2')
    menu_names=[['Qfile', ['x'],['b']],['vis',['a'],['c']]]
    test_menu = WIDGET_BUTTON(base, xsize=50, VALUE=menu_names[0,0], /MENU)
    menu_list = list()
    menu_list.add,WIDGET_BUTTON(base, xsize=50, VALUE=menu_names[0,1], /MENU)



    WIDGET_CONTROL, base, /REALIZE
END
