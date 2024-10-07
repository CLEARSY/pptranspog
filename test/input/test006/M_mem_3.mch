MACHINE M_mem_3
SETS
	s0
CONSTANTS
	c0, c1, c2
PROPERTIES
	c0: s0 &
	c1: POW(s0) &
	c2: POW(POW(s0))
ASSERTIONS
	c0: c1;
	c1: c2;
	card(c1) = card(c2)
END
