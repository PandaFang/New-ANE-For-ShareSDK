package cn.sharesdk.ane.events
{
	import flash.events.Event;
	
	/**
	 * 授权事件 
	 * @author vim888
	 * 
	 */	
	public class AuthEvent extends Event
	{
		public function AuthEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		/**
		 *  授权状态变更
		 */		
		public static const STATUS:String = "auth_status";
		
		private var _platform:int;
		private var _status:int;
		private var _error:Object;
		private var _reqId:int;
		
		/**
		 * 获取平台类型 
		 * @return 平台类型
		 * 
		 */		
		public function get platform():int
		{
			return _platform;
		}
		
		/**
		 * 设置平台类型 
		 * @param value	平台类型
		 * 
		 */		
		public function set platform(value:int):void
		{
			_platform = value;
		}

		/**
		 * 获取错误信息 
		 * @return 错误信息
		 * 
		 */		
		public function get error():Object
		{
			return _error;
		}
		
		/**
		 * 设置错误信息 
		 * @param value	错误信息
		 * 
		 */		
		public function set error(value:Object):void
		{
			_error = value;
		}

		/**
		 * 获取授权状态 
		 * @return	状态。参考ResponseState.	 
		 * 
		 */		
		public function get status():int
		{
			return _status;
		}
		
		/**
		 * 设置授权状态 
		 * @param value	状态
		 * 
		 */		
		public function set status(value:int):void
		{
			_status = value;
		}
		
		/**
		 * 获取流水号 
		 * @return 流水号
		 * 
		 */		
		public function get reqId():int
		{
			return _reqId;
		}
		
		/**
		 * 设置流水号 
		 * @param value	流水号
		 * 
		 */		
		public function set reqId(value:int):void
		{
			_reqId = value;
		}

	}
}