#!/bin/bash
 
# example from http://hipersayanx.blogspot.com/2012/12/object-oriented-programming-in-bash.html
# Import the class definition file.
. Object.sh

function main()
{
 
      # Create the objects
    Object 'object1' 1 2 3
    Object 'object2' 7 5 3
 
    # Show it's properties.
    echo "object1 ($object1_x, $object1_y, $object1_z)"
    echo "object2 ($object2_x, $object2_y, $object2_z)"
    
    # Call to it's methods.
    $object1_show
    $object2_show
}
 
main

eval $(pwd)