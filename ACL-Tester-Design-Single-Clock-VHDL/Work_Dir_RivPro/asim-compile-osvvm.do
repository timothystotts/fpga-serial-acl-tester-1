set SRC_DIR ".."
set ACOM_OPTS "-2008 -dbg"

adel -lib OSVVM_Common -all
alib OSVVM_Common

adel -lib osvvm_uart -all
alib osvvm_uart

eval acom ${ACOM_OPTS} -work OSVVM_Common ${SRC_DIR}/OSVVM/OsvvmLibraries/Common/src/StreamTransactionPkg.vhd
eval acom ${ACOM_OPTS} -work OSVVM_Common ${SRC_DIR}/OSVVM/OsvvmLibraries/Common/src/AddressBusTransactionPkg.vhd
eval acom ${ACOM_OPTS} -work OSVVM_Common ${SRC_DIR}/OSVVM/OsvvmLibraries/Common/src/AddressBusResponderTransactionPkg.vhd
eval acom ${ACOM_OPTS} -work OSVVM_Common ${SRC_DIR}/OSVVM/OsvvmLibraries/Common/src/AddressBusVersionCompatibilityPkg.vhd
eval acom ${ACOM_OPTS} -work OSVVM_Common ${SRC_DIR}/OSVVM/OsvvmLibraries/Common/src/ModelParametersPkg.vhd
eval acom ${ACOM_OPTS} -work OSVVM_Common ${SRC_DIR}/OSVVM/OsvvmLibraries/Common/src/FifoFillPkg_slv.vhd
eval acom ${ACOM_OPTS} -work OSVVM_Common ${SRC_DIR}/OSVVM/OsvvmLibraries/Common/src/OsvvmCommonContext.vhd

eval acom ${ACOM_OPTS} -work osvvm_uart ${SRC_DIR}/OSVVM/OsvvmLibraries/UART/src/UartTbPkg.vhd
eval acom ${ACOM_OPTS} -work osvvm_uart ${SRC_DIR}/OSVVM/OsvvmLibraries/UART/src/ScoreboardPkg_Uart.vhd
eval acom ${ACOM_OPTS} -work osvvm_uart ${SRC_DIR}/OSVVM/OsvvmLibraries/UART/src/UartTxComponentPkg.vhd
eval acom ${ACOM_OPTS} -work osvvm_uart ${SRC_DIR}/OSVVM/OsvvmLibraries/UART/src/UartRxComponentPkg.vhd
eval acom ${ACOM_OPTS} -work osvvm_uart ${SRC_DIR}/OSVVM/OsvvmLibraries/UART/src/UartContext.vhd
eval acom ${ACOM_OPTS} -work osvvm_uart ${SRC_DIR}/OSVVM/OsvvmLibraries/UART/src/UartTx.vhd
eval acom ${ACOM_OPTS} -work osvvm_uart ${SRC_DIR}/OSVVM/OsvvmLibraries/UART/src/UartRx.vhd
