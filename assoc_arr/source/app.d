
import std.stdio;

void main(string[] args)
{
	int [string] dict;
	dict["hello"] = 5;
	dict.writeln;

	dict["hi"] = 2;
	(*("hello" in dict))++;
	dict.writeln;
	dict.keys.writeln;
}

