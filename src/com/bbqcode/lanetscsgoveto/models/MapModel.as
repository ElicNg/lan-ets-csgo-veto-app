package com.bbqcode.lanetscsgoveto.models
{
	public class MapModel
	{
		[Bindable]
		public var isChoosen:Boolean;
		
		[Bindable]
		public var isVetoed:Boolean;
		
		[Bindable]
		public var mapName:String;
		
		[Bindable]
		public var imagePath:String;
		
		[Bindable]
		public var choosenBy:String;
		
		public function MapModel(mapName:String, imagePath:String)
		{
			this.mapName = mapName;
			this.imagePath = imagePath;
		}
	}
}