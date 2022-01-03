# Connect to gdb remote server
target remote :3333

# Flash the code to the device
load

# Demangle asm names when disassembling
set print asm-demangle on

# Formatting
set print pretty on

# Stream device logs from itm port to itm.txt
monitor tpiu config internal itm.txt uart off 8000000
monitor itm port 0 on

# Set inital breakpoints and step into main from the trampoline
break main
break DefaultHandler
break HardFault
continue
step

