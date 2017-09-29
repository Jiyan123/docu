import std.stdio;
import core.runtime;
import core.memory;


extern(C) __gshared bool rt_cmdline_enabled = false;
extern(C) __gshared bool rt_envvars_enabled = false;
extern(C) __gshared string[] rt_options = [];

void print()
{
	"-----".writeln;
	GC.stats.usedSize.writeln;
	GC.stats.freeSize.writeln;
	(GC.stats.usedSize + GC.stats.freeSize).writeln;
	"-----".writeln;
}

void main(string[] args)
{
	import std.c.stdio;
	print;
	foreach(arg; args)
	{
		arg.writeln;
	}
	
	printf("%i\n",Runtime.cArgs.argc);
	for(int i = 0; i < Runtime.cArgs.argc; i++)
	{
		printf("%s\n",Runtime.cArgs.argv[i]);
	}

	foreach(n; 0 .. 20000)
	{
		{
			int[] p = new int[100];
			print;
			//GC.free(p.ptr); // can be used to free the memory from GC
		}
		GC.collect();
	}
	GC.reserve(1000);
	print;
}

