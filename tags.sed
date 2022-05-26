#! /bin/sed -f

:top
/_/ {
	x
	/ON/ !{
		s/.*/ON/
		x
		s;_;<tag>;
	}
	/ON/ {
		s/.*/OFF/
		x
		s;_;</tag>;
	}
	b top
}
