package com.masuland.loginexample.view.cb
{
	import com.masuland.loginexample.control.IAppController;
	import com.masuland.loginexample.model.AppModel;
	import com.masuland.loginexample.state.SettingsBoxState;
	import com.masuland.loginexample.vo.LayoutVO;
	import com.masuland.loginexample.vo.LocaleVO;
	import com.masuland.loginexample.vo.SettingsVO;
	import com.masuland.loginexample.vo.StyleVO;

	public class SettingsBoxCB implements ISettingsBoxCB
	{
		//----------------------
		// Properties
		//----------------------
		
		[Inject]
		[Bindable]
		public var appModel:AppModel;

		[Inject]
		public var appController:IAppController;
		
		[Inject(name='appModel', property='settings')]
		[Bindable]
		public var settings:SettingsVO;
		
		[Inject(name='appModel', property='currentLayout')]
		[Bindable]
		public var currentLayout:LayoutVO;
		
		[Inject(name='appModel', property='settingsBoxState')]
		[Bindable]
		public var settingsBoxState:String;
		
		//----------------------
		// Methods
		//----------------------
		
		public function toggleSettingsBox():void
		{
			if (appModel.settingsBoxState == SettingsBoxState.CLOSED)
			{
				appModel.settingsBoxState = SettingsBoxState.OPEN;
			}
			else
			{
				appModel.settingsBoxState = SettingsBoxState.CLOSED;
			}
		}
		
		public function loadStyle(style:StyleVO):void
		{
			appController.loadStyle(style);
		}
		
		public function loadLayout(layout:LayoutVO):void
		{
			appController.loadLayout(layout);
		}
		
		public function loadLocale(locale:LocaleVO):void
		{
			appController.loadLocale(locale);
		}
	}
}