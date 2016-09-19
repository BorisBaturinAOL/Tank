package {
	
	import flash.display.MovieClip;
	import flash.events.Event;	
	import flash.display.BitmapData;
	import flash.events.MouseEvent;	
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.ui.Mouse;
	import flash.text.TextFormat;
	
	public class EnemyClass extends MovieClip {
		
		public var reloading = 20;
		public var startReloading = 50;
		public var explode:Explode = new Explode();
		public var enemyShell:EnemyShell = new EnemyShell();
		public var enemyShell2:EnemyShell2 = new EnemyShell2();
		public var Angle;
		public var t1x = 0;
		public var t2x = 0;
		public var t1y = 0;
		public var t2y = 0;
		public var Dx;
		public var Dy;
		public var Speed = 0.5;
		public var OneTime = 0;
	
		public function EnemyClass() {
			addEventListener(Event.ENTER_FRAME, onEnter);
		}
		
		public function onEnter(e:Event):void {
			t1x = x - 16;
			t2x = x + 24;
			if(OneTime == 0){
				t1y = y + 10;
				t2y = y + 10;
				OneTime = 1;
			}
			if(currentFrame == 1){
				if(Main.UIactive == 4){
					gun.visible = true;
					gun2.visible = false;
					rotateGun(gun);
					enemyFire();
					moveEnemy(this);
					rotateEnemy();
					moveTs();
				}else if (Main.UIactive == 5){
					enemyFire();
				}
			}else if(currentFrame == 3){
				if(Main.UIactive == 4){
					gun2.visible = true;
					gun.visible = false;
					rotateGun(gun2);
					enemyFire();
					rotateEnemy();
				}else if (Main.UIactive == 5){
					enemyFire();
				}
			}
		}
	
		
		public function moveEnemy(e):void {
			if(x >= 220){
				x -= Speed;
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
		}
		
		public function moveTs():void {
			//t1x -= 1;
			//t2x -= 1;
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
			//trace(t1y, t2y);
		}
		
		public function rotateEnemy():void {
			var AngleA = Math.round(Math.atan2(Dy, Dx) / Math.PI * 180);
			if(rotation > -AngleA){
				rotation -= 1;
			}else if (rotation < -AngleA){
				rotation += 1;
			}
		}
			
		public function rotateGun(gun):void {
			var Dx = Main.tank.x - x;
			var Dy = Main.tank.y - y;
			var Angle = Math.atan2(Dy, Dx) / Math.PI * 180;	 
			if(currentFrame == 1){
				gun.rotation = Angle+180 - rotation + 20;
			}else if (currentFrame == 3){
				gun.rotation = Angle+180 - rotation + 5;
			}
				if(gun.rotation >= 20){
					gun.rotation = 20;
				}else if (gun.rotation <= -20){
					gun.rotation = -20;
				}
		}
		
		public function enemyFire():void {
			reloading--;
			var Ex = x + Main.Enemies.x;
			if(reloading <= 0){
				if(Ex >= 0 && Ex <= 800 && x != 0){ // для проверки близости к танку добавь - (Ex - Main.tank.x)<400
					trace(Ex - Main.tank.x);
					createEnemyShell();
					gun.fire.gotoAndPlay(2);
					gun2.fire.gotoAndPlay(2);
					reloading = startReloading;
				}
			}
		}
		
		public function createEnemyShell():void {
			Angle = gun.rotation;
			if(currentFrame == 1){
				enemyShell.removeEventListener(Event.ENTER_FRAME, onEnter);
				Main.Enemies.addChild(enemyShell);
				enemyShell.x = x-10;
				enemyShell.y = y - 30 + Math.cos(Angle)-5;
				enemyShell.rotation = gun.rotation + rotation;
			}else if(currentFrame == 3){
				enemyShell2.removeEventListener(Event.ENTER_FRAME, onEnter);
				Main.Enemies.addChild(enemyShell2);
				enemyShell2.x = x-60;
				enemyShell2.y = y - 30 + Math.cos(Angle);
				enemyShell2.rotation = gun2.rotation + rotation;
			}
			
		}
	}
}

	

