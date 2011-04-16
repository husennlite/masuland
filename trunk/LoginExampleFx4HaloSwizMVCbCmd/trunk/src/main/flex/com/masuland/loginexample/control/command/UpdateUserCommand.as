package com.masuland.loginexample.control.command
{
	import com.masuland.loginexample.business.IAppDelegate;
	import com.masuland.loginexample.control.event.UpdateUserEvent;
	import com.masuland.loginexample.model.AppModel;
	import com.masuland.loginexample.state.LoginBoxState;
	import com.masuland.loginexample.vo.UserVO;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.Responder;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;

	public class UpdateUserCommand
	{
		//----------------------
		// Properties
		//----------------------
		
		[Inject]
		public var appModel:AppModel;
		
		[Inject]
		public var appDelegate:IAppDelegate;
		
		//----------------------
		// Methods
		//----------------------
		
		[EventHandler(event='UpdateUserEvent.EVENT_NAME', properties='user')]
		public function updateUser(user:UserVO):void
		{
			var token:AsyncToken = appDelegate.updateUser(user);
			token.addResponder(new Responder(updateUser_resultHandler, updateUser_faultHandler));
		}
		
		//----------------------
		// Handler
		//----------------------
		
		/**  */
		protected function updateUser_resultHandler(event:ResultEvent):void
		{
			appModel.currentUser = UserVO( event.result );
		}
		
		/**  */
		protected function updateUser_faultHandler(event:FaultEvent):void
		{
			appModel.loginBoxState = LoginBoxState.LOGIN;
		}
	}
}