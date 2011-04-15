package com.masuland.loginexample.view.cb
{
	import com.masuland.loginexample.vo.LayoutVO;

	public class LayoutStackCB implements ILayoutStackCB
	{
		//----------------------
		// Properties
		//----------------------
		
		[Inject(name='appModel', property='appStackState')]
		[Bindable]
		public var appStackState:String;

		[Inject(name='appModel', property='currentLayout')]
		[Bindable]
		public var currentLayout:LayoutVO;
	}
}