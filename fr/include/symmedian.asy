import geometry; size(10cm,0);
triangle t=triangle((-1,0), (2,0), (0,2)); drawline(t, linewidth(bp));
label(t,alignFactor=2, alignAngle=90);
triangle st=symmedial(t); draw(st, bp+0.8green);
label("$A'$", "$B'$", "$C'$", st, alignAngle=45, 0.8green);
line mA=median(t.VA); draw(mA, blue); dot("$M_A$",midpoint(t.BC), 1.5E, blue);
draw(segment(t.BC), bp+blue, StickIntervalMarker(2,2,blue));
line bA=bisector(t.VA); draw(bA, grey); dot("$B_A$", bisectorpoint(t.BC));
line sA=symmedian(t.VA); draw(sA, 0.8*green);
draw(symmedian(t.VB), 0.8*green); draw(symmedian(t.VC), 0.8*green);
point sP=symmedian(t); dot("$K$", sP, 2*dir(125));
markangle(sA, (line) t.AC, radius=2cm, StickIntervalMarker(1,1));
markangle((line) t.AB, mA, radius=2cm, StickIntervalMarker(1,1));
markangle(mA, sA, radius=10cm, StickIntervalMarker(2,2));
