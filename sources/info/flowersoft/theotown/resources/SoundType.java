package info.flowersoft.theotown.resources;

/* JADX INFO: loaded from: classes4.dex */
public enum SoundType {
    UI { // from class: info.flowersoft.theotown.resources.SoundType.1
        @Override // info.flowersoft.theotown.resources.SoundType
        public float getVolume() {
            return (Settings.soundUILevel * Settings.generalSoundLevel) / 10000.0f;
        }
    },
    GAME { // from class: info.flowersoft.theotown.resources.SoundType.2
        @Override // info.flowersoft.theotown.resources.SoundType
        public float getVolume() {
            return (Settings.soundGameLevel * Settings.generalSoundLevel) / 10000.0f;
        }
    },
    WEATHER { // from class: info.flowersoft.theotown.resources.SoundType.3
        @Override // info.flowersoft.theotown.resources.SoundType
        public float getVolume() {
            return (Settings.soundWeatherLevel * Settings.generalSoundLevel) / 10000.0f;
        }
    },
    AMBIENT { // from class: info.flowersoft.theotown.resources.SoundType.4
        @Override // info.flowersoft.theotown.resources.SoundType
        public float getVolume() {
            return (Settings.soundAmbientLevel * Settings.generalSoundLevel) / 10000.0f;
        }
    },
    PLUGIN { // from class: info.flowersoft.theotown.resources.SoundType.5
        @Override // info.flowersoft.theotown.resources.SoundType
        public float getVolume() {
            return (Settings.soundPluginLevel * Settings.generalSoundLevel) / 10000.0f;
        }
    };

    public abstract float getVolume();
}
