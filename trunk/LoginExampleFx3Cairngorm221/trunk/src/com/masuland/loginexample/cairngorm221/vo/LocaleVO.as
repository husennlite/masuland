package com.masuland.loginexample.cairngorm221.vo
{
	[Bindable]
	/**
	 * 
	 * @author Sebastian.Mohr (masuland@gmail.com)
	 */
	public class LocaleVO
	{
		public var name:String;
		public var code:String;
		
		public function LocaleVO() {}
		
		public function toString() : String
		{
			return name;
		}
	}
}