package {
	
	import flash.display.MovieClip;
	import flash.events.Event;	
	import flash.display.BitmapData;
	import flash.events.MouseEvent;	
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.ui.Mouse;
	import flash.text.TextFormat;
	
	public class EnemyDotClass extends MovieClip {
		
		public var reloading = 100;
		public var startReloading = reloading;
		public var explode:Explode = new Explode();
		public var enemyShell2:EnemyShell2 = new EnemyShell2();
		public var Angle;
		public var Dx;
		public var Dy;
	
		public function EnemyDotClass() {
			addEventListener(Event.ENTER_FRAME, onEnter);
		}
		
		public function onEnter(e:Event):void {
			Main.Enemies.addChild(enemyShell2);
			if(this.currentFrame == 1 && Main.UIactive == 4){
				rotateGun();
				enemyFire();
			}
		}
			
		public function rotateGun():void {
			var Dx = Main.tank.x - x;
			var Dy = Main.tank.y - y;
			var Angle = Math.atan2(Dy, Dx) / Math.PI * 180;	 
			gun.rotation = Angle+180 - rotation;
			if(gun.rotation >= 10){
				gun.rotation = 10;
			}else if (gun.rotation <= -10){
				gun.rotation = -10;
			}
		}
		
		public function enemyFire():void {
			reloading--;
			var Ex = x + Main.Enemies.x + Main.shiftX;
			if(reloading <= 0){
				if(Ex >= 0 && Ex <= 900){
					createEnemyShell();
					gun.fire.gotoAndPlay(2);
					reloading = startReloading;
				}
			}
		}
		
		public function createEnemyShell():void {
			trace('create2');
			Angle = gun.rotation;
			enemyShell2.x = x-94+Main.shiftX;
			enemyShell2.y = y-62+Math.cos(Angle)-5;
			enemyShell2.rotation = Angle;
		}
	}
}

	

