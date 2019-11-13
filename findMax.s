		;		hardcoded int array to be 1, 2, 3
		mov		r0, #1 ; x
		mov		r1, #3	; y
		mov		r2, #2	; z
		
		mov		r4, #3		; size
main
		
		LSL		r5, r4, #2
		sub		sp, sp, r5 ; allocate  r4 amouint of space for array
		mov		r3,	  #1
		str		r3,  [sp, #0]
		mov		r3,	  #2
		str		r3,  [sp, #4]
		mov		r3,	  #3
		str		r3,  [sp, #8]
		mov		r7,  sp ; set the register to arraypointer -- stack pointer
		mov		r6, #0 ; set iterator
		
		bl		max
		
		
		
max
		SUB		sp, sp, #4
		STR		r4, [sp, #0]
		
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
		
		LDR		r4, [sp, #0]
		ADD		sp, sp, #4
		
		BL		find
		
find
		cmp		r6, r4  ;compare  i to size
		bge		nothing
		LSL		r10, r6, #2 ; offset of 4
		ldr		r2, [r7, r10]  ; gets the array at offset r4 from r0, where i stred array
		CMP		r2, r12
		BEQ		done
		add		r6, r6, #1 ; incriment i by 1
		b		find ; just b becuase not jumping to function
		
done
		mov		r12,  #1 ; return 1 if the max is found in the array
		end
		
nothing
		mov		r12, #0	; return 0 is the max is not found in array
		end
		
