package westernsEvents
{
	import flash.events.Event;
	import vo.WesternsCollection;
	
	public class WesternsCollectionChange extends Event
	
	{
		public static const WESTERNS_COLLECTION_CHANGE_ARRAY:String="westernsCollectionChangeArray";
		public static const WESTERNS_COLLECTION_CHANGE_ITEM:String="westernsCollectionChangeItem";
		
		public var westerns:WesternsCollection;

		public function WesternsCollectionChange(type:String, westerns:WesternsCollection)
		{
			super(type);
			this.westerns=westerns;
		}
		
		override public function clone():Event
		{
			return new WesternsCollectionChange(type, westerns);
		}
	}
}
