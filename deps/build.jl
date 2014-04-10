# clang++ -shared -fPIC -o gamma.dylib -lboost_math_c99 gamma.cpp
# cat gamma.cpp | clang++ -shared -fPIC -o gamma.dylib -lboost_math_c99 -xc++ -

# cd(joinpath(Pkg.dir("BoostDists"), "deps"))
#print(pwd())
run(`clang++ -shared -fPIC -o jlboostdists.dylib -lboost_math_c99 boostdists.cpp`)
