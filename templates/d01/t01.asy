//===============================================================================
//  Asymptote template: Yao-Chong Sun                                          
//-------------------------------------------------------------------------------
// Global Settings
// settings.outformat = "pdf", 'eps';
// unitsize(real) 1cm, 1pt;
// The height-to-width ratio is preserved in the size command
//   size(real); size(real,real); size(real,real,KeepAspect=false);
//-------------------------------------------------------------------------------
settings.outformat="pdf";
//settings.outformat="eps";
//settings.outformat="png";
//-------------------------------------------------------------------------------
//settings.render=0;
//settings.render=8;
//settings.render=16;
//-------------------------------------------------------------------------------
//settings.prc=false;
//defaultpen(fontsize(0.3cm));
//defaultpen(linewidth(0.015cm));
//-------------------------------------------------------------------------------
//arrowbar axisarrow=Arrow(TeXHead,1.5bp);
//arrowbar axisarrow=Arrow(TeXHead);
//arrowbar axisarrow=ArcArrow(SimpleHead);
//-------------------------------------------------------------------------------
//import graph;
//unitsize(2cm);
//-------------------------------------------------------------------------------

// big points (1bp=1/72inch)
// default line width is 0.5bp

//-------------------------------------------------------------------------------
size(10cm,10cm);
//-------------------------------------------------------------------------------
real x0=-5;
real x1=+5;
real xm=0;

real y0=-5;
real y1=+5;
real dy=-1;
//-------------------------------------------------------------------------------
draw((x0,y1)--(x1,y1),arrow=ArcArrow(SimpleHead)); // a line with an arrow
draw((xm,y1)--(xm,y0),arrow=ArcArrow(SimpleHead)); // a line with an arrow
//-------------------------------------------------------------------------------
dot((0,5),red);
label("$O$",(xm,y1),SE,black);
label("$x$",(x1,y1*1.01),NW,black);
label("$z$",(xm,y0),NE,black);
//-------------------------------------------------------------------------------
draw((x0,y1+1*dy)--(x1,y1+1*dy),gray); // a line without an arrow
draw((x0,y1+2*dy)--(x1,y1+2*dy),gray); // a line without an arrow
draw((x0,y1+3*dy)--(x1,y1+3*dy),gray); // a line without an arrow
draw((x0,y1+4*dy)--(x1,y1+4*dy),gray); // a line without an arrow
draw((x0,y1+5*dy)--(x1,y1+5*dy),gray); // a line without an arrow
draw((x0,y1+6*dy)--(x1,y1+6*dy),gray); // a line without an arrow
draw((x0,y1+7*dy)--(x1,y1+7*dy),gray); // a line without an arrow
draw((x0,y1+8*dy)--(x1,y1+8*dy),gray); // a line without an arrow
draw((x0,y1+9*dy)--(x1,y1+9*dy),gray); // a line without an arrow
//-------------------------------------------------------------------------------



//-------------------------------------------------------------------------------
//draw((0,0)--(10,10),Arrow); // a line with an arrow
//-------------------------------------------------------------------------------
//real x0=3,dx=2;
//real y0=7,dy=2;
//draw((x0,y0)--(x0+dx,y0)--(x0+dx,y0+dy)--cycle);
//-------------------------------------------------------------------------------
//label("$A$",(x0,y0),SW);
//label("$B$",(x0+dx,y0),SE);
//label("$C$",(x0+dx,y0+dy),NE);
//===============================================================================
// vim:ft=c:nu:nowrap
