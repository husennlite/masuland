package com.masuland.loginexample.view.component
{
	import com.masuland.loginexample.action.event.AppEvent;
	import com.masuland.loginexample.action.event.UpdateUserEvent;
	import com.masuland.loginexample.data.vo.UserVO;
	
	import spark.components.supportClasses.SkinnableComponent;

	public class UserBoxCP extends SkinnableComponent
	{
		//----------------------
		// Properties
		//----------------------
		
		[MessageDispatcher]
		public var dispatcher:Function;
		
		[Subscribe(scope='appModel', objectId='currentUser')]
		[Bindable]
		public var currentUser:UserVO;
		
		//----------------------
		// Methods
		//----------------------
		
		public function updateUser(user:UserVO):void
		{
			dispatcher(new UpdateUserEvent(user));
		}

		public function logout():void
		{
			dispatcher(new AppEvent(AppEvent.LOGOUT));
		}
	}
}