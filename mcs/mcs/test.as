package
{
	import flash.events.*;
	import System.*;
	use namespace internal_ns;
	import System.Dynamic.*;
	import Microsoft.CSharp.RuntimeBinder.*;
	import System.Collections.Generic.*;
	
	public function blahBlah(v:int):void {
		trace(v);
	}
	
	public class Foo extends EventDispatcher {
	
		public static const BLAH:int = 100;
		public static const FOO:String = "asdf";
			
		public static var _q2:Array = [];
	
		private var _a:int;
		private var _b:Number;
		private var _jj:*=100;
		private var _c:Vector.<Number> = new Vector.<Number>();
		public function get a():int {
		 	return _a; }
		public function set a(value:int):void {
			_a = value;
		}
		public function get b():Number {
		 	return _b; }
		public function set b(value:Number):void {
			_b = value;
		}
		public function get c():Vector.<Number> {
		 	return _c; }
		public function set c(value:Vector.<Number>):void {
			_c = value;
		}
	}
	
	public class MyClass 
	{
		internal_ns var _foo:int = 200;
		public static var _q:Vector.<Foo> = new <Foo>[];
		private var _spiggles:String = "Blah";
//		private var _skig:int[,] = [[100,200], [200, 300]];

		public static function printVec(v:Vector.<Number>) : void {
			for each (var n:int in v) {
				Console.WriteLine("{0} number.", n);
			}
		}

		public static function printArray(a:Array) : void {
			for each (var object:Object in a) {
				Console.WriteLine("{0} number.", object);
			}
		}
		
		public static function printDblArray(a:Vector.<Number>):void {
			for each (var n:Number in a) {
				trace(n.toString() + " number.");
			}
		}
		
		public static function onActivated(event:Event):void {
			trace("Event type " + event.type + " was triggered!");
		}

		public static function dumpDict(d:Dictionary.<String,int>):void {
			trace('Dump dict..');
	       	for each (var value:int in d) {
	       		trace(value);
	       	}
	       	for (var key:String in d) {
	       		trace(key);
	       	}
	       	trace('----');
		}

        public static function Main() : void {
        	var len:int = int(100);
        	var i:int;
        	for (i = 0; i<len; i++) {
        		trace(i);
        	}
        	var re:Object = /blah/g;
        	var o6:Object = { a:100, b: 200 };
        	delete o6.a;
        	trace(String(32));
        	trace("Hello world!");
        	trace("one","two");
        	trace("one","two","three");
        	trace("one","two","three","four");
	       	trace("one",2,"three",true,"five",null,"seven",123.456,"nine");
	       	var d:Dictionary.<String,int> = new Dictionary.<String,int>();
	       	d['key1'] = 100;
	       	d['key2'] = 200;
	       	dumpDict(d);
	       	delete d['key1'];
	       	dumpDict(d);
	       	delete d['key2'];
	       	dumpDict(d);
	       	var a:Array;
        	a = [100, 200, 300];
            var s:String = '"Swami"';
			var o2:Object = {"a":100, b:"blah", c:[100, {"d":200, e:"spackle", f:["blah1", "blah2", "blah3"]}, 300]};
			o2.a = true;
			var o3:Object = new Foo();
			var f:Foo = { "a":100, b:200, c:[998, 999, 1000] };
			var fn:Function = onActivated;
			f.addEventListener(Event.ACTIVATE, onActivated);
			f.dispatchEvent(new Event(Event.ACTIVATE));
			printDblArray(f.c);
			var l:Vector.<Number> = [123, 123, 444];
			printVec(l);
			printVec([100, 200, 300, 400, 500, 600]);
			printArray([101, 201, 301, 401, 501, 601]);
			var sk:int[] = [123, 123, 444];
			l.push(100);
			l.push(200);
			var o:Object = l;
			l.push(400);
			Console.WriteLine("Hello World {0}!", l.length);
		}
	}
}

import System.*;

public class Blah2 {
	private var i:int;
}
