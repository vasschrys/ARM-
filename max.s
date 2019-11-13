		mov		r0, #12
		mov		r1, #4
		mov		r2, #9
		
max
		add		r4, r4, #0 ; temporary max
		
		CMP		r0, r1 ; compare r0 and r1
		CMPGT	r0, r1 ; is r0>r1
		MOVGT	r4, r0  ; if yes store r0 in r4
		MOVLT	r4, r1
		
		
		CMP		r4, r2 ;compare r4 and r2
		CMPGT	r4, r2 ; is r4 >r2 ?
		MOVGT	r12, r4 ; put r4 in r12
		MOVLT	r12, r2
		
		
		CMP		r12, r2 ;
		CMPGT	r4, r2 ; is r4 >r2 ?
		MOVGT	r12, r4 ; put r4 in r12
		MOVLT	r12, r2
		end
		
