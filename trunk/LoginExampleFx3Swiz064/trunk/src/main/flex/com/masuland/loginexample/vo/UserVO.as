package com.masuland.loginexample.vo
{
	[Bindable]
	/**
	 * A single user
	 * @author Sebastian.Mohr (masuland@gmail.com)
	 */
	public class UserVO
	{
		public var username:String;
		public var firstname:String;
		public var lastname:String;
		public var email:String;
		public var birthday:Date;
		
		public function UserVO()
		{
		}
	}
}