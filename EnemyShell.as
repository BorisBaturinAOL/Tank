﻿package {
	
	import flash.display.MovieClip;
	import flash.events.Event;	
	import flash.display.BitmapData;
	import flash.events.MouseEvent;	
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.ui.Mouse;
	import flash.text.TextFormat;
	
	public class EnemyShell extends MovieClip {
		
		public var Angle = 0;
		public var explode:Explode = new Explode();
	
		public function EnemyShell() {
			addEventListener(Event.ENTER_FRAME, onEnter);
		}
		
		public function onEnter(e:Event):void {
			if(Main.UIactive == 4 || Main.UIactive == 5){
				if(x > -10000){
					shellFly();
				}
				explodeEnemyShell();
				removeExplode();
			}
		}
		
		public function shellFly():void{
			rotation -= 3;
			x -= 15 * Math.cos(rotation / 180 * Math.PI);
			y -= 15 * Math.sin(rotation / 180 * Math.PI);
		}
		
		public function removeExplode():void {
			if(explode.currentFrame == 25){
				Main.Explosions.removeChild(explode);
			}
		}
		
		public function explodeEnemyShell():void {
			if (x != -10000){
				if (Main.bmpd.getPixel(x, y) == 0) {
					explodes();
				}else
				if(x <= Main.tank.x + Main.shiftX + 30 && x >= Main.tank.x + Main.shiftX && y >= Main.tank.y - 30 && y <= Main.tank.y + 30){
					explodes();
					Main.armorVarCurrent -= 5;
				}else
				if(x <= Main.vip.x + 30 && x >= Main.vip.x && y >= Main.vip.y - 30 && y <= Main.vip.y + 30){
					explodes();
					Main.armorVarCurrent -= 500;
				}
			}
		}
		public function explodes():void {
			explode.removeEventListener(Event.ENTER_FRAME, onEnter);
			Main.Explosions.addChild(explode);
			explode.gotoAndPlay(2);
			explode.x = x - Main.shiftX;
			explode.y = y;
			x = -10000;
		}
	}
}

	

