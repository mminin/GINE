# GINE is not ENVI.

ENVI is a GUI to IDL, GINE - to GDL.

Many spectral geologists might find ENVI inadequate due to lack of features such as computing spectral derivatives, 
automated mineral identification, quantitative measurement of signal to noise ratio, integrated python console, etc.
At the same time most researchers would find ENVI licences unaffordable, yet others might happen to be citizens of 
embargo countries (e.g. Cuba), and thus prohibited from even downloading IDL.

Thankfully there is an opensource alternative to IDL - GDL (http://gnudatalanguage.sourceforge.net/).
GDL is fully compatible with IDL version 7.1, and has partial support for IDL 8.0 elements 
(current IDL version is 8.6, current stable GDL is 0.9.6).

GUI support has been provided since GDLv 0.9 (year 2011), and is partially completed. 
Graphical output is partially implemented in GDL, but this functionality can be extended via Python bridge if necessary.

At early stages this project will draw inspiration from HypPy (https://www.itc.nl/personal/bakker/hyppy.html), 
and as a fist step will try to re-implement HypPy by translating it from Python to GDL.
