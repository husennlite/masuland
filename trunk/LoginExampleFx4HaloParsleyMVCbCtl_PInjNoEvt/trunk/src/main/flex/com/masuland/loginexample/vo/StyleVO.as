package com.masuland.loginexample.vo
{
	[Bindable]
	/**
	 * 
	 * @author Sebastian.Mohr (masuland@gmail.com)
	 */
	public class StyleVO
	{
		public var name:String;
		public var path:String;
		
		public function StyleVO() {}
		
		public function toString() : String
		{
			return name;
		}
	}
}