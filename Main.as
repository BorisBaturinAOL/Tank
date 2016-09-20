package {
	
	import flash.display.MovieClip;
	import flash.events.Event;	
	import flash.display.BitmapData;
	import flash.events.MouseEvent;	
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.ui.Mouse;
	import flash.text.TextFormat;
	import flash.events.*;

	
	public class Main extends MovieClip {
		
		public var Backgrounds:Sprite = new Sprite();
		static public var Enemies:Sprite = new Sprite();
		static public var Elements:Sprite = new Sprite();
		static public var Explosions:Sprite = new Sprite();
		public var UIs:Sprite = new Sprite();
		public var FirstPlan:Sprite = new Sprite();
		
		static public var bmpd: BitmapData;
		public var bg:Bg = new Bg();
		public var bg2:Bg2 = new Bg2();
		public var bg3:Bg3 = new Bg3();
		public var t1:T = new T();
		public var t2:T = new T();
		static public var tank:Tank = new Tank();
		static public var vip:VIP = new VIP();
		public var enemy1:Enemy = new Enemy();
		public var enemy2:Enemy = new Enemy();
		public var enemy3:Enemy = new Enemy();
		public var enemy4:Enemy = new Enemy();
		public var enemy5:Enemy = new Enemy();
		public var enemyDot:EnemyDot = new EnemyDot();
		public var mine1:Mine = new Mine();
		public var mine2:Mine = new Mine();
		public var mine3:Mine = new Mine();
		public var bonus:Bonus = new Bonus();
		public var bonusAnimation:BonusAnimation = new BonusAnimation();
		public var mainUI:MainUI = new MainUI();
		//public var forwardBTN:ForwardBTN = new ForwardBTN();
		//public var backwardBTN:ForwardBTN = new ForwardBTN();
		//public var mainUI.fireBTN:mainUI.fireBTN = new mainUI.fireBTN();
		public var equipmentUI:EquipmentUI = new EquipmentUI();
		public var turretUI:TurretUI = new TurretUI();
		public var bodyUI:BodyUI = new BodyUI();
		
		public var skyBG:SkyBG = new SkyBG();
		public var cloudsBG:CloudsBG = new CloudsBG();
		public var backwardBG_2:BackwardBG_2 = new BackwardBG_2();
		public var backwardBG_1:BackwardBG_1 = new BackwardBG_1();
		public var realBG:RealBG = new RealBG();
		public var forwardBG:ForwardBG = new ForwardBG();
		
		public var chassisUI:ChassisUI = new ChassisUI();
		public var paintingUI:PaintingUI = new PaintingUI();
		public var colorUI:ColorUI = new ColorUI();
		public var emblemUI:EmblemUI = new EmblemUI();
		public var modesUI:ModesUI = new ModesUI();
		public var winUI:WinUI = new WinUI();
		public var noFuelUI:NoFuelUI = new NoFuelUI();
		public var buyGoldUI:BuyGoldUI = new BuyGoldUI();
		public var loseUI:LoseUI = new LoseUI();
		public var map:Map = new Map();
		public var leaveUI:LeaveUI = new LeaveUI();
		public var prebattleUI:PrebattleUI = new PrebattleUI();
		public var shell;
		public var explode:Explode = new Explode();
		public var shellAngle = 0;
		public var tSpeed = 0;
		static public var shiftX = 0;
		public var reloading = 0;
		static public var UIactive = 1;
		public var turretSpeed = 0;
		public var turretRightLimit:int;
		public var turretLeftLimit:int;
		public var smooth = 0;
		
		public var armorVar:int;
		public var turretArmorVar = 10;
		public var damageVar = 5;
		
		public var bodyArmorVar = 5;
		public var bodySpeedVar = 10;
		
		public var chassisSpeedVar = 10;
		public var chassisFuelVar = 2;
		
		static public var armorVarCurrent:int;
		public var speedVar = 100;
		
		public var Cheet = 1; //1 for normal speed
		
		public var Silver = 100;
		public var Gold = 1000;
		public var Fuel = 25;
		public var FullFuel = 25;
		
		public var RewardSilver = 100;
		public var RewardGold = 1;
		public var RewardBonus = 0;
		
		public var moveVar1 = null;
		public var moveVar2 = 0;
		
		public var wintimeout;
		
		public var enemyDotArmor;
		public var enemyDotCurrentArmor;
		
		//Tank parts
		public var turretVar1 = 2;
		public var turretVar2 = 0;
		public var turretVar3 = 0;
		public var turretVar4 = 0;
		public var turretVar5 = 3;
		public var turretVar6 = 3;
		public var turretVar7 = 3;
		public var turretVar8 = 3;
		public var turretVar9 = 3;
		public var turretVar10 = 0;
		public var turretVar11 = 3;
		public var turretVar12 = 3;
		public var turretVar13 = 3;
		public var turretVar14 = 0;
		public var turretVar15 = 3;
		public var bodyVar1 = 2;
		public var bodyVar2 = 0;
		public var bodyVar3 = 0;
		public var bodyVar4 = 0;
		public var bodyVar5 = 3;
		public var bodyVar6 = 3;
		public var bodyVar7 = 3;
		public var bodyVar8 = 3;
		public var bodyVar9 = 3;
		public var bodyVar10 = 0;
		public var bodyVar11 = 3;
		public var bodyVar12 = 3;
		public var bodyVar13 = 3;
		public var bodyVar14 = 0;
		public var bodyVar15 = 3;
		public var chassisVar1 = 2;
		public var chassisVar2 = 0;
		public var chassisVar3 = 0;
		public var chassisVar4 = 0;
		public var chassisVar5 = 3;
		public var chassisVar6 = 3;
		public var chassisVar7 = 3;
		public var chassisVar8 = 3;
		public var chassisVar9 = 3;
		public var chassisVar10 = 0;
		public var chassisVar11 = 3;		
		public var chassisVar12 = 3;
		public var chassisVar13 = 3;
		public var chassisVar14 = 0;
		public var chassisVar15 = 3;
		
		//Colors
		public var colorVar1 = 2;
		public var colorVar2 = 0;
		public var colorVar3 = 0;
		public var colorVar4 = 0;
		public var colorVar5 = 0;
		public var colorVar6 = 0;
		public var colorVar7 = 0;
		public var colorVar8 = 0;
		public var colorVar9 = 0;
		public var colorVar10 = 0;
		public var colorVar11 = 0;
		public var colorVar12 = 0;
		public var colorVar13 = 0;
		public var colorVar14 = 0;
		public var colorVar15 = 0;
		public var colorVar16 = 0;
		
		//Emblemes
		public var emblemVar1 = 2;
		public var emblemVar2 = 0;
		public var emblemVar3 = 0;
		public var emblemVar4 = 0;
		public var emblemVar5 = 0;
		public var emblemVar6 = 0;
		public var emblemVar7 = 0;
		public var emblemVar8 = 0;
		
		//Modes
		public var modeVar1 = 0;
		public var modeVar2 = 0;
		public var modeVar3 = 0;
		public var modeVar4 = 0;
		
		public var totalNumberOfEnemies = 1;
		public var allEnemiesDie = 0;
		
		static public var currentLevel = 1;
		
		public function Main() {
			changeLimits();
			addChild(Backgrounds);
			addChild(Enemies);
			addChild(Elements);
			addChild(Explosions);
			addChild(UIs);
			addChild(FirstPlan);
			Backgrounds.addChild(t1);
			Backgrounds.addChild(t2);
			Elements.addChild(tank);
			Enemies.addChild(bonusAnimation);
			UIs.addChild(mainUI);
			UIs.addChild(equipmentUI);
			equipmentUI.turret.mode2.visible = false;
			equipmentUI.turret.mode3.visible = false;
			equipmentUI.body.mode2.visible = false;
			equipmentUI.body.mode1.visible = false;
			equipmentUI.body.mode4.visible = false;
			equipmentUI.turret.emblem.visible = false;
			paintingUI.turret.mode2.visible = false;
			paintingUI.turret.mode3.visible = false;
			paintingUI.body.mode2.visible = false;
			paintingUI.body.mode1.visible = false;
			paintingUI.body.mode4.visible = false;
			tank.turret.mode2.visible = false;
			tank.turret.mode3.visible = false;
			tank.body.mode2.visible = false;
			tank.body.mode1.visible = false;
			tank.body.mode4.visible = false;
			tank.body.smoke.visible = true;
			Enemies.addChild(mine1);
			Enemies.addChild(mine2);
			Enemies.addChild(mine3);
			mine1.x = 100000;
			mine2.x = 100000;
			mine3.x = 100000;
			
			addEventListener(Event.ENTER_FRAME, onEnter);
		}
		
		public function onEnter(e:Event):void {
			
			dotArmor();
			
			equipmentUI.turretDamage.text = damageVar;
			equipmentUI.turretArmor.text = turretArmorVar;
			equipmentUI.bodyArmor.text = bodyArmorVar;
			equipmentUI.bodySpeed.text = bodySpeedVar;
			equipmentUI.chassisSpeed.text = chassisSpeedVar;
			equipmentUI.chassisFuel.text = '-'+ chassisFuelVar;
			
			movePage(moveVar1);
				
			equipmentUI.silver.text = Silver;
			equipmentUI.gold.text = Gold;
			equipmentUI.fuel.text = Fuel + '/' + FullFuel;

			if(UIactive == 4){
				addSmoke()
				tankBonus();
				tankMine();
				UIactive4();
				mineExplode();
			}
			
			this.addEventListener(KeyboardEvent.KEY_DOWN, hint);
			
			//Buttons in equipment UI
			equipmentUI.doneBTN.addEventListener(MouseEvent.MOUSE_UP, equipmentDone);
			equipmentUI.changeTurretBTN.addEventListener(MouseEvent.MOUSE_UP, changeTurretClick);
			equipmentUI.changeBodyBTN.addEventListener(MouseEvent.MOUSE_UP, changeBodyClick);
			equipmentUI.changeChassisBTN.addEventListener(MouseEvent.MOUSE_UP, changeChassisClick);
			equipmentUI.turretPositionRight.addEventListener(MouseEvent.MOUSE_DOWN, moveTurretRight);
			equipmentUI.turretPositionLeft.addEventListener(MouseEvent.MOUSE_DOWN, moveTurretLeft);
			equipmentUI.turretPositionLeft.addEventListener(MouseEvent.MOUSE_UP, stopTurretMoving);
			equipmentUI.turretPositionLeft.addEventListener(MouseEvent.RELEASE_OUTSIDE, stopTurretMoving);
			equipmentUI.turretPositionRight.addEventListener(MouseEvent.MOUSE_UP, stopTurretMoving);
			equipmentUI.turretPositionRight.addEventListener(MouseEvent.RELEASE_OUTSIDE, stopTurretMoving);
			
			//Buttons in turret UI
			turretUI.backBTN.addEventListener(MouseEvent.MOUSE_UP, turretBack);
			/*for (var i:int = 1; i < 4; i++) {
				turretUI['select'+i].addEventListener(MouseEvent.MOUSE_UP, turretFunc(i, );
			}*/
			
			turretUI.turretNextBTN.addEventListener(MouseEvent.MOUSE_UP, nextClick);
			turretUI.turretPrevBTN.addEventListener(MouseEvent.MOUSE_UP, prevClick);
			
			checkEquipment();
			checkColors();
			checkEmblem();
			checkModes();
			
			//Buttons in body UI
			bodyUI.backBTN.addEventListener(MouseEvent.MOUSE_UP, bodyBack);
			
			bodyUI.bodyNextBTN.addEventListener(MouseEvent.MOUSE_UP, nextClick);
			bodyUI.bodyPrevBTN.addEventListener(MouseEvent.MOUSE_UP, prevClick);
			
			//Buttons in chassis UI
			chassisUI.backBTN.addEventListener(MouseEvent.MOUSE_UP, chassisBack);
			
			chassisUI.chassisNextBTN.addEventListener(MouseEvent.MOUSE_UP, nextClick);
			chassisUI.chassisPrevBTN.addEventListener(MouseEvent.MOUSE_UP, prevClick);
			
			
			for (var i:int = 1; i < 16; i++) {
				turretUI.p['select'+i].addEventListener(MouseEvent.MOUSE_UP, selectTurret);
				turretUI.p['buy'+i].addEventListener(MouseEvent.MOUSE_UP, buyTurret);
				turretUI.p['open'+i].addEventListener(MouseEvent.MOUSE_UP, openTurret);
				bodyUI.p['select'+i].addEventListener(MouseEvent.MOUSE_UP, selectBody);
				bodyUI.p['buy'+i].addEventListener(MouseEvent.MOUSE_UP, buyBody);
				bodyUI.p['open'+i].addEventListener(MouseEvent.MOUSE_UP, openBody);
				chassisUI.p['select'+i].addEventListener(MouseEvent.MOUSE_UP, selectChassis);
				chassisUI.p['buy'+i].addEventListener(MouseEvent.MOUSE_UP, buyChassis);
				chassisUI.p['open'+i].addEventListener(MouseEvent.MOUSE_UP, openChassis);
			}
	
			//Buttons in painting UI
			paintingUI.changeColorBTN.addEventListener(MouseEvent.MOUSE_UP, changeColorClick);
			paintingUI.changeEmblemBTN.addEventListener(MouseEvent.MOUSE_UP, changeEmblemClick);
			paintingUI.changeModesBTN.addEventListener(MouseEvent.MOUSE_UP, changeModesClick);
			paintingUI.backBTN.addEventListener(MouseEvent.MOUSE_UP, paintingBack);
			paintingUI.doneBTN.addEventListener(MouseEvent.MOUSE_UP, paintingDone);
			
			//Buttons in color UI
			colorUI.backBTN.addEventListener(MouseEvent.MOUSE_UP, colorBack);
			colorUI.colorNextBTN.addEventListener(MouseEvent.MOUSE_UP, nextClick);
			colorUI.colorPrevBTN.addEventListener(MouseEvent.MOUSE_UP, prevClick);
			
			//Buttons in emblem UI
			emblemUI.backBTN.addEventListener(MouseEvent.MOUSE_UP, emblemBack);
			emblemUI.emblemNextBTN.addEventListener(MouseEvent.MOUSE_UP, nextClick);
			emblemUI.emblemPrevBTN.addEventListener(MouseEvent.MOUSE_UP, prevClick);
			
			//Buttons in modes UI
			modesUI.backBTN.addEventListener(MouseEvent.MOUSE_UP, modesBack);
			
			//Buttons in prebattle UI
			prebattleUI.backBTN.addEventListener(MouseEvent.MOUSE_UP, prebattleBack);
			prebattleUI.doneBTN.addEventListener(MouseEvent.MOUSE_UP, prebattleDone);
			
			//Buttons in lose/win UI
			
			loseUI.doneBTN.addEventListener(MouseEvent.MOUSE_UP, loseDone);
			winUI.doneBTN.addEventListener(MouseEvent.MOUSE_UP, winDone);
			
			//Buttons in noFuel UI
			
			noFuelUI.backBTN.addEventListener(MouseEvent.MOUSE_UP, noFuelBack);
			
			//Buttons in buyGold UI
			
			buyGoldUI.backBTN.addEventListener(MouseEvent.MOUSE_UP, buyGoldBack);
			
			if(UIactive == 5){
				if(wintimeout > 0){
					winUI.doneBTN.visible = false;
					loseUI.doneBTN.visible = false;
					wintimeout--;
				}else{
					winUI.doneBTN.visible = true;
					loseUI.doneBTN.visible = true;
				}
			}
			
			//Buttons in leave UI
			leaveUI.leaveBTN.addEventListener(MouseEvent.MOUSE_UP, leaveDone);
			leaveUI.backBTN.addEventListener(MouseEvent.MOUSE_UP, leaveBack);
			
			moveTurret();
			selectFunc();
		}
		
		public function hint(event:KeyboardEvent):void{
			allEnemiesDie = totalNumberOfEnemies;
			enemyDot.gotoAndStop(2);
		}
		
		public function tankMine():void {
			for(var i:int = 1; i < 2; i++){
			if(tank.x >= this['mine'+i].x+Enemies.x - 20){
				Explosions.addChild(explode);
				explode.gotoAndPlay(2);
				explode.x = this['mine'+i].x - shiftX;
				explode.y = this['mine'+i].y;
				this['mine'+i].x = 100000;
				this['mine'+i].y = 100000;
				armorVarCurrent -= 50;
			}
			}
			
		}
		
		public function mineExplode():void {
			for(var i:int = 1; i < 2; i++){
				if(Explosions.hitTestObject(this['mine'+i])){
					Explosions.addChild(explode);
					explode.gotoAndPlay(2);
					explode.x = this['mine'+i].x - shiftX + 18;
					explode.y = this['mine'+i].y;
					this['mine'+i].x = 100000;
					this['mine'+i].y = 100000;
				}
			}
			
		}
		
		public function tankBonus():void {
			if(tank.x >= bonus.x+Enemies.x-20){
				RewardBonus = parseInt(bonus.bonus.text);
				bonusAnimation.c.bonus.text = '+' + RewardBonus;
				bonusAnimation.gotoAndPlay(1);
				bonusAnimation.x = bonus.x;
				bonusAnimation.y = bonus.y;
				bonus.x = 100000;
				bonus.y = 100000;
			}
		}
		
		public function nextClick(event:MouseEvent):void{
			var e = event.currentTarget.name.slice(0,6);
			if(e == 'bodyNe'){
				e = 'body';
			}else if(e == 'chassi'){
				e = 'chassis';
			}else if(e == 'colorN'){
				e = 'color';
			}
			var f = this[e + 'UI'].currentFrame+1;
			moveVar1 = this[e + 'UI'];
			moveVar2 = 10;
		}
		
		public function prevClick(event:MouseEvent):void{
			var e = event.currentTarget.name.slice(0,6);
			if(e == 'bodyPr'){
				e = 'body';
			}else if(e == 'chassi'){
				e = 'chassis';
			}else if(e == 'colorP'){
				e = 'color';
			}
			var f = this[e + 'UI'].currentFrame+1;
			moveVar1 = this[e + 'UI'];
			moveVar2 = -10;
		}
		
		public function movePage(page):void{
			if(moveVar1){
				if(moveVar2 == 0){
					moveVar1 = null;
				}else if(moveVar2 > 0){
					moveVar2 --;
					page.gotoAndStop(page.currentFrame + 1);
				}else if(moveVar2 < 0){
					moveVar2 ++;
					page.gotoAndStop(page.currentFrame - 1);
				}
			}else{
				moveVar2 = 0;
			}
		}
		
		public function loseDone(event:MouseEvent):void{
			if(wintimeout == 0){
				UIs.removeChild(loseUI);
				UIs.addChild(equipmentUI);
				map.visible = false;
				UIactive = 2;
			}
		}
		
		public function winDone(event:MouseEvent):void{
			if(wintimeout == 0){	
				currentLevel++;
				UIs.removeChild(winUI);
				UIs.addChild(equipmentUI);
				map.visible = false;
				UIactive = 2;
			}
		}
		
		public function buyTurret(event:MouseEvent):void{
			var i = int(event.currentTarget.name.slice(3,10));
			if(Silver >= 100){
				Silver -= 100;
				this['turretVar' + i] = 2;
			}
		}
		
		public function buyBody(event:MouseEvent):void{
			var i = int(event.currentTarget.name.slice(3,10));
			if(Silver >= 100){
				Silver -= 100;
				this['bodyVar' + i] = 2;
			}
		}
		
		public function buyChassis(event:MouseEvent):void{
			var i = int(event.currentTarget.name.slice(3,10));
			if(Silver >= 100){
				Silver -= 100;
				this['chassisVar' + i] = 2;
			}
		}
		
		public function openTurret(event:MouseEvent):void{
			var i = int(event.currentTarget.name.slice(4,10));
			var g = event.currentTarget.price.text;
			if(Gold >= g){
				Gold -= g;
				this['turretVar' + i] = 2;
			}else{
				openNoGold();
			}
		}
		
		public function openBody(event:MouseEvent):void{
			var i = int(event.currentTarget.name.slice(4,10));
			var g = event.currentTarget.price.text;
			if(Gold >= g){
				Gold -= g;
				this['bodyVar' + i] = 2;
			}else{
				openNoGold();
			}
		}
		
		public function openChassis(event:MouseEvent):void{
			var i = int(event.currentTarget.name.slice(4,10));
			var g = event.currentTarget.price.text;
			if(Gold >= g){
				Gold -= g;
				this['chassisVar' + i] = 2;
			}else{
				openNoGold();
			}
		}
		
		public function checkEquipment():void{
			for (var i:int = 1; i < 16; i++) {
				if(this['turretVar' + i] == 0){
					turretUI.p['buy' + i].visible = true;
					turretUI.p['open' + i].visible = true;
				}else if(this['turretVar' + i] == 1){
					turretUI.p['buy' + i].visible = true;
					turretUI.p['open' + i].visible = false;
				}else if(this['turretVar' + i] == 2){
					turretUI.p['buy' + i].visible = false;
					turretUI.p['open' + i].visible = false;
				}else if(this['turretVar' + i] == 3){
					turretUI.p['buy' + i].visible = false;
					turretUI.p['open' + i].visible = false;
					turretUI.p['select' + i].visible = false;
				}
				if(this['bodyVar' + i] == 0){
					bodyUI.p['buy' + i].visible = true;
					bodyUI.p['open' + i].visible = true;
				}else if(this['bodyVar' + i] == 1){
					bodyUI.p['buy' + i].visible = true;
					bodyUI.p['open' + i].visible = false;
				}else if(this['bodyVar' + i] == 2){
					bodyUI.p['buy' + i].visible = false;
					bodyUI.p['open' + i].visible = false;
				}else if(this['bodyVar' + i] == 3){
					bodyUI.p['buy' + i].visible = false;
					bodyUI.p['open' + i].visible = false;
					bodyUI.p['select' + i].visible = false;
				}
				if(this['chassisVar' + i] == 0){
					chassisUI.p['buy' + i].visible = true;
					chassisUI.p['open' + i].visible = true;
				}else if(this['chassisVar' + i] == 1){
					chassisUI.p['buy' + i].visible = true;
					chassisUI.p['open' + i].visible = false;
				}else if(this['chassisVar' + i] == 2){
					chassisUI.p['buy' + i].visible = false;
					chassisUI.p['open' + i].visible = false;
				}else if(this['chassisVar' + i] == 3){
					chassisUI.p['buy' + i].visible = false;
					chassisUI.p['open' + i].visible = false;
					chassisUI.p['select' + i].visible = false;
				}
			}
		}
		
		public function checkColors():void{
			for (var i:int = 1; i < 17; i++) {
				if(this['colorVar' + i] == 0){
					colorUI.p['buy' + i].visible = true;
					colorUI.p['open' + i].visible = true;
				}else if(this['colorVar' + i] == 1){
					colorUI.p['buy' + i].visible = true;
					colorUI.p['open' + i].visible = false;
				}else if(this['colorVar' + i] == 2){
					colorUI.p['buy' + i].visible = false;
					colorUI.p['open' + i].visible = false;
				}
			}
		}
		
		public function checkEmblem():void{
			for (var i:int = 1; i < 9; i++) {
				if(this['emblemVar' + i] == 0){
					emblemUI.p['buy' + i].visible = true;
					emblemUI.p['open' + i].visible = true;
				}else if(this['emblemVar' + i] == 1){
					emblemUI.p['buy' + i].visible = true;
					emblemUI.p['open' + i].visible = false;
				}else if(this['emblemVar' + i] == 2){
					emblemUI.p['buy' + i].visible = false;
					emblemUI.p['open' + i].visible = false;
				}
			}
		}
		
		public function checkModes():void{
			for (var i:int = 1; i < 5; i++) {
				if(this['modeVar' + i] == 0){
					modesUI.p['buy' + i].visible = true;
					modesUI.p['open' + i].visible = true;
				}else if(this['modeVar' + i] == 1){
					modesUI.p['buy' + i].visible = true;
					modesUI.p['open' + i].visible = false;
				}else if(this['modeVar' + i] == 2){
					modesUI.p['buy' + i].visible = false;
					modesUI.p['open' + i].visible = false;
				}
			}
		}
		
		public function noFuelBack(event:MouseEvent):void{
			UIs.removeChild(noFuelUI);
			map.visible = true;
			UIs.addChild(equipmentUI);
			createPrebattle();
		}
		
		public function createPrebattle():void{
			UIs.addChild(prebattleUI);
			prebattleUI.enemies.gotoAndStop(currentLevel);
		}
		
		public function buyGoldBack(event:MouseEvent):void{
			UIs.removeChild(buyGoldUI);
		}
		
		public function emblemBack(event:MouseEvent):void{
			UIs.removeChild(emblemUI);
		}
		
		public function modesBack(event:MouseEvent):void{
			UIs.removeChild(modesUI);
		}
		
		public function prebattleBack(event:MouseEvent):void{
			UIs.removeChild(prebattleUI);
			map.visible = false;
			UIs.addChild(paintingUI);
			UIs.addChild(equipmentUI);
		}
		
		public function prebattleDone(event:MouseEvent):void{
			if(Fuel >= chassisFuelVar){
				map.visible = false;
				UIs.removeChild(prebattleUI);
				UIs.removeChild(equipmentUI);
				UIactive = 4;
				startLevel();
				Fuel -= chassisFuelVar;
			}else{
				UIs.addChild(noFuelUI);
				map.visible = false;
				UIs.removeChild(prebattleUI);
				UIs.removeChild(equipmentUI);
				noFuelUI.gold.text = Gold;
			}
		}
		
		public function selectFunc():void{
			if(UIactive == 2){
				for (var i:int = 1; i < 9; i++) {
					emblemUI.p['select' + i].addEventListener(MouseEvent.MOUSE_UP, emblem);
					emblemUI.p['buy' + i].addEventListener(MouseEvent.MOUSE_UP, buyEmblem);
					emblemUI.p['open' + i].addEventListener(MouseEvent.MOUSE_UP, openEmblem);
				}
				for (var ii:int = 1; ii < 5; ii++) {
					modesUI.p['select' + ii].addEventListener(MouseEvent.MOUSE_UP, modes);
					modesUI.p['buy'+ii].addEventListener(MouseEvent.MOUSE_UP, buyMode);
					modesUI.p['open'+ii].addEventListener(MouseEvent.MOUSE_UP, openMode);
					modesUI.p['remove' + ii].addEventListener(MouseEvent.MOUSE_UP, removeModes);
				}
				for (var iii:int = 1; iii < 17; iii++) {
					colorUI.p['select' + iii].addEventListener(MouseEvent.MOUSE_UP, color);
					colorUI.p['buy'+iii].addEventListener(MouseEvent.MOUSE_UP, buyColor);
					colorUI.p['open'+iii].addEventListener(MouseEvent.MOUSE_UP, openColor);
				}
			}
		}
		
		public function buyColor(event:MouseEvent):void{
			var i = int(event.currentTarget.name.slice(3,10));
			var s = event.currentTarget.price.text;
			if(Silver >= s){
				Silver -= s;
				this['colorVar' + i] = 2;
			}
		}
		
		public function openColor(event:MouseEvent) :void{
			var i = int(event.currentTarget.name.slice(4,10));
			var g = event.currentTarget.price.text;
			if(Gold >= g){
				Gold -= g;
				this['colorVar' + i] = 2;
			}else{
				openNoGold();
			}
		}
		
		public function buyEmblem(event:MouseEvent):void{
			var i = int(event.currentTarget.name.slice(3,10));
			var s = event.currentTarget.price.text;
			if(Silver >= s){
				Silver -= s;
				this['emblemVar' + i] = 2;
			}
		}
		
		public function openEmblem(event:MouseEvent) :void{
			var i = int(event.currentTarget.name.slice(4,10));
			var g = event.currentTarget.price.text;
			if(Gold >= g){
				Gold -= g;
				this['emblemVar' + i] = 2;
			}else{
				openNoGold();
			}
		}
		
		public function openNoGold():void {
			UIs.addChild(buyGoldUI);
			buyGoldUI.gold.text = Gold;
		}
		
		public function buyMode(event:MouseEvent):void{
			var i = int(event.currentTarget.name.slice(3,10));
			var s = event.currentTarget.price.text;
			if(Silver >= s){
				Silver -= s;
				this['modeVar' + i] = 2;
			}
		}
		
		public function openMode(event:MouseEvent) :void{
			var i = int(event.currentTarget.name.slice(4,10));
			var g = event.currentTarget.price.text;
			if(Gold >= g){
				Gold -= g;
				this['modeVar' + i] = 2;
			}else{
				openNoGold();
			}
		}
		
		public function removeModes(event:MouseEvent):void{
			var i = int(event.currentTarget.name.slice(6,10));
			if(i == 1){
				FullFuel -= 15;
			}else if(i == 2){
				armorVar -= 10;
			}else if(i == 3){
				speedVar -= 10;
			}else if(i == 4){
				damageVar -= 10;
			}
			modesUI.p['remove' + i].visible = false;
			modesUI.p['select' + i].visible = true;
			modesUI.p['selected' + i].visible = false;
			if(equipmentUI.turret['mode' + i]){
				equipmentUI.turret['mode' + i].visible = false;
				paintingUI.turret['mode' + i].visible = false;
				tank.turret['mode' + i].visible = false;
			}
			if(equipmentUI.body['mode' + i]){
				equipmentUI.body['mode' + i].visible = false;
				paintingUI.body['mode' + i].visible = false;
				tank.body['mode' + i].visible = false;
			}
		}
		
		public function modes(event:MouseEvent):void{
			var i = int(event.currentTarget.name.slice(6,10));
			if(i == 1){
				FullFuel += 15;
			}else if(i == 2){
				armorVar += 10;
			}else if(i == 3){
				speedVar += 10;
			}else if(i == 4){
				damageVar += 10;
			}
			modesUI.p['selected' + i].visible = true;
			modesUI.p['remove' + i].visible = true;
			if(equipmentUI.turret['mode' + i]){
				equipmentUI.turret['mode' + i].visible = true;
				paintingUI.turret['mode' + i].visible = true;
				tank.turret['mode' + i].visible = true;
			}
			if(equipmentUI.body['mode' + i]){
				equipmentUI.body['mode' + i].visible = true;
				paintingUI.body['mode' + i].visible = true;
				tank.body['mode' + i].visible = true;
			}
		}
		
		public function stopTurretMoving(e:MouseEvent):void{
			turretSpeed = 0;
		}
		
		public function chassisBack(event:MouseEvent):void{
			UIs.removeChild(chassisUI);
		}
		
		public function bodyBack(event:MouseEvent):void{
			UIs.removeChild(bodyUI);
		}
		
		public function emblem(event:MouseEvent):void{
			var i = int(event.currentTarget.name.slice(6,10));
			tank.turret.emblem.gotoAndStop(i);
			paintingUI.turret.emblem.gotoAndStop(i);
			paintingUI.emblem.gotoAndStop(i);
			UIs.removeChild(emblemUI);
			for(var uu:int = 1; uu < 9; uu++){
				emblemUI.p['selected' + uu].visible = false;
			}
			emblemUI.p['selected' + i].visible = true;
		}
		
		public function color(event:MouseEvent):void{
			var i = int(event.currentTarget.name.slice(6,10));
			paintingUI.color.gotoAndStop(i);
			for(var uu:int = 1; uu < 9; uu++){
				colorUI.p['selected' + uu].visible = false;
			}
			colorUI.p['selected' + i].visible = true;
			for(var u:int = 1; u < 16; u++){
				if(tank.turret['c'+u]){
					paintingUI.turret['c'+u].gotoAndStop(i);
					paintingUI.gun['c'+u].gotoAndStop(i);
					paintingUI.chassis['c'+u].gotoAndStop(i);
					paintingUI.body['c'+u].gotoAndStop(i);
					tank.turret['c'+u].gotoAndStop(i);
					tank.aim.gun['c'+u].gotoAndStop(i);
					tank.chassis['c'+u].gotoAndStop(i);
					tank.body['c'+u].gotoAndStop(i);
				}
			}
			UIs.removeChild(colorUI);
		}
		
		public function colorBack(e:MouseEvent):void{
			UIs.removeChild(colorUI);
		}
		
		public function changeColorClick(e:MouseEvent):void{
			UIs.addChild(colorUI);
		}
		
		public function changeEmblemClick(e:MouseEvent):void{
			UIs.addChild(emblemUI);
		}
		
		public function changeModesClick(e:MouseEvent):void{
			UIs.addChild(modesUI);
		}
		
		public function paintingBack(e:MouseEvent):void{
			UIs.removeChild(paintingUI);
			UIs.addChild(equipmentUI);
			UIactive = 2;
		}
		
		public function paintingDone(e:MouseEvent):void{
			UIs.removeChild(paintingUI);
			createPrebattle();
			FirstPlan.addChild(map);
			map.visible = true;
			UIactive = 3;
			changeMap();
			tank.turret.x = (equipmentUI.turret.x - equipmentUI.body.x - equipmentUI.body.sizer.x)/2 + tank.body.x + tank.body.sizer.x/2;
			tank.aim.x = tank.turret.x + 67;
			armorVar = 100 + bodyArmorVar + turretArmorVar;
			speedVar = 100 + bodySpeedVar + chassisSpeedVar;
			armorVarCurrent = armorVar;
		}
		
		public function changeMap():void{
			var c = currentLevel-1; 
			map['p'+currentLevel].gotoAndStop(4);
			if(map['l'+c]){
				map['l'+c].gotoAndStop(2);
			}
		}
		
		public function startLevel():void{
			tank.aim.rotation = 0;
			Backgrounds.addChild(bg);
			bg.x = 0;
			Backgrounds.addChild(bg2);
			bg2.x = 0;
			Backgrounds.addChild(bg3);
			bg3.x = 0;
			Enemies.x = 0;
			Backgrounds.addChild(skyBG);
			Backgrounds.addChild(cloudsBG);
			Backgrounds.addChild(backwardBG_2);
			Backgrounds.addChild(backwardBG_1);
			Backgrounds.addChild(enemyDot);
			enemyDotArmor = 20;
			enemyDotCurrentArmor = enemyDotArmor;
			enemyDot.x = -1000;
			enemyDot.y = -1000;
			enemyDot.gotoAndStop(2);
			enemyDot.armor.text = enemyDotCurrentArmor + '/' + enemyDotArmor;
			Backgrounds.addChild(realBG);
			Elements.addChild(forwardBG);
			forwardBG.mouseEnabled = false;
			forwardBG.mouseChildren = false;
			realBG.x = 0;
			
		
			if(currentLevel == 1){
				bmpd = new BitmapData(2000, 480, false, 0xFF0000);
				bmpd.draw(bg);
				backwardBG_2.gotoAndStop(1);
				backwardBG_1.gotoAndStop(1);
				realBG.gotoAndStop(1);
				forwardBG.gotoAndStop(1);
			}else if(currentLevel == 2){
				bmpd = new BitmapData(2000, 480, false, 0xFF0000);
				bmpd.draw(bg2);
				backwardBG_2.gotoAndStop(2);
				backwardBG_1.gotoAndStop(2);
				realBG.gotoAndStop(2);
				forwardBG.gotoAndStop(2);
			}else if(currentLevel == 3){
				bmpd = new BitmapData(2000, 480, false, 0xFF0000);
				bmpd.draw(bg);
				backwardBG_2.gotoAndStop(1);
				backwardBG_1.gotoAndStop(1);
				realBG.gotoAndStop(1);
				forwardBG.gotoAndStop(1);
			}else if(currentLevel == 4){
				bmpd = new BitmapData(2000, 480, false, 0xFF0000);
				bmpd.draw(bg2);
				backwardBG_2.gotoAndStop(2);
				backwardBG_1.gotoAndStop(2);
				realBG.gotoAndStop(2);
				forwardBG.gotoAndStop(2);
			}else if(currentLevel == 5){
				bmpd = new BitmapData(2000, 480, false, 0xFF0000);
				bmpd.draw(bg3);
				backwardBG_2.gotoAndStop(3);
				backwardBG_1.gotoAndStop(3);
				realBG.gotoAndStop(3);
				forwardBG.gotoAndStop(3);
			}else if(currentLevel > 5){
				bmpd = new BitmapData(2000, 480, false, 0xFF0000);
				bmpd.draw(bg);
				backwardBG_2.gotoAndStop(1);
				backwardBG_1.gotoAndStop(1);
				realBG.gotoAndStop(1);
				forwardBG.gotoAndStop(1);
			}
			
			t1.x = 120;
			t2.x = 170;
			t1.y = 230;
			t2.y = 230;
			tank.x = 150;
			tank.y = 250;
			tank.rotation = 0;
			shiftX = 0;
			
			var allCoordinates = {
				m1x1:442, m1y1:305, m1r1:0,
				m1x2:755, m1y2:250, m1r2:0,
				m1x3:1250, m1y3:285, m1r3:0,
				m1x4:1533, m1y4:220, m1r4:0,
				
				m2x1:1400, m2y1:250, m2r1:0,
				m2x2:1863, m2y2:154, m2r2:0,
				
				m3x1:780, m3y1:350, m3r1:0,
				m3x2:1140, m3y2:314, m3r2:0,
				m3x3:1886, m3y3:239, m3r3:0,
				
				x4:860, y4:315, m1r2:0
			};
				
			createEnemies(allCoordinates);
			createMines({x1:392, y1:304, r1:0, x2:924, y2:274, r2:14, x3:0, y3:252, r3:0, x4:500, y4:210, r4:0, x5:516, y5:208, r5:0, x6:780, y6:350, r6:0});
			createBonus({x1:581, y1:272, r1:-14, x2:1250, y2:285, r2:-14, x3:1533, y3:220, r3:0, x4:845, y4:314, r4:0, x5:755, y5:250, r5:0, x6:1140, y6:314, r6:0});
		}
		
		public function createEnemies(coordinates:Object):void {
			var i:int;
			if(currentLevel == 1){
				Enemies.addChild(enemy1);
				selectEnemyType(enemy1, 1);
				enemy1.rotation = 0;
				totalNumberOfEnemies = 1;
				enemy1.x = coordinates['m1x1'];
				enemy1.y = coordinates['m1y1'];
				enemy1.t1x = 0;
				enemy1.t2x = 0;
				enemy1.t1y = 0;
				enemy1.t2y = 0;
			}else if(currentLevel == 2){
				Enemies.addChild(enemy1);
				enemy1.gotoAndStop(1);
				enemy1.gun.gotoAndStop(1);
				enemy1.rotation = 0;
				totalNumberOfEnemies = 1;
				enemy1.x = coordinates['m2x1'];
				enemy1.y = coordinates['m2y1'];
				enemy1.t1x = 0;
				enemy1.t2x = 0;
				enemy1.t1y = 0;
				enemy1.t2y = 0;
			}else if(currentLevel == 3){
				for(i = 1; i < 3; i++){
					var ii = i + 2;
					Enemies.addChild(this['enemy' + i]);
					this['enemy' + i].gotoAndStop(1);
					this['enemy' + i].gun.gotoAndStop(1);
					this['enemy' + i].rotation = 0;
					totalNumberOfEnemies = 2;
					this['enemy' + i].x = coordinates['m1x' + ii];
					this['enemy' + i].y = coordinates['m1y' + ii];
					this['enemy' + i].t1x = 0;
					this['enemy' + i].t2x = 0;
					this['enemy' + i].t1y = 0;
					this['enemy' + i].t2y = 0;
				}
			}else if(currentLevel == 4){
				for(i = 1; i < 3; i++){
					Enemies.addChild(this['enemy' + i]);
					this['enemy' + i].gotoAndStop(1);
					this['enemy' + i].gun.gotoAndStop(1);
					this['enemy' + i].rotation = 0;
					this['enemy' + i].x = coordinates['m1x' + i];
					this['enemy' + i].y = coordinates['m1y' + i];
					this['enemy' + i].t1x = 0;
					this['enemy' + i].t2x = 0;
					this['enemy' + i].t1y = 0;
					this['enemy' + i].t2y = 0;
				}
				totalNumberOfEnemies = 2;
				enemyDot.x = coordinates['m2x2'];
				enemyDot.y = coordinates['m2y2']+50;
				enemyDot.gotoAndStop(1);
			}else if(currentLevel == 5){
				for(i = 1; i < 4; i++){
					Enemies.addChild(this['enemy' + i]);
					this['enemy' + i].gotoAndStop(1);
					this['enemy' + i].gun.gotoAndStop(1);
					this['enemy' + i].rotation = 0;
					totalNumberOfEnemies = 3;
					this['enemy' + i].x = coordinates['m3x' + i];
					this['enemy' + i].y = coordinates['m3y' + i];
					this['enemy' + i].t1x = 0;
					this['enemy' + i].t2x = 0;
					this['enemy' + i].t1y = 0;
					this['enemy' + i].t2y = 0;
					Enemies.addChild(vip);
					vip.x = 150;
					vip.y = 250;
				}
			}else if(currentLevel == 6){
				for(i = 1; i < 4; i++){
					Enemies.addChild(this['enemy' + i]);
					this['enemy' + i].gotoAndStop(1);
					this['enemy' + i].gun.gotoAndStop(1);
					this['enemy' + i].rotation = 0;
					totalNumberOfEnemies = 3;
					this['enemy' + i].x = coordinates['m1x' + i];
					this['enemy' + i].y = coordinates['m1y' + i];
					this['enemy' + i].t1x = 0;
					this['enemy' + i].t2x = 0;
					this['enemy' + i].t1y = 0;
					this['enemy' + i].t2y = 0;
					if(i == 3){
						selectEnemyType(enemy3, 2);
					}
				}
			}
			prebattleUI.fuel.text = chassisFuelVar;
		}
		
		public function createMines(coordinates:Object):void {
			if(currentLevel == 3){
				mine1.x = coordinates['x1'];
				mine1.y = coordinates['y1'];
				mine1.rotation = coordinates['r1'];
			}else if(currentLevel == 4){
				mine1.x = coordinates['x5'];
				mine1.y = coordinates['y5'];
				mine1.rotation = coordinates['r5'];
			}else if(currentLevel == 5){
				mine1.x = coordinates['x6'];
				mine1.y = coordinates['y6'];
				mine1.rotation = coordinates['r6'];
			}else{
				mine1.x = 100000;
				mine1.y = 100000;
			}
		}
		
		public function createBonus(coordinates:Object):void {
			Enemies.addChild(bonus);
			if(currentLevel == 1){
				bonus.x = 10000;
				bonus.y = 10000;
			}else if(currentLevel == 2){
				bonus.x = coordinates['x4'];
				bonus.y = coordinates['y4'];
				bonus.rotation = coordinates['r4'];
				bonus.rotation = 0;
			}else if(currentLevel == 3){
				bonus.x = coordinates['x5'];
				bonus.y = coordinates['y5'];
				bonus.rotation = coordinates['r5'];
			}else if(currentLevel == 4){
				bonus.x = coordinates['x4'];
				bonus.y = coordinates['y4'];
				bonus.rotation = coordinates['r4'];
			}else if(currentLevel == 5){
				bonus.x = coordinates['x6'];
				bonus.y = coordinates['y6'];
				bonus.rotation = coordinates['r6'];
			}else{
				bonus.x = coordinates['x5'];
				bonus.y = coordinates['y5'];
				bonus.rotation = coordinates['r5'];
			}
		}
		
		public function selectEnemyType(e, t):void{
			e.gun.gotoAndStop(1);
			e.gun2.gotoAndStop(1);
			if(t == 2){
				e.gotoAndStop(3);
				e.gun.visible = false;
				e.gun2.visible = true;
			}else{
				e.gotoAndStop(1);
				e.gun.visible = true;
				e.gun2.visible = false;
			}
		}
		
		public function removeLevel():void{
			allEnemiesDie = 0;
			UIactive = 2;
			Backgrounds.removeChild(realBG);
			if(enemyDot){
				Backgrounds.removeChild(enemyDot);
			}
			if(bonus){
				Enemies.removeChild(bonus);
			}
			vip.x = -10000;
			if(shell){
				shell.x = -10000;
			}
			for(var i:int = 1; i < totalNumberOfEnemies + 1; i++){ 
				this['enemy' + i].removeEventListener(Event.ENTER_FRAME, onEnter);
				this['enemy' + i].smoke.visible = false;
				Enemies.removeChild(this['enemy' + i]);
			}
		}
		
		public function selectTurret(event:MouseEvent):void{
			var i = int(event.currentTarget.name.slice(6,10));
				equipmentUI.turret.gotoAndStop(i);
				equipmentUI.gun.gotoAndStop(i);
				paintingUI.turret.gotoAndStop(i);
				paintingUI.gun.gotoAndStop(i);
				tank.turret.gotoAndStop(i);
				tank.aim.gun.gotoAndStop(i);
				turretUI.p['selected'+i].visible = true;
				for (var u:int = 1; u < 16; u++){
					if(u != i){
						turretUI.p['selected'+u].visible = false;
					}
				}
			if(i == 1){
				damageVar = 10;
				turretArmorVar = 5;
				//equipmentUI.turretDamage.textColor = 0x44B453;
				//equipmentUI.turretArmor.textColor = 0xBA1C30;
			}else if(i == 2){
				damageVar = 5;
				turretArmorVar = 10;
			}else if(i == 3){
				damageVar = 15;
				turretArmorVar = 15;
			}else if(i == 4){
				damageVar = 15;
				turretArmorVar = 10;
			}else if(i == 10){
				damageVar = 30;
				turretArmorVar = 35;
			}else if(i == 14){
				damageVar = 45;
				turretArmorVar = 40;
			}
				changeLimits();
				UIs.removeChild(turretUI);
		}
		
		public function selectBody(event:MouseEvent):void{
			var i = int(event.currentTarget.name.slice(6,10));
				equipmentUI.body.gotoAndStop(i);
				paintingUI.body.gotoAndStop(i);
				tank.body.gotoAndStop(i);
				bodyUI.p['selected'+i].visible = true;
				for (var u:int = 1; u < 16; u++){
					if(u != i){
						bodyUI.p['selected'+u].visible = false;
					}
				}
			if(i == 1){
				bodyArmorVar = 5;
				bodySpeedVar = 10;
			}else if(i == 2){
				bodyArmorVar = 10;
				bodySpeedVar = 5;
			}else if(i == 3){
				bodyArmorVar = 15;
				bodySpeedVar = 15;
			}else if(i == 4){
				bodyArmorVar = 10;
				bodySpeedVar = 15;
			}else if(i == 10){
				bodyArmorVar = 30;
				bodySpeedVar = 35;
			}else if(i == 14){
				bodyArmorVar = 45;
				bodySpeedVar = 40;
			}
				changeLimits();
				UIs.removeChild(bodyUI);
		}
		
		public function selectChassis(event:MouseEvent):void{
			var i = int(event.currentTarget.name.slice(6,10));
				equipmentUI.chassis.gotoAndStop(i);
				paintingUI.chassis.gotoAndStop(i);
				tank.chassis.gotoAndStop(i);
				chassisUI.p['selected'+i].visible = true;
				for (var u:int = 1; u < 16; u++){
					if(u != i){
						chassisUI.p['selected'+u].visible = false;
					}
				}
			if(i == 1){
				chassisSpeedVar = 10;
				chassisFuelVar = 2;
			}else if(i == 2){
				chassisSpeedVar = 20;
				chassisFuelVar = 3;
			}else if(i == 3){
				chassisSpeedVar = 30;
				chassisFuelVar = 2;
			}else if(i == 4){
				chassisSpeedVar = 40;
				chassisFuelVar = 3;
			}else if(i == 10){
				chassisSpeedVar = 35;
				chassisFuelVar = 5;
			}else if(i == 14){
				chassisSpeedVar = 40;
				chassisFuelVar = 5;
			}
				UIs.removeChild(chassisUI);
		}
		
		public function UIactive4():void{
			
			win();
			
			lose();

			mainUI.armorLine.width = 160*armorVarCurrent/armorVar;
			mainUI.battleTimer.text = "0";
			mainUI.helpText.text = "Move forward to win!";
			mainUI.armorText.text = armorVarCurrent + "/" + armorVar;
			
			rotateTank();
			moveT(t1);
			moveT(t2);
			moveT(tank);
			realBG.x -= tSpeed*Cheet;
			forwardBG.x = realBG.x;
			enemyDot.x -= tSpeed*Cheet;
			backwardBG_2.x -= tSpeed*Cheet/3;
			backwardBG_1.x -= tSpeed*Cheet/2;
			Enemies.x -= tSpeed*Cheet;
			shiftX += tSpeed*Cheet ;
				
			mainUI.backToMenuBTN.addEventListener(MouseEvent.MOUSE_UP, backToMenuUp);
			if(realBG.x > -1200){
				mainUI.forwardBTN.addEventListener(MouseEvent.MOUSE_DOWN, forwardDown);
			}else{
				tSpeed = 0;
				realBG.x = -1200;
				shiftX = 1200;
			}
			mainUI.forwardBTN.addEventListener(MouseEvent.MOUSE_UP, forwardUp);
			mainUI.forwardBTN.addEventListener(MouseEvent.RELEASE_OUTSIDE, forwardUp);
			if(realBG.x < 0){
				mainUI.backwardBTN.addEventListener(MouseEvent.MOUSE_DOWN, backwardDown);
			}else{
				tSpeed = 0;
				realBG.x = 0;
				shiftX = 0;
			}
			mainUI.backwardBTN.addEventListener(MouseEvent.MOUSE_UP, backwardUp);
			mainUI.backwardBTN.addEventListener(MouseEvent.RELEASE_OUTSIDE, backwardUp);
			tank.angleBNT.addEventListener(MouseEvent.MOUSE_DOWN, rotateAim);
				
			reloadingFunc();
			if(shell && shell.visible == true){
				shellFly();
				explodeFunc();
			}
		}
		
		public function win():void {
			for(var i:int = 1; i < totalNumberOfEnemies + 1; i++){ 
				if(this['enemy' + i].currentFrame == 2){
					allEnemiesDie += 1;
				}
			}
			
			if(allEnemiesDie == totalNumberOfEnemies && enemyDot.currentFrame == 2){
			if(UIactive == 4){
					allEnemiesDie = false;
					removeLevel();
					UIs.addChild(winUI);
					map.visible = true;
					UIactive = 5;
					wintimeout = 50;
					var RS = RewardSilver*1.5;
					if(armorVarCurrent >= armorVar-5){
						map['p'+currentLevel].gotoAndStop(3);
						Silver += RS;
						Silver += RewardBonus;
						Gold += RewardGold;
						winUI.medal.gotoAndStop(2);//gold
						winUI.r.SilverText.text = '+' + RS;
						winUI.r.GoldText.text = '+' + RewardGold;
						winUI.r.BonusText.text = RewardBonus;
						winUI.r.x = 20;
						winUI.o.visible = true;
						winUI.o.gotoAndStop(currentLevel);
						if(currentLevel == 1){
							winUI.r.x = 170;
							winUI.o.visible = false;
						}else if(currentLevel == 2){
							colorVar2 = 2;
						}else if(currentLevel == 3){
							turretVar2 = 2;
						}else if(currentLevel == 4){
							bodyVar2 = 2;
						}else if(currentLevel == 5){
							chassisVar2 = 2;
						}else if(currentLevel == 6){
							emblemVar2 = 2;
						}else if(currentLevel == 7){
							turretVar3 = 2;
						}else if(currentLevel == 8){
							bodyVar3 = 2;
						}else if(currentLevel == 9){
							chassisVar3 = 2;
						}else if(currentLevel == 10){
							modeVar1 = 2;
						}
						RewardBonus = 0;
					}else{
						map['p'+currentLevel].gotoAndStop(2);
						Silver += RewardSilver;
						Silver += RewardBonus;
						winUI.medal.gotoAndStop(1);//silver
						winUI.r.SilverText.text = '+' + RewardSilver;
						winUI.r.GoldText.text = '0';
						winUI.r.BonusText.text = RewardBonus;
						winUI.r.x = 170;
						winUI.o.visible = false;
						RewardBonus = 0;
					}
					armorVarCurrent = armorVar;
			}
			}else{
				allEnemiesDie = 0;
			}
		}
		
		
		public function lose():void {
			if(armorVarCurrent <= 0){
				var RS = RewardSilver/10;
				removeLevel();		
				UIs.addChild(loseUI);
				map.visible = true;
				armorVarCurrent = armorVar;
				UIactive = 5;
				wintimeout = 50;
				Silver += RS;
				Silver += RewardBonus;
				loseUI.SilverText.text = '+' + RewardSilver;
				loseUI.BonusText.text = RS;
				map['p'+currentLevel].gotoAndStop(7);
				RewardBonus = 0;
			}
		}
		
		public function backToMenuUp(e:MouseEvent):void{
			UIs.addChild(leaveUI);
			UIactive = 3;
		}
		
		public function leaveDone(e:MouseEvent):void{
			removeLevel();
			UIs.removeChild(leaveUI);
			UIs.addChild(equipmentUI);
		}
		
		public function leaveBack(e:MouseEvent):void{
			UIactive = 4;
			UIs.removeChild(leaveUI);
		}
		
		public function turretBack(e:MouseEvent):void{
			UIs.removeChild(turretUI);
		}
		
		public function moveTurret():void{
			if(turretSpeed > 0){
				if(equipmentUI.turret.x < turretRightLimit-6){
					moveAllTurrets();
				}else{
					turretSpeed = 0;
				}
			}
			if(turretSpeed < 0){
				if(equipmentUI.turret.x > turretLeftLimit){
					moveAllTurrets();
				}else{
					turretSpeed = 0;
				}
			}
			if(turretSpeed == 0){
				if(equipmentUI.body.sizer.width < equipmentUI.turret.sizer.width){
					moveToCenter();
				}
			}
		}
		
		public function moveToCenter():void{
			turretSpeed = 0;
			var center =  turretLeftLimit - (equipmentUI.turret.sizer.width - equipmentUI.body.sizer.width);
			if(equipmentUI.turret.x != center){
				equipmentUI.turret.x = center;
				equipmentUI.gun.x = equipmentUI.turret.x+134;
			}
		}
		
		public function moveAllTurrets():void{
			equipmentUI.turret.x += turretSpeed;
			equipmentUI.gun.x = equipmentUI.turret.x+134;
			//tank.turret.x += turretSpeed/2;
			//tank.aim.x=tank.turret.x+67;
			//paintingUI.turret.x += turretSpeed*1.45;
			//paintingUI.gun.x = paintingUI.turret.x+201;
		}
		
		public function changeLimits():void{
			turretRightLimit = equipmentUI.body.sizer.x - equipmentUI.turret.sizer.x + (equipmentUI.body.sizer.width - equipmentUI.turret.sizer.width) + equipmentUI.body.x;
			turretLeftLimit = equipmentUI.body.sizer.x - equipmentUI.turret.sizer.x + equipmentUI.body.x;
			if(equipmentUI.turret.x >= turretRightLimit){
				//tank.turret.x = turretRightLimit/2 - tank.body.x - equipmentUI.body.x - 6;
				//tank.aim.x=tank.turret.x+67;
				equipmentUI.turret.x = turretRightLimit-6;
				equipmentUI.gun.x = equipmentUI.turret.x+134;
				//paintingUI.turret.x = turretRightLimit*1.5 + 10;
				//paintingUI.gun.x = paintingUI.turret.x+201;
			}
			if(equipmentUI.turret.x <= turretLeftLimit){
				//tank.turret.x = turretLeftLimit/2 - tank.body.x - equipmentUI.body.x - 6;
				//tank.aim.x=tank.turret.x+67;
				equipmentUI.turret.x = turretLeftLimit;
				equipmentUI.gun.x = equipmentUI.turret.x+134;
				//paintingUI.turret.x = turretLeftLimit*1.5 + 10;
				//paintingUI.gun.x = paintingUI.turret.x+201;
			}
		}
		
		public function moveTurretRight(e:MouseEvent):void{
			turretSpeed = 2;
		}
		
		public function moveTurretLeft(e:MouseEvent):void{
			turretSpeed = -2;
		}
		
		public function equipmentDone(e:MouseEvent):void{
			UIs.addChild(paintingUI);
			paintingUI.turret.x = (equipmentUI.turret.x - equipmentUI.body.x - equipmentUI.body.sizer.x)*1.5 + paintingUI.body.x + paintingUI.body.sizer.x*1.5;
			paintingUI.gun.x = paintingUI.turret.x+201;
			UIactive = 2;
		}
		
		public function changeTurretClick(e:MouseEvent):void{
			UIs.addChild(turretUI);
		}
		
		public function changeBodyClick(e:MouseEvent):void{
			UIs.addChild(bodyUI);
		}
		
		public function changeChassisClick(e:MouseEvent):void{
			UIs.addChild(chassisUI);
		}
		
		public function createShell(e:MouseEvent):void{
			tank.aim.gun.fire.visible = true;
			tank.aim.gun.fire.gotoAndPlay(1);
			reloading = 50;
			shell = new Shell();
			Elements.addChild(shell);
			shell.x = tank.x+25;
			shell.y = tank.y-25;
			shell.visible = true;
			shellAngle = tank.rotation+tank.aim.rotation;	
			shell.rotation = shellAngle;
			shell.x += 50 * Math.cos(shellAngle / 180 * Math.PI);
			shell.y += 50 * Math.sin(shellAngle / 180 * Math.PI);
		}
		
		public function shellFly():void{
			shellAngle += 1;
			shell.rotation = shellAngle;
			shell.x += 20 * Math.cos(shellAngle / 180 * Math.PI);
			shell.y += 20 * Math.sin(shellAngle / 180 * Math.PI);
		}
		
		public function explodeFunc() {
			if (bmpd.getPixel(shell.x + shiftX, shell.y) == 0) { //shell - ground
				Explosions.addChild(explode);
				explode.gotoAndPlay(2);
				explode.x = shell.x;
				explode.y = shell.y;
				if(shell){
					Elements.removeChild(shell);
				}
				shell.visible = false;
			}else{ //shell - tank
				for(var i:int = 1; i < 4; i++){
					if (shell.x >= this['enemy' + i].x - 15 - shiftX && shell.y >= this['enemy' + i].y - 45 && shell.x <= this['enemy' + i].x + 30 - shiftX && shell.y <= this['enemy' + i].y + 10) {
						if(this['enemy' + i].currentFrame == 1 || this['enemy' + i].currentFrame == 3){
						Explosions.addChild(explode);
						explode.gotoAndPlay(2);
						explode.x = shell.x;
						explode.y = shell.y;
						if(shell){
							Elements.removeChild(shell);
						}
						shell.visible = false;
						this['enemy' + i].gotoAndStop(2);
						this['enemy' + i].gun.gotoAndStop(2);
						this['enemy' + i].flame.visible = true;
						this['enemy' + i].smoke.visible = true;
						}
					}
				}
				if (shell.x >= enemyDot.x - 50 && shell.y >= enemyDot.y - 90 && shell.x <= enemyDot.x + 50 && shell.y <= enemyDot.y + enemyDot.height/2) {
					if(enemyDot.currentFrame == 1){
						Explosions.addChild(explode);
						explode.gotoAndPlay(2);
						explode.x = shell.x;
						explode.y = shell.y;
						if(shell){
							Elements.removeChild(shell);
						}
						shell.visible = false;
						if(enemyDotCurrentArmor > 0){
							enemyDotCurrentArmor -= damageVar;
						}
					}
				}
			}
		}

		public function addSmoke():void{
			for(var i:int = 1; i < 4; i++){
				if(this['enemy' + i].smoke.visible == true){
					if(this['enemy' + i].smoke.alpha < 1){
						this['enemy' + i].smoke.alpha+=0.1;
					}else{
						this['enemy' + i].smoke.alpha=1;
					}
				}else{
					this['enemy' + i].smoke.alpha=0;
				}
			}
		}
		
		public function dotArmor():void{
			if(enemyDotCurrentArmor <= 0){
				enemyDot.armor.text = 0 + '/' + enemyDotArmor;
				enemyDot.gotoAndStop(2);
				enemyDot.gun.gotoAndStop(2);
			}else{
				enemyDot.armor.text = enemyDotCurrentArmor + '/' + enemyDotArmor;
			}
		}
		
		public function reloadingFunc():void{
			if(reloading == 0){
				mainUI.fireBTN.visible = true;
				mainUI.reloading.visible = false;
				mainUI.fireBTN.addEventListener(MouseEvent.MOUSE_DOWN, createShell);
			}else{
				mainUI.fireBTN.visible = false;
				mainUI.reloading.visible = true;
				mainUI.reloading.reloadingTime.text = Math.round(reloading/50) + 1 + " sec";
				reloading--;
				mainUI.fireBTN.removeEventListener(MouseEvent.MOUSE_DOWN, createShell);
			}
		}
		
		public function rotateAim(e:MouseEvent):void{
			var Dx = t2.x - mouseX;
			var Dy = t1.y - 33 - mouseY;
			var Angle = Math.atan2(Dy, Dx) / Math.PI * 180;	 
			tank.aim.rotation = Angle+180- tank.rotation;
		}
		
		public function rotateTank():void{
			var Dx = t2.x - t1.x;
			var Dy = t1.y - t2.y;
			var Angle = Math.round(Math.atan2(Dy, Dx) / Math.PI * 180);	 
			var Difference = Math.abs((tank.rotation + Angle)/2);
			smooth ++;
			if(smooth == 5){
				smooth = 0;
				if(tank.rotation > -Angle){
					tank.rotation -= Difference;
				}else if (tank.rotation < -Angle){
					tank.rotation += Difference;
				}
			}
		}
		
		public function forwardDown(e:MouseEvent):void{
			tSpeed = speedVar/100;
			var i = tank.chassis.currentFrame;
			tank.chassis['c' + i].ani.gotoAndPlay(2);
			tank.chassis['chassis' + i].gotoAndPlay(2);
			tank.ani1.gotoAndPlay(2);
		}
		public function forwardUp(e:MouseEvent):void{
			tSpeed = 0;
			var i = tank.chassis.currentFrame;
			tank.chassis['c' + i].ani.gotoAndPlay(1);
			tank.chassis['chassis' + i].gotoAndPlay(1);
			tank.ani1.gotoAndStop(1);
		}
		public function backwardDown(e:MouseEvent):void{
			tSpeed = -speedVar/100;
			var i = tank.chassis.currentFrame;
			tank.chassis['c' + i].ani.gotoAndPlay(2);
			tank.chassis['chassis' + i].gotoAndPlay(2);
			tank.ani2.gotoAndPlay(2);
		}
		public function backwardUp(e:MouseEvent):void{
			tSpeed = 0;
			var i = tank.chassis.currentFrame;
			tank.chassis['c' + i].ani.gotoAndPlay(1);
			tank.chassis['chassis' + i].gotoAndPlay(1);
			tank.ani2.gotoAndStop(1);
		}
			
		public function moveT(e) {
			if (bmpd.getPixel(e.x + shiftX, e.y + 25) != 0) {
				e.y+=1;
			}
			
			if (bmpd.getPixel(e.x + shiftX, e.y + 27) == 0) {
				e.y-=1;
			}
		}
	}
}

	

