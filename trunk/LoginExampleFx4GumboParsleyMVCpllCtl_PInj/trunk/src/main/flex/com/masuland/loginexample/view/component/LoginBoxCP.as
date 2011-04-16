package com.masuland.loginexample.view.component
{
	import com.masuland.loginexample.action.event.AppEvent;
	import com.masuland.loginexample.action.event.LoginEvent;
	import com.masuland.loginexample.action.event.RegisterEvent;
	import com.masuland.loginexample.data.AppModel;
	import com.masuland.loginexample.data.state.LoginBoxState;
	import com.masuland.loginexample.data.vo.AuthenticationVO;
	
	import spark.components.supportClasses.SkinnableComponent;

	[SkinState('login')]
	[SkinState('loginProgress')]
	[SkinState('register')]
	[SkinState('registerProgress')]
	[SkinState('loggedIn')]
	public class LoginBoxCP extends SkinnableComponent
	{
		//----------------------
		// Properties
		//----------------------
		
		[Bindable]
		public var username:String = '';
		
		[Bindable]
		public var email:String = '';
		
		[Bindable]
		public var password:String = '';
		
		[Bindable]
		public var repeatPassword:String = '';

		[MessageDispatcher]
		public var dispatcher:Function;

		private var _loginBoxState:String;
		
		//----------------------
		// Getter / Setter
		//----------------------
		
		[Subscribe(scope='appModel', objectId='loginBoxState')]
		[Bindable]
		public function get loginBoxState():String
		{
			return _loginBoxState;
		}
		
		public function set loginBoxState(value:String):void
		{
			_loginBoxState = value;
			
			invalidateSkinState();
		}

		//----------------------
		// Methods
		//----------------------
		
		override protected function getCurrentSkinState():String
		{
			return _loginBoxState;
		} 
		
		public function ctaLoginOrRegister(auth:AuthenticationVO, loginBoxState:String):void
		{
			if (loginBoxState == LoginBoxState.LOGIN)
			{
				login(auth);
				resetForm();
			}
			else if (loginBoxState == LoginBoxState.REGISTER)
			{
				register(auth);
				resetForm();
			}
		}
		
		private function resetForm():void
		{
			username = '';
			email = '';
			password = '';
			repeatPassword = '';
		}
		
		private function login(auth:AuthenticationVO):void
		{
			dispatcher(new LoginEvent(auth));
		}
		
		private function register(auth:AuthenticationVO):void
		{
			dispatcher(new RegisterEvent(auth));
		}

		public function gotoLogin():void
		{
			dispatcher(new AppEvent(AppEvent.GOTO_LOGIN));
		}
		
		public function gotoRegister():void
		{
			dispatcher(new AppEvent(AppEvent.GOTO_REGISTER));
		}
	}
}