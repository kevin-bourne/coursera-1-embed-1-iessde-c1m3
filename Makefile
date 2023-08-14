all:
	arm-none-eabi-gcc -o main.out main.c misc.c -Wl,-T msp432p401r.lds -Wl,-Map=main.map --specs=nosys.specs
	arm-none-eabi-nm main.out > main.nm
	arm-none-eabi-objdump -t --disassemble main.out > main.asm

clean:
	rm -f main.out main.map main.nm main.asm
