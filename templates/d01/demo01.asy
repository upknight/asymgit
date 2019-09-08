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
settings.render=8;
//settings.render=16;
//-------------------------------------------------------------------------------
settings.prc=false;
defaultpen(fontsize(0.3cm));
defaultpen(linewidth(0.015cm));
//-------------------------------------------------------------------------------
arrowbar axisarrow=Arrow(TeXHead,1.5bp);
//arrowbar axisarrow=Arrow(TeXHead);
//arrowbar axisarrow=ArcArrow(SimpleHead);
//-------------------------------------------------------------------------------
import graph;
unitsize(2cm);
//-------------------------------------------------------------------------------

//-------------------------------------------------------------------------------
real x0,z0;
real dx,dz;
real ldx=0.005;
real ldz=0.005;

x0=0.0;
z0=0.0;
dx=0.5;
dz=0.5;

//-------------------------------------------------------------------------------
// -- coordinate 
//-------------------------------------------------------------------------------
// vertical rule
//-------------------------------------------------------------------------------
draw((x0,z0-6*dz)--(x0,z0+1*dz));
// horizontal stencil
draw((x0+1*dx,z0+0*dz-4*ldz)--(x0+5*dx,z0+0*dz-4*ldz),blue+dashed);
draw((x0+3*dx,z0+0*dz+4*ldz)--(x0+7*dx,z0+0*dz+4*ldz),red);

// vertical stencil 1
draw((x0+5*dx+4*ldx,z0-6*dz)--(x0+5*dx+4*ldx,z0-2*dz),blue+dashed);
draw((x0+5*dx-4*ldx,z0-4*dz)--(x0+5*dx-4*ldx,z0-0*dz),red);

// vertical stencil 2
draw((x0+6*dx-4*ldx,z0-3*dz)--(x0+6*dx-4*ldx,z0-1*dz),linewidth(0.02cm)+gray);
draw((x0+6*dx+4*ldx,z0-3*dz)--(x0+6*dx+4*ldx,z0-2*dz),linewidth(0.02cm)+green+dashed);

// vertical stencil 3
draw((x0+7*dx-4*ldx,z0-3*dz)--(x0+7*dx-4*ldx,z0-1*dz),linewidth(0.02cm)+gray);
draw((x0+7*dx+4*ldx,z0-2*dz)--(x0+7*dx+4*ldx,z0-1*dz),linewidth(0.02cm)+green+dashed);

// vertical stencil 4
draw((x0+8*dx-4*ldx,z0-2*dz)--(x0+8*dx-4*ldx,z0-0*dz),linewidth(0.02cm)+gray);
draw((x0+8*dx+4*ldx,z0-2*dz)--(x0+8*dx+4*ldx,z0-1*dz),linewidth(0.02cm)+green+dashed);

// vertical stencil 5
draw((x0+9*dx-4*ldx,z0-2*dz)--(x0+9*dx-4*ldx,z0-0*dz),linewidth(0.02cm)+gray);
draw((x0+9*dx+4*ldx,z0-1*dz)--(x0+9*dx+4*ldx,z0-0*dz),linewidth(0.02cm)+green+dashed);

/*-----------------------------------------------------------------------------*/
// index
/*-----------------------------------------------------------------------------*/
for(int n=-6;n<2;++n){draw((x0+5*ldx,z0+n*dz)--(x0,z0+n*dz));}
label("$n-6$",(x0-5*ldx,z0-6*dz),align=W);
label("$n-5$",(x0-5*ldx,z0-5*dz),align=W);
label("$n-4$",(x0-5*ldx,z0-4*dz),align=W);
label("$n-3$",(x0-5*ldx,z0-3*dz),align=W);
label("$n-2$",(x0-5*ldx,z0-2*dz),align=W);
label("$n-1$",(x0-5*ldx,z0-1*dz),align=W);
label("$k=n$",(x0-5*ldx,z0+0*dz),align=W);
label("$n+1$",(x0-5*ldx,z0+1*dz),align=W);

// 1 
draw((x0+5.5*dx,z0-4.5*dz)--(x0+6.5*dx,z0-4.5*dz),red);
label("explicit forward operator stencil" ,(x0+6.5*dx,z0-4.5*dz),align=E);
// 2
draw((x0+5.5*dx,z0-5.0*dz)--(x0+6.5*dx,z0-5.0*dz),dashed+blue);
label("explicit backward operator stencil" ,(x0+6.5*dx,z0-5.0*dz),align=E);
// 3 
draw((x0+5.5*dx,z0-5.5*dz)--(x0+6.5*dx,z0-5.5*dz),linewidth(0.02cm)+gray);
label("compact scheme right hand stencil" ,(x0+6.5*dx,z0-5.5*dz),align=E);
// 4
draw((x0+5.5*dx,z0-6.0*dz)--(x0+6.5*dx,z0-6.0*dz),linewidth(0.02cm)+dashed+green);
label("compact scheme left hand stencil" ,(x0+6.5*dx,z0-6.0*dz),align=E);

