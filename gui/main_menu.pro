; Create main menu widget
PRO main_menu
    base = WIDGET_BASE(TITLE = 'GINE', /ROW, MBAR=bar)
    menu_exitBtn = WIDGET_BUTTON(base, VALUE='Exit',                     UVALUE='EXIT1')

    menu_file = WIDGET_BUTTON(base, xsize=70, VALUE='File', /MENU)
;        menu_file_open                    =WIDGET_BUTTON(menu_file, VALUE='Open...',                     UVALUE='FILE1')
;        menu_file_openAs                  =WIDGET_BUTTON(menu_file, VALUE='Open As',                     UVALUE='FILE2')
;        menu_file_dataManager             =WIDGET_BUTTON(menu_file, VALUE='Data Manager...',             UVALUE='FILE3')
;        menu_file_openRemoteDataset       =WIDGET_BUTTON(menu_file, VALUE='Open Remote Dataset...',      UVALUE='FILE4')
;        menu_file_remoteConnectionManager =WIDGET_BUTTON(menu_file, VALUE='Remote Connection Manager...',UVALUE='FILE5')
;        menu_file_new                     =WIDGET_BUTTON(menu_file, VALUE='New',                         UVALUE='FILE5')
;        menu_file_save                    =WIDGET_BUTTON(menu_file, VALUE='Save',                        UVALUE='FILE6')
;        menu_file_saveAs                  =WIDGET_BUTTON(menu_file, VALUE='Save As...',                  UVALUE='FILE7')
;        menu_file_chipVeiwTo              =WIDGET_BUTTON(menu_file, VALUE='Chip View To',                UVALUE='FILE8')
;        menu_file_preferences             =WIDGET_BUTTON(menu_file, VALUE='Preferences...',              UVALUE='FILE9')
;        menu_file_exit                    =WIDGET_BUTTON(menu_file, VALUE='Exit',                        UVALUE='FILE10')
;    menu_file = WIDGET_DROPLIST(base, xsize=70, VALUE='File', /MENU)
        menu_file_openImageFile = WIDGET_BUTTON(menu_file, VALUE='Open Image File')
        menu_file_openVectorFile = WIDGET_BUTTON(menu_file, VALUE='Open Vector File')
        menu_file_openRemoteFile = WIDGET_BUTTON(menu_file, VALUE='Open Remote File')
        menu_file_openExternalFile = WIDGET_BUTTON(menu_file, VALUE='Open External File', /MENU)
            menu_file_openExternalFile_genericFormat = WIDGET_BUTTON(menu_file_openExternalFile, VALUE='Generic Formats', /MENU)
                menu_file_openExternalFile_genericFormat_ascii = WIDGET_BUTTON(menu_file_openExternalFile_genericFormat, VALUE='ASCII')
                menu_file_openExternalFile_genericFormat_bmp = WIDGET_BUTTON(menu_file_openExternalFile_genericFormat, VALUE='BMP')
        menu_file_openPreviousFile = WIDGET_BUTTON(menu_file, VALUE='Open Previous File')
        menu_file_editGineHeader = WIDGET_BUTTON(menu_file, VALUE='Edit GINE Header')
        menu_file_generateTestData = WIDGET_BUTTON(menu_file, VALUE='Generate Test Data')
        menu_file_dataViewer = WIDGET_BUTTON(menu_file, VALUE='Data Viewer')
        menu_file_saveFileAs = WIDGET_BUTTON(menu_file, VALUE='Save File As')
        menu_file_importFromGdlVariable = WIDGET_BUTTON(menu_file, VALUE='Import from GDL Variable')
        menu_file_exportToGdlVariable = WIDGET_BUTTON(menu_file, VALUE='Export to GDL Variable')
        menu_file_compileGdlModule = WIDGET_BUTTON(menu_file, VALUE='Compile GDL Module')
        menu_file_gdlCpuParameters = WIDGET_BUTTON(menu_file, VALUE='GDL CPU Parameters')
        menu_file_tapeUtilities = WIDGET_BUTTON(menu_file, VALUE='Tape Utilities')
        menu_file_scanDirectoryList = WIDGET_BUTTON(menu_file, VALUE='Scan Directory List')
        menu_file_changeOutputDirectory = WIDGET_BUTTON(menu_file, VALUE='Change Output Directory')
        menu_file_saveSessionToScript = WIDGET_BUTTON(menu_file, VALUE='Save Session to Script')
        menu_file_executeStartupScript = WIDGET_BUTTON(menu_file, VALUE='Execute Startup Script')
        menu_file_restoreDisplayGroup = WIDGET_BUTTON(menu_file, VALUE='Restore Display Group')
        menu_file_gineQueueManager = WIDGET_BUTTON(menu_file, VALUE='GINE Queue Manager')
        menu_file_gineLogManager = WIDGET_BUTTON(menu_file, VALUE='GINE Log Manager')
        menu_file_closeAllFiles = WIDGET_BUTTON(menu_file, VALUE='Close All Files')
        menu_file_preferences = WIDGET_BUTTON(menu_file, VALUE='Preferences')
        menu_file_exit = WIDGET_BUTTON(menu_file, VALUE='Exit')


    menu_basicTools = WIDGET_BUTTON(base, xsize=100, VALUE='Basic Tools', /MENU, /SENSITIVE)
        menu_edit_bttn1=WIDGET_BUTTON(menu_basicTools, VALUE='Item 1',UVALUE='EDIT1')
        menu_edit_bttn2=WIDGET_BUTTON(menu_basicTools, VALUE='Item 2',UVALUE='EDIT2')

    menu_classification = WIDGET_BUTTON(base, xsize=90, VALUE='Display', /MENU)
        menu_classification_bttn1=WIDGET_BUTTON(menu_classification, VALUE='Item 1',UVALUE='DISPALY1')
        menu_classification_bttn2=WIDGET_BUTTON(menu_classification, VALUE='Item 2',UVALUE='DISPALY2')

    menu_transform = WIDGET_BUTTON(base, xsize=90, VALUE='Transform', /MENU)
        menu_transform_bttn1=WIDGET_BUTTON(menu_transform, VALUE='Item 1',UVALUE='VIEWS1')
        menu_transform_bttn2=WIDGET_BUTTON(menu_transform, VALUE='Item 2',UVALUE='VIEWS2')

    menu_filter = WIDGET_BUTTON(base, xsize=90, VALUE='Filter', /MENU)
        menu_filter_bttn1=WIDGET_BUTTON(menu_filter, VALUE='Item 1',UVALUE='HELP1')
        menu_filter_bttn2=WIDGET_BUTTON(menu_filter, VALUE='Item 2',UVALUE='HELP2')

    menu_spectral = WIDGET_BUTTON(base, xsize=90, VALUE='Spectral', /MENU)
        menu_spectral_bttn1=WIDGET_BUTTON(menu_spectral, VALUE='Item 1',UVALUE='HELP1')
        menu_spectral_bttn2=WIDGET_BUTTON(menu_spectral, VALUE='Item 2',UVALUE='HELP2')

    menu_map = WIDGET_BUTTON(base, xsize=90, VALUE='Map', /MENU)
        menu_map_bttn1=WIDGET_BUTTON(menu_map, VALUE='Item 1',UVALUE='HELP1')
        menu_map_bttn2=WIDGET_BUTTON(menu_map, VALUE='Item 2',UVALUE='HELP2')

    menu_vector = WIDGET_BUTTON(base, xsize=90, VALUE='Vector', /MENU)
        menu_vector_bttn1=WIDGET_BUTTON(menu_vector, VALUE='Item 1',UVALUE='HELP1')
        menu_vector_bttn2=WIDGET_BUTTON(menu_vector, VALUE='Item 2',UVALUE='HELP2')

    menu_topographic = WIDGET_BUTTON(base, xsize=90, VALUE='Topographic', /MENU)
        menu_topographic_bttn1=WIDGET_BUTTON(menu_topographic, VALUE='Item 1',UVALUE='HELP1')
        menu_topographic_bttn2=WIDGET_BUTTON(menu_topographic, VALUE='Item 2',UVALUE='HELP2')

    menu_radar = WIDGET_BUTTON(base, xsize=90, VALUE='Radar', /MENU)
        menu_radar_bttn1=WIDGET_BUTTON(menu_radar, VALUE='Item 1',UVALUE='HELP1')
        menu_radar_bttn2=WIDGET_BUTTON(menu_radar, VALUE='Item 2',UVALUE='HELP2')

    menu_window = WIDGET_BUTTON(base, xsize=90, VALUE='Window', /MENU)
        menu_help_bttn1=WIDGET_BUTTON(menu_window, VALUE='Item 1',UVALUE='HELP1')
        menu_help_bttn2=WIDGET_BUTTON(menu_window, VALUE='Item 2',UVALUE='HELP2')

    menu_help = WIDGET_BUTTON(base, xsize=90, VALUE='Help', /MENU)
        menu_help_bttn1=WIDGET_BUTTON(menu_help, VALUE='Item 1',UVALUE='HELP1')
        menu_help_bttn2=WIDGET_BUTTON(menu_help, VALUE='Item 2',UVALUE='HELP2')

;    menu_names=[['Qfile', ['x'],['b']],['vis',['a'],['c']]]
;    test_menu = WIDGET_BUTTON(base, xsize=50, VALUE=menu_names[0,0], /MENU)
;    menu_list = list()
;    menu_list.add,WIDGET_BUTTON(base, xsize=50, VALUE=menu_names[0,1], /MENU)



    WIDGET_CONTROL, base, /REALIZE
END
