#!/bin/bash

# example from http://hipersayanx.blogspot.com/2012/12/object-oriented-programming-in-bash.html
# Base class. 
function Object()
{
    # A pointer to this Class. 
    base=$FUNCNAME
    this=$1 

    # Declare Properties. 
    export ${this}_x=$2
    export ${this}_y=$3
    export ${this}_z=$4

    # Declare methods. 
    for method in $(compgen -A function)
    do
        export ${method/#$base\_/$this\_}="${method} ${this}"
    done
}

function Object_show()
{
    base=$(expr "$FUNCNAME" : '\([a-zA-Z][a-zA-Z0-9]*\)')
    this=$1
 
    x=$(eval "echo \$${this}_x")
    y=$(eval "echo \$${this}_y")
    z=$(eval "echo \$${this}_z")
 
    echo "$this ($x, $y, $z)"
}