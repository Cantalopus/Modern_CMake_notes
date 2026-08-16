#[[
function(foo)
  list(APPEND CMAKE_MESSAGE_CONTEXT "foo")
  message("foo message")
endfunction()

list(APPEND CMAKE_MESSAGE_CONTEXT "top")
message("Before `foo`")
foo()
message("After `foo`")

message("---------------")

list(APPEND CMAKE_MESSAGE_INDENT " ")
message("Befor `foo`")
foo()
message("After `foo`")

message("---------------")
]]

# Run with: cmake -P message_context.cmake --log-context --log-level=<DEBUG,VERBOSE,TRACE>

function(bar)
  list(APPEND CMAKE_MESSAGE_CONTEXT "bar")
  message(VERBOSE "bar VERBOSE message")
endfunction()

function(baz)
  list(APPEND CMAKE_MESSAGE_CONTEXT "baz")
  message(DEBUG "baz DEBUG message")
endfunction()

function(foo_1)
  list(APPEND CMAKE_MESSAGE_CONTEXT "foo_1")
  bar()
  message(TRACE "foo_1 TRACE message")
  baz()
endfunction()

list(APPEND CMAKE_MESSAGE_CONTEXT "top_1")

message(VERBOSE "Before `foo`")
foo_1()
message(VERBOSE "After `foo`")

list(POP_BACK CMAKE_MESSAGE_CONTEXT)
message("done... ")
  