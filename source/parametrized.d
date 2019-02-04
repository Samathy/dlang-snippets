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
        auto testcases = [[1,2],[2,3],[3,4]];

        foreach (testcase; testcases)
        {
            mixin("assert(foo(testcase[0], testcase[1]) == testcase[0] + testcase[1]); writeln(\"Tested\");");
        }

    }
}
    