/*-----------------------------------------------------------------------------*/
// -- path 
/*-----------------------------------------------------------------------------*/
real amp=0.3;
real dr=amp*dz*0.5;
path sc=(x0,z0)..(x0+amp*dx,z0)..(x0+amp*dx,z0+amp*dz)..(x0,z0+amp*dz)..cycle; 

// 1
fill(shift((x0+1*dx-dr,z0-dr))*sc);
draw(shift((x0+1*dx-dr,z0-dr))*sc);
// 2
fill(shift((x0+2*dx-dr,z0-dr))*sc);
draw(shift((x0+2*dx-dr,z0-dr))*sc);
// 3
fill(shift((x0+3*dx-dr,z0-dr))*sc);
draw(shift((x0+3*dx-dr,z0-dr))*sc);
// 4
fill(shift((x0+4*dx-dr,z0-dr))*sc,white);
draw(shift((x0+4*dx-dr,z0-dr))*sc);
label("$D$",(x0+4*dx,z0));

// 5
fill(shift((x0+5*dx-dr,z0-dr))*sc);
draw(shift((x0+5*dx-dr,z0-dr))*sc);

// 6
fill(shift((x0+6*dx-dr,z0-dr))*sc);
draw(shift((x0+6*dx-dr,z0-dr))*sc);

// 7
fill(shift((x0+7*dx-dr,z0-dr))*sc);
draw(shift((x0+7*dx-dr,z0-dr))*sc);

// 8
fill(shift((x0+8*dx-dr,z0-dr))*sc);
draw(shift((x0+8*dx-dr,z0-dr))*sc);

// 9
fill(shift((x0+9*dx-dr,z0-dr))*sc);
draw(shift((x0+9*dx-dr,z0-dr))*sc);

// 10
fill(shift((x0+5*dx-dr,z0-dr-1*dz))*sc);
draw(shift((x0+5*dx-dr,z0-dr-1*dz))*sc);

// 11
fill(shift((x0+5*dx-dr,z0-dr-2*dz))*sc);
draw(shift((x0+5*dx-dr,z0-dr-2*dz))*sc);

// 12
fill(shift((x0+5*dx-dr,z0-dr-3*dz))*sc,white);
draw(shift((x0+5*dx-dr,z0-dr-3*dz))*sc);
label("$A$",(x0+5*dx,z0-3*dz));

// 13
fill(shift((x0+5*dx-dr,z0-dr-4*dz))*sc);
draw(shift((x0+5*dx-dr,z0-dr-4*dz))*sc);

// 14
fill(shift((x0+5*dx-dr,z0-dr-5*dz))*sc);
draw(shift((x0+5*dx-dr,z0-dr-5*dz))*sc);

// 15
fill(shift((x0+5*dx-dr,z0-dr-6*dz))*sc);
draw(shift((x0+5*dx-dr,z0-dr-6*dz))*sc);

// 16
fill(shift((x0+6*dx-dr,z0-dr-dz))*sc);
draw(shift((x0+6*dx-dr,z0-dr-dz))*sc);

// 17
fill(shift((x0+6*dx-dr,z0-dr-2*dz))*sc,white);
draw(shift((x0+6*dx-dr,z0-dr-2*dz))*sc);
label("$B1$",(x0+6*dx,z0-2*dz));

// 18
fill(shift((x0+6*dx-dr,z0-dr-3*dz))*sc);
draw(shift((x0+6*dx-dr,z0-dr-3*dz))*sc);

// 19
fill(shift((x0+7*dx-dr,z0-dr-1*dz))*sc);
draw(shift((x0+7*dx-dr,z0-dr-1*dz))*sc);

// 20
fill(shift((x0+7*dx-dr,z0-dr-2*dz))*sc,white);
draw(shift((x0+7*dx-dr,z0-dr-2*dz))*sc);
label("$B2$",(x0+7*dx,z0-2*dz));

// 21
fill(shift((x0+7*dx-dr,z0-dr-3*dz))*sc);
draw(shift((x0+7*dx-dr,z0-dr-3*dz))*sc);

// 22
fill(shift((x0+8*dx-dr,z0-dr-1*dz))*sc,white);
draw(shift((x0+8*dx-dr,z0-dr-1*dz))*sc);
label("$C1$",(x0+8*dx,z0-1*dz));

// 23
fill(shift((x0+8*dx-dr,z0-dr-2*dz))*sc);
draw(shift((x0+8*dx-dr,z0-dr-2*dz))*sc);

// 24
fill(shift((x0+9*dx-dr,z0-dr-1*dz))*sc,white);
draw(shift((x0+9*dx-dr,z0-dr-1*dz))*sc);
label("$C2$",(x0+9*dx,z0-1*dz));

// 25
fill(shift((x0+9*dx-dr,z0-dr-2*dz))*sc);
draw(shift((x0+9*dx-dr,z0-dr-2*dz))*sc);

draw((x0+9.7*dx,z0)--(x0+9.3*dx,z0),
arrow=axisarrow,L=Label("free surface",position=BeginPoint));

//===============================================================================
// vim:ft=c:nu:nowrap
