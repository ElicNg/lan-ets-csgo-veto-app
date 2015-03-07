package com.bbqcode.lanetscsgoveto
{
	import com.bbqcode.lanetscsgoveto.models.MapModel;
	
	import flash.events.Event;
	
	public class MapClickedEvent extends Event
	{
		public static const EVENTNAME:String = "mapclickedevent";

		public var mapModel:MapModel;
		public function MapClickedEvent(model:MapModel)
		{
			super(EVENTNAME, true);
			this.mapModel = model;
		}
	}
}