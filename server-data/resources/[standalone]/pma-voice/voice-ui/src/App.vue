<template>
	<div>
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
		<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
		<audio id="audio_on" src="mic_click_on.ogg"></audio>
		<audio id="audio_off" src="mic_click_off.ogg"></audio>

		<div class="flex">
			<div v-if="voice.callInfo !== 0" id="phone" class="item" :style="{ background: voice.colorVar}" :class="{ talking: voice.callInfo !== 0 && voice.talking }">
				<i class="material-icons icon" style="font-size:15px;">phone_iphone</i>
			</div>

			<div v-if="voice.radioEnabled && voice.radioChannel !== 0" :style="{ background: voice.colorVar}" id="radio" class="item" :class="{ talking: voice.usingRadio }">
				<i class="material-icons icon" style="font-size:15px;">headset_mic</i>
			</div>

			<div class="item" :style="{ background: voice.colorVar}" :class="{ talking: voice.talking }" id="mic">
				<svg xmlns="http://www.w3.org/2000/svg" class="icon" id="micro" fill="white" viewBox="0 0 24 24">
					<path d="M12,16c2.206,0,4-1.794,4-4V6c0-2.217-1.785-4.021-3.979-4.021c-0.069,0-0.14,0.009-0.209,0.025C9.693,2.104,8,3.857,8,6v6 C8,14.206,9.794,16,12,16z"></path>
					<path d="M11,19.931V22h2v-2.069c3.939-0.495,7-3.858,7-7.931h-2c0,3.309-2.691,6-6,6s-6-2.691-6-6H4 C4,16.072,7.061,19.436,11,19.931z"></path>
				</svg>
			</div>
			
		</div>

	</div>
</template>

<script>
import { reactive } from "vue";
export default {
	name: "App",
	setup() {
		const voice = reactive({
			voiceModes: [],
			voiceMode: 0,
			radioChannel: 0,
			radioEnabled: false,
			usingRadio: false,
			callInfo: 0,
			talking: false,
			vozui: false,
			colorVar: "",
		});

		// stops from toggling voice at the end of talking
		let usingUpdated = false
		window.addEventListener("message", function(event) {
			const data = event.data;

			if(data.vozui == undefined) {
				voice.vozui = true
			} else {
				voice.vozui = data.vozui
			}
			

			if(data.colorVar != undefined) {
				voice.colorVar = data.colorVar
			}

			if (data.voiceModes !== undefined) {
				voice.voiceModes = JSON.parse(data.voiceModes);
			}

			if (data.voiceMode !== undefined) {
				voice.voiceMode = data.voiceMode;
			}

			if (data.radioChannel !== undefined) {
				voice.radioChannel = data.radioChannel;
			}

			if (data.radioEnabled !== undefined) {
				voice.radioEnabled = data.radioEnabled;
			}

			if (data.callInfo !== undefined) {
				voice.callInfo = data.callInfo;
			}

			if (data.usingRadio !== voice.usingRadio) {
				usingUpdated = true
				voice.usingRadio = data.usingRadio
				setTimeout(function(){
					usingUpdated = false
				}, 100)
			}
			
			if ((data.talking !== undefined) && !voice.usingRadio && !usingUpdated){
				voice.talking = data.talking;
			}

			if (!data.talking) {
				voice.talking_mode = voice.voiceModes[voice.voiceMode][1];
			}
			
			if (data.sound && voice.radioEnabled) {
				let click = document.getElementById(data.sound);
				click.load();
				click.volume = data.volume;
				click.play().catch((e) => {});
			}
			if(voice.voiceModes[voice.voiceMode][1]=='SUSURRAR') {
                document.getElementById('micro').setAttribute('fill', 'yellow');
            } else if(voice.voiceModes[voice.voiceMode][1]=='GRITAR') {
                document.getElementById('micro').setAttribute('fill', 'RED');
            } else if(voice.voiceModes[voice.voiceMode][1]=='NORMAL') {
                document.getElementById('micro').setAttribute('fill', 'white');
            }
		});


		return { voice };
	},
};
</script>

<style>


@keyframes hablando {
	0% { box-shadow: 0 0 0 0px rgba(255, 255, 255, 0.75); border: rgb(255, 255, 255) 1.2px solid; transform: scale(1);}
	100% { box-shadow: 0 0 0 15px rgba(156, 156, 156, 0.459); border: rgb(255, 255, 255) 1.2px solid; transform: scale(1.05); }
}

html {
	height: 100%;
	overflow: hidden;
}

.flex {
    display: flex;
    position: fixed;
    right: 15px;
    bottom: 20px
}

.item {
	position: relative;
    transition-duration: 0.5s;
    background: rgb(91, 7, 112);;
    padding: 15px;
    border-radius: 5px;
	margin-left: 10px;
    background-color: rgb(91, 7, 112);;
    border: 2px solid rgba(255, 255, 255, 0.432);
    box-shadow: 0px 4px 0px 2px rgb(91, 7, 112);;
}
.icon {
	margin: 0; 
	z-index:99999;
	position: absolute; 
	line-height: 0.3;
	transform: translate(-50%,-50%);
	font-size: 17px;
	color: #fff;
	text-shadow: -1px -1px 0 rgb(0, 0, 0), 1px -1px 0 rgb(0, 0, 0), -1px 1px 0 rgb(0, 0, 0), 1px 1px 0 rgb(0, 0, 0);
}

.talking {
	animation: hablando 0.8s infinite;
}
p {
	margin: 0;
}
</style>
