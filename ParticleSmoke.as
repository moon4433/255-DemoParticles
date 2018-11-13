package  {

	public class ParticleSmoke extends Particle {
		
		
		public function ParticleSmoke(spawnX:Number, spawnY:Number) {
			
			super(spawnX, spawnY);
			
			acceleration.y = Math.random() * 50 - 80;
			acceleration.x = Math.random() * 30 - 10;
			
			lifeSpan = Math.random() * 2 + .5;
			
			scaleY = scaleX = .1;
			
			scalarVelocity = Math.random() * .5 + .5;
			alphaVelocity = -1;
			alpha = .9;
		}
		
		
		override public function shouldDie():Boolean {
			if(alpha <= 0) return true;
			
			return false;
		}
	}
	
}
