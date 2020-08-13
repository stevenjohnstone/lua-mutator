 # Lua-mutator

 Lua-mutator is a custom mutator binding between Lua and [AFL++](https://aflplus.plus/).
 It allows [custom mutators](https://github.com/AFLplusplus/AFLplusplus/blob/stable/docs/custom_mutators.md) to be written in
 Lua 5.1 (including Lua-JIT), 5.2, 5.3 or 5.4.

 ## Installation

 Using autotools,

 ```shell
 ./build.sh
 ```

 You can find the library at ```.libs/libluamutator.so```. To use the library with AFL++

 ```shell
 export AFL_CUSTOM_MUTATOR_LIBRARY=$(pwd)/.libs/libluamutator.so
 ```

 The environment variable ```AFL_CUSTOM_MUTATOR_LUA_SCRIPT``` can be set to the path to the Lua mutator script. The default path is "./mutator.lua".

 ## Usage

 Mutator authors can optionally implement any of the following global functions in their mututator script:

 ```lua
 function init()
 end

 function fuzz(buf, max_size, add_buf)
 --return a modified version of buf
 end

 function post_process(buf)
 --return a modified version of buf
 end

 function init_trim(buf)
 -- return number of steps needed for trimming process
 end

 function trim()
 -- return a trimmed buffer
 end

 function post_trim(success)
 --return next trim index
 end

 function havoc_mutation(buf, max_size)
 --return a modified version of buf
 end

 function havoc_mutation_probability()
 --return integer in the range [0,100]
 end

 function queue_get(filename)
 --return true if 'filename' should be used
 end

 function queue_new_entry(*filename_new_queue, filename_orig_queue)
 --no return required, informative
 end
 ```

 TODO: examples

