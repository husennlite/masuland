package com.masuland.loginexample.action.event
{	
	import com.masuland.loginexample.data.vo.StyleVO;
	
	import flash.events.Event;

	/**
	 * @author masuland.com
	 */
	public class LoadStyleEvent extends Event
	{	
		//----------------------
		// Constants
		//----------------------
		
		public static const EVENT_NAME:String = 'LoadStyleEvent.EVENT_NAME';
		
		//----------------------
		// Properties
		//----------------------
		
		public var style:StyleVO;
		
		//----------------------
		// Constructor
		//----------------------
		
		public function LoadStyleEvent(style:StyleVO, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(EVENT_NAME, bubbles, cancelable);
			
			this.style = style;
		}
	}
}