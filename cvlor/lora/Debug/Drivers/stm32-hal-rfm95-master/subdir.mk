################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/stm32-hal-rfm95-master/rfm95.c 

OBJS += \
./Drivers/stm32-hal-rfm95-master/rfm95.o 

C_DEPS += \
./Drivers/stm32-hal-rfm95-master/rfm95.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/stm32-hal-rfm95-master/%.o Drivers/stm32-hal-rfm95-master/%.su Drivers/stm32-hal-rfm95-master/%.cyclo: ../Drivers/stm32-hal-rfm95-master/%.c Drivers/stm32-hal-rfm95-master/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DRFM95_SPI_TIMEOUT=100 -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Core/Inc -I"C:/Temp/MPC-MKS/cvlor/lora/Drivers/stm32-hal-rfm95-master" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-stm32-2d-hal-2d-rfm95-2d-master

clean-Drivers-2f-stm32-2d-hal-2d-rfm95-2d-master:
	-$(RM) ./Drivers/stm32-hal-rfm95-master/rfm95.cyclo ./Drivers/stm32-hal-rfm95-master/rfm95.d ./Drivers/stm32-hal-rfm95-master/rfm95.o ./Drivers/stm32-hal-rfm95-master/rfm95.su

.PHONY: clean-Drivers-2f-stm32-2d-hal-2d-rfm95-2d-master

