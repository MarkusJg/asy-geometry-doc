    import geometry;
    size(7.5cm,0);
    pen bpp=linewidth(bp);
    point A=(0,0); dot("A", A, SW);
    point B=(1,2); dot("B", B, NW);
    point C=(-1,1); dot("C", C,N);
    path g=A--B--C--cycle; draw(g, bpp);
    point M=(0,1);
    path gp=scale(2, M)*g; draw(gp, bpp);
    for (int i=0; i < 3; ++i) draw(M--point(gp,i));
    dot("A'", point(gp,0), SW);
    dot("B'", point(gp,1), NW);
    dot("C'", point(gp,2), N);