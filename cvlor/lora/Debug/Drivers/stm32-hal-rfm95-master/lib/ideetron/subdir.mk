################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/stm32-hal-rfm95-master/lib/ideetron/AES-128_V10.c \
../Drivers/stm32-hal-rfm95-master/lib/ideetron/Encrypt_V31.c 

OBJS += \
./Drivers/stm32-hal-rfm95-master/lib/ideetron/AES-128_V10.o \
./Drivers/stm32-hal-rfm95-master/lib/ideetron/Encrypt_V31.o 

C_DEPS += \
./Drivers/stm32-hal-rfm95-master/lib/ideetron/AES-128_V10.d \
./Drivers/stm32-hal-rfm95-master/lib/ideetron/Encrypt_V31.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/stm32-hal-rfm95-master/lib/ideetron/%.o Drivers/stm32-hal-rfm95-master/lib/ideetron/%.su Drivers/stm32-hal-rfm95-master/lib/ideetron/%.cyclo: ../Drivers/stm32-hal-rfm95-master/lib/ideetron/%.c Drivers/stm32-hal-rfm95-master/lib/ideetron/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DRFM95_SPI_TIMEOUT=100 -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Core/Inc -I"C:/Temp/MPC-MKS/cvlor/lora/Drivers/stm32-hal-rfm95-master" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-stm32-2d-hal-2d-rfm95-2d-master-2f-lib-2f-ideetron

clean-Drivers-2f-stm32-2d-hal-2d-rfm95-2d-master-2f-lib-2f-ideetron:
	-$(RM) ./Drivers/stm32-hal-rfm95-master/lib/ideetron/AES-128_V10.cyclo ./Drivers/stm32-hal-rfm95-master/lib/ideetron/AES-128_V10.d ./Drivers/stm32-hal-rfm95-master/lib/ideetron/AES-128_V10.o ./Drivers/stm32-hal-rfm95-master/lib/ideetron/AES-128_V10.su ./Drivers/stm32-hal-rfm95-master/lib/ideetron/Encrypt_V31.cyclo ./Drivers/stm32-hal-rfm95-master/lib/ideetron/Encrypt_V31.d ./Drivers/stm32-hal-rfm95-master/lib/ideetron/Encrypt_V31.o ./Drivers/stm32-hal-rfm95-master/lib/ideetron/Encrypt_V31.su

.PHONY: clean-Drivers-2f-stm32-2d-hal-2d-rfm95-2d-master-2f-lib-2f-ideetron

