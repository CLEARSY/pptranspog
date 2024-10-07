MACHINE M_incl
SETS
	s0
CONSTANTS
	c0, c1, c2
PROPERTIES
	c0 : s0 &
	c1 : POW(s0) &
	c2: POW(POW(s0))
ASSERTIONS
	c1 <: s0;
	c1 /<: s0
END
