		
		mov		r1, #2 ; the number youre looking for
		mov		r2, #3 ; the size of array
main
		LSL		r5, r2, #2
		sub		sp, sp, r5 ; allocate  r5 amouint of space for array
		mov		r0,	  #1
		str		r0,  [sp, #0]
		mov		r0,	  #2
		str		r0,  [sp, #4]
		mov		r0,	  #3
		str		r0,  [sp, #8]
		mov		r6,  sp ; set the register to arraypointer -- stack pointer
		mov		r7, #0 ; set iterator
		bl		find
		
		
find
		
		cmp		r7, r2  ;compare  i to size
		bge		nothing
		LSL		r4, r7, #2 ; offset of 4
		ldr		r0, [r6, r4]  ; gets the array at offset r4 from r0, where i stred array
		CMP		r0, r1
		BEQ		done
		;add		r12, r12, r2 ;adds r2 to sum
		add		r7, r7, #1 ; incriment i by 1
		b		find ; just b becuase not jumping to function
		
done
		mov		r12,  #1
		end
		
nothing
		mov		r12, #0
		end
		
		
