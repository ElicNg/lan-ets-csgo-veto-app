package com.bbqcode.lanetscsgoveto.utils
{
	import flash.filesystem.File;
	import flash.filesystem.FileMode;
	import flash.filesystem.FileStream;
	
	import mx.utils.StringUtil;
	
	public class LogUtil
	{
		public static	 function LogToFile(log:String):void {
			appendTextInFile("log.txt", log);
		}
		
		private var stream:FileStream;
		private static function appendTextInFile(fileName:String, txt:String):void{
			try
			{
				var file:File = File.applicationStorageDirectory.resolvePath(fileName);
				var stream:FileStream = new FileStream()
				stream.open(file, FileMode.APPEND);
				var currentDate:Date = new Date();
				stream.writeUTFBytes(StringUtil.substitute("{0} [{1}-{2}-{3} {4}:{5}:{6}]\n", txt, currentDate.fullYear, currentDate.month, currentDate.day, currentDate.hours, currentDate.minutes, currentDate.seconds));
				stream.close();	
			} 
			catch(error:Error) 
			{
				trace(error.message);
			}
			
		}
	}
}