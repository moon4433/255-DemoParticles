package {

	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.MouseEvent;


	public class Game extends MovieClip {

		private var particles: Array = new Array();

		public function Game() {
			addEventListener(Event.ENTER_FRAME, gameLoop);
			stage.addEventListener(MouseEvent.MOUSE_DOWN, handleClick);
		}

		private function gameLoop(e: Event): void {
			Time.update();
			spawnSmoke();
			updateParticles();
		}

		private function updateParticles(): void {

			for (var i: int = particles.length - 1; i >= 0; i--) {

				particles[i].update();
				if (particles[i].isDead) {
					// remove the particle
					removeChild(particles[i]);
					particles.splice(i, 1);


				}
			} // end for loop	
		}
		private function spawnSmoke():void {
			var p: Particle = new ParticleSmoke(mouseX, mouseY);
				addChild(p);
				particles.push(p);
			
		}

		private function handleClick(e: MouseEvent): void {
			spawnExplosion();
		}

		private function spawnExplosion(): void {

			for (var i: int = 0; i < 20; i++) {
				var p: Particle = new ParticleBoom(mouseX, mouseY);
				addChild(p);
				particles.push(p);
			}
		}

	} // end class

} // end package