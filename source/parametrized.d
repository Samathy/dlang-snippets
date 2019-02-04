import std.stdio, std.string;
import std.conv: to;

import blerp.blerp;


int foo(int x, int y)
{
    return x + y;

}

version(parametrizedtesting) 
{
    unittest
    {
        static immutable auto testcases = [[1,2, 3],[2,3, 5],[3,4, 7]];

        static foreach (testcase; testcases)
        {
            mixin("assert(foo(testcase[0], testcase[1]) == testcase[2]); writeln(\"Tested\");");
        }

    }
}
    
