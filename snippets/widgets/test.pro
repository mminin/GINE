; Simple event handler:
; cc'd from http://www.harrisgeospatial.com/docs/widget_auto_base.html

PRO test_event, ev
   HELP, /STRUCTURE, ev
END
; Simple widget creation routine:
PRO test
   ; The base gets the resource name "test":
   a = WIDGET_BASE(RESOURCE_NAME = 'test')
   b = WIDGET_BUTTON(a, VALUE='Menu', YSIZE=200, /MENU)
   ; Assign the Item 1 button the resource name "item1":
   c = WIDGET_BUTTON(b, VALUE='Item 1', $
      RESOURCE_NAME='item1')
   c = WIDGET_BUTTON(b, VALUE='Item 2')
   WIDGET_CONTROL, /REALIZE, a 
   XMANAGER, 'test', a 
END
