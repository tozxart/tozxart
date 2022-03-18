new Vue({
  el: "#app",
  data() {
    return {
      audio: null,
      circleLeft: null,
      barWidth: null,
      duration: null,
      currentTime: null,
      isTimerPlaying: false,
      tracks: [
        {
        name: "	Anime War | راب مادارا - انمي ناروتو",
        artist: "Biolz",
        cover: "../old web site/mini-player-master/img/madara.jpg",
        source: "../old web site/mini-player-master/mp3/راب مادارا - انمي ناروتو.mp3",
        url: "https://youtu.be/6VGI1SGt3kA",
        favorited: false
      },
        {
          name: "Anime War | راب انمي ناروتو - ايتاشي",
          artist: "Laytum",
          cover: "../old web site/mini-player-master/img/itachi.jpg",
          source: "../old web site/mini-player-master/mp3/itachi_1.mp3",
          url: "https://youtu.be/fwToRCx6W6Q",
          favorited: false
        },
        {
          name: "'Permission to Dance' ARABIC VERSION",
          artist: "Biolz",
          cover: "../old web site/mini-player-master/img/ptd.jpg",
          source: "../old web site/mini-player-master/mp3/PTDBiolzArabicVersion_1.mp3",
          url: "https://youtu.be/-IpZgE-uu_E",
          favorited: true
        },
        {
          name: " أغنية انمي حزينةأمنيات بعيدة",
          artist: "Biolz",
          cover: "../old web site/mini-player-master/img/sad.jpg",
          source: "../old web site/mini-player-master/mp3/أغنية  أمنيات بعيدة.mp3",
          url: "https://youtu.be/66dUrX4Q-Po",
          favorited: true
        },
        {
          name: " اغنية أختي الحبيبة فايوليت افرغاردن",
          artist: "Biolz",
          cover: "../old web site/mini-player-master/img/vevergarden.jpg",
          source: "../old web site/mini-player-master/mp3/vevergarden_1.mp3",
          url: "https://youtu.be/4iUyoEL8GWo",
          favorited: true
        },
        {
          name: "  الخطايا السبع المميتة النسخة العربية",
          artist: "Biolz",
          cover: "../old web site/mini-player-master/img/nanatsu.jpg",
          source: "../old web site/mini-player-master/mp3/شوق.mp3",
          url: "https://youtu.be/0xYWM_rZIng",
          favorited: true
        },
        {
          name: " Butter Arabic Version cover النسخة العربية ",
          artist: "Biolz",
          cover: "../old web site/mini-player-master/img/biolzhub.jpg",
          source: "../old web site/mini-player-master/mp3/Butter_1.mp3",
          url: "https://youtu.be/JCDx4wTMFRo",
          favorited: false
        },
        {
          name: "Where Are We Now Arabic version",
          artist: "Biolz",
          cover: "../old web site/mini-player-master/img/biolzhub.jpg",
          source: "../old web site/mini-player-master/mp3/ARABICVERSIONMAMAMOOWhereAreWeNowArabicverc4UEbGxepa8_1.mp3",
          url: "https://youtu.be/c4UEbGxepa8",
          favorited: false
        },
        {
          name: "Palestine القدس لنا",
          artist: "Biolz",
          cover: "../old web site/mini-player-master/img/biolzhub.jpg",
          source: "../old web site/mini-player-master/mp3/PalestineByBiolz_1.mp3",
          url: "https://youtu.be/BDUViv2b-rc",
          favorited: false
        },
        {
          name: " Life Goes On Arabic version",
          artist: "Biolz",
          cover: "../old web site/mini-player-master/img/biolzhub.jpg",
          source: "../old web site/mini-player-master/mp3/LiveCover1n1zJ5zchNg140_1.mp3",
          url: "https://youtu.be/N57AIRr-bDo",
          favorited: true
        },
        {
          name: "Dynamite Arabic version",
          artist: "Biolz",
          cover: "../old web site/mini-player-master/img/biolzhub.jpg",
          source: "../old web site/mini-player-master/mp3/Dynamite_1.mp3",
          url: "https://youtu.be/704bUbdmr0Q",
          favorited: true
        },
        {
          name: "Faouzia & John Legend - Minefield cover",
          artist: "Biolz",
          cover: "../old web site/mini-player-master/img/biolzhub.jpg",
          source: "../old web site/mini-player-master/mp3/Mimti_1.mp3",
          url: "https://youtu.be/hanvMxU1e30",
          favorited: true
        },
        {
          name: "black swan arabic version",
          artist: "Biolz",
          cover: "../old web site/mini-player-master/img/biolzhub.jpg",
          source: "../old web site/mini-player-master/mp3/Balck Swan_1.mp3",
          url: "https://youtu.be/ucP6cVICHGM",
          favorited: true
        },
      ],
      currentTrack: null,
      currentTrackIndex: 0,
      transitionName: null
    };
  },
  methods: {
    play() {
      if (this.audio.paused) {
        this.audio.play();
        this.isTimerPlaying = true;
      } else {
        this.audio.pause();
        this.isTimerPlaying = false;
      }
    },
    generateTime() {
      let width = (100 / this.audio.duration) * this.audio.currentTime;
      this.barWidth = width + "%";
      this.circleLeft = width + "%";
      let durmin = Math.floor(this.audio.duration / 60);
      let dursec = Math.floor(this.audio.duration - durmin * 60);
      let curmin = Math.floor(this.audio.currentTime / 60);
      let cursec = Math.floor(this.audio.currentTime - curmin * 60);
      if (durmin < 10) {
        durmin = "0" + durmin;
      }
      if (dursec < 10) {
        dursec = "0" + dursec;
      }
      if (curmin < 10) {
        curmin = "0" + curmin;
      }
      if (cursec < 10) {
        cursec = "0" + cursec;
      }
      this.duration = durmin + ":" + dursec;
      this.currentTime = curmin + ":" + cursec;
    },
    updateBar(x) {
      let rogress = this.$refs.rogress;
      let maxduration = this.audio.duration;
      let position = x - rogress.offsetLeft;
      let percentage = (100 * position) / rogress.offsetWidth;
      if (percentage > 100) {
        percentage = 100;
      }
      if (percentage < 0) {
        percentage = 0;
      }
      this.barWidth = percentage + "%";
      this.circleLeft = percentage + "%";
      this.audio.currentTime = (maxduration * percentage) / 100;
      this.audio.play();
    },
    clickrogress(e) {
      this.isTimerPlaying = true;
      this.audio.pause();
      this.updateBar(e.pageX);
    },
    prevTrack() {
      this.transitionName = "scale-in";
      this.isShowCover = false;
      if (this.currentTrackIndex > 0) {
        this.currentTrackIndex--;
      } else {
        this.currentTrackIndex = this.tracks.length - 1;
      }
      this.currentTrack = this.tracks[this.currentTrackIndex];
      this.resetPlayer();
    },
    nextTrack() {
      this.transitionName = "scale-out";
      this.isShowCover = false;
      if (this.currentTrackIndex < this.tracks.length - 1) {
        this.currentTrackIndex++;
      } else {
        this.currentTrackIndex = 0;
      }
      this.currentTrack = this.tracks[this.currentTrackIndex];
      this.resetPlayer();
    },
    resetPlayer() {
      this.barWidth = 0;
      this.circleLeft = 0;
      this.audio.currentTime = 0;
      this.audio.src = this.currentTrack.source;
      setTimeout(() => {
        if(this.isTimerPlaying) {
          this.audio.play();
        } else {
          this.audio.pause();
        }
      }, 300);
    },
    favorite() {
      this.tracks[this.currentTrackIndex].favorited = !this.tracks[
        this.currentTrackIndex
      ].favorited;
    }
  },
  created() {
    let vm = this;
    this.currentTrack = this.tracks[0];
    this.audio = new Audio();
    this.audio.src = this.currentTrack.source;
    this.audio.ontimeupdate = function() {
      vm.generateTime();
    };
    this.audio.onloadedmetadata = function() {
      vm.generateTime();
    };
    this.audio.onended = function() {
      vm.nextTrack();
      this.isTimerPlaying = true;
    };

    // this is optional (for preload covers)
    for (let index = 0; index < this.tracks.length; index++) {
      const element = this.tracks[index];
      let link = document.createElement('link');
      link.rel = "prefetch";
      link.href = element.cover;
      link.as = "image"
      document.head.appendChild(link)
    }
  }
});
