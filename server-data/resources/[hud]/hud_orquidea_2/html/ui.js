var visable = true;
$(function () {
	window.addEventListener('message', function (event) {
		var jobs = event.data.jobs;
		loadJobs = function(){
			if (jobs.police > 5) {
				$('#policecounter').html('+5')
			}else{
				$('#policecounter').html(jobs.police)
			}
			if (jobs.ems > 5) {
				$('#ambulancecounter').html('+5')
			}else{
				$('#ambulancecounter').html(jobs.ems)
			}
			if (jobs.mechanic > 5) {
				$('#mechaniccounter').html('+5')
			}else{
				$('#mechaniccounter').html(jobs.mechanic)
			}
			//taxicounter
			if (jobs.taxi > 5) {
				$('#taxicounter').html('+5')
			}else{
				$('#taxicounter').html(jobs.taxi)
			}
			if (jobs.abogado > 5) {
				$('#abogadocounter').html('+5')
			}else{
				$('#abogadocounter').html(jobs.abogado)
			}
			if (jobs.weazelnews > 5) {
				$('#weazelnewscounter').html('+5')
			}else{
				$('#weazelnewscounter').html(jobs.weazelnews)
			}
			if (jobs.fbi > 5) {
				$('#fbicounter').html('+5')
			}else{
				$('#fbicounter').html(jobs.fbi)
			}
			$('#playerscounter').html(jobs.player_count)
		}

		switch (event.data.action) {
			case 'toggle':
				if (visable) {
					$('#JobsCounter').fadeOut();
				} else {
					$('#JobsCounter').fadeIn();
				}
				visable = !visable;
			break;

			case 'close':
				$('#contador').fadeOut();
				visable = false;
			break;

			case 'updatePlayerJobs':
				loadJobs();	
			break;
		}
		$("#id").html(event.data.id)
	}, false);
});