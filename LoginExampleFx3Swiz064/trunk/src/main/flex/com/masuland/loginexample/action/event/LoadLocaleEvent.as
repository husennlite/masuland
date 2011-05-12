package com.masuland.loginexample.action.event
{	
	import com.masuland.loginexample.data.vo.LocaleVO;
	
	import flash.events.Event;
	import flash.utils.getQualifiedClassName;

	/**
	 * @author masuland.com
	 */
	public class LoadLocaleEvent extends Event
	{	
		//----------------------
		// Constants
		//----------------------
		
		public static const EVENT_NAME:String = getQualifiedClassName(
			Class(LoadLocaleEvent)).substring(
				getQualifiedClassName(Class(LoadLocaleEvent)).lastIndexOf('::')+2, 
				getQualifiedClassName(Class(LoadLocaleEvent)).length);
		
		//----------------------
		// Properties
		//----------------------
		
		public var locale:LocaleVO;
		
		//----------------------
		// Constructor
		//----------------------
		
		public function LoadLocaleEvent(locale:LocaleVO, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(EVENT_NAME, bubbles, cancelable);
			
			this.locale = locale;
		}
	}
}