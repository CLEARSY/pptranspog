# Search for a suitable shell program, so that the tests can be run under windows
# if a unix-like shell is available
find_program(SHELL
	NAMES bash sh
	PATHS env PATH)

configure_file(${CMAKE_CURRENT_SOURCE_DIR}/setENV.model
  ${CMAKE_CURRENT_SOURCE_DIR}/setENV)


  macro(add_pptranssmt_test id)
  add_test(PPTRANSSMT.${id} ${SHELL} ${CMAKE_CURRENT_SOURCE_DIR}/do_ctest ${CMAKE_CURRENT_SOURCE_DIR} ${id} SMT)
  set_tests_properties(PPTRANSSMT.${id} PROPERTIES FAIL_REGULAR_EXPRESSION ".*Error")
  set_tests_properties(PPTRANSSMT.${id} PROPERTIES PASS_REGULAR_EXPRESSION ".* OK\\.")
  set_tests_properties(PPTRANSSMT.${id} PROPERTIES TIMEOUT 14400)
  set_tests_properties(PPTRANSSMT.${id} PROPERTIES LABELS NGOP)
endmacro(add_pptranssmt_test)

macro(add_pptranstptp_test id)
   add_test(PPTRANSTPTP.${id} ${SHELL} ${CMAKE_CURRENT_SOURCE_DIR}/do_ctest ${CMAKE_CURRENT_SOURCE_DIR} ${id} TPTP)
   set_tests_properties(PPTRANSTPTP.${id} PROPERTIES FAIL_REGULAR_EXPRESSION ".*Error")
   set_tests_properties(PPTRANSTPTP.${id} PROPERTIES PASS_REGULAR_EXPRESSION ".* OK\\.")
   set_tests_properties(PPTRANSTPTP.${id} PROPERTIES TIMEOUT 14400)
   set_tests_properties(PPTRANSTPTP.${id} PROPERTIES LABELS NGOP)
endmacro(add_pptranstptp_test)

add_pptranssmt_test(test001)
add_pptranssmt_test(test002)

add_pptranstptp_test(test001)
add_pptranstptp_test(test002)
