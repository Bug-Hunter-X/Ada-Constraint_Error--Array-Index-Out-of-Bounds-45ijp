# Ada Constraint_Error: Array Index Out of Bounds

This example demonstrates a common error in Ada programming: accessing an array element with an index that is outside the array's bounds.  Ada's strong typing system helps catch these errors at compile time or runtime, preventing unexpected behavior.

The `bug.ada` file contains code that attempts to access an array element using an invalid index. This results in a `Constraint_Error` exception.

The `bugSolution.ada` file shows how to prevent this error by performing a range check before accessing the array element, or by using an appropriate subtype.