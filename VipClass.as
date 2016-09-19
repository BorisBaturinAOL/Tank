package {
	
	import flash.display.MovieClip;
	import flash.events.Event;	
	import flash.display.BitmapData;
	import flash.events.MouseEvent;	
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.ui.Mouse;
	import flash.text.TextFormat;
	
	public class VipClass extends MovieClip {
		
		public var Angle;
		public var t1x = 0;
		public var t2x = 0;
		public var t1y = 0;
		public var t2y = 0;
		public var Dx;
		public var Dy;
		public var Speed = 1.2;
		public var OneTime = 0;
	
		public function VipClass() {
			addEventListener(Event.ENTER_FRAME, onEnter);
		}
		
		public function onEnter(e:Event):void {
			if(Main.currentLevel == 5){
			t1x = x - 16;
			t2x = x + 24;
			if(OneTime == 0){
				t1y = y + 10;
				t2y = y + 10;
				OneTime = 1;
			}
			if(currentFrame == 1){
				if(Main.UIactive == 4){
					moveVip(this);
					rotateVip();
					moveTs();
				}
			}
			}
		}
	
		
		public function moveVip(e):void {
				x += Speed;
				if (Main.bmpd.getPixel(e.x, e.y + 9) != 0) {
					e.y+=1;
					t1y+=1;
					t2y+=1;
				}
			
				if (Main.bmpd.getPixel(e.x, e.y + 11) == 0) {
					e.y-=1;
					t1y-=1;
					t2y-=1;
				}
		}
		
		public function moveTs():void {
			if (Main.bmpd.getPixel(t1x, t1y - 1) != 0) {
				t1y+=1;
			}
			if (Main.bmpd.getPixel(t1x, t1y + 1) == 0) {
				t1y-=1;
			}
			if (Main.bmpd.getPixel(t2x, t2y - 1) != 0) {
				t2y+=1;
			}
			if (Main.bmpd.getPixel(t2x, t2y + 1) == 0) {
				t2y-=1;
			}
			Dx = t2x - t1x;
			Dy = t1y - t2y;
		}
		
		public function rotateVip():void {
			var AngleA = Math.round(Math.atan2(Dy, Dx) / Math.PI * 180);
			if(rotation > -AngleA){
				rotation -= 1;
			}else if (rotation < -AngleA){
				rotation += 1;
			}
		}
	}
}

	

