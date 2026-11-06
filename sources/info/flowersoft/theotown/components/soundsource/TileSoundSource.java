package info.flowersoft.theotown.components.soundsource;

import info.flowersoft.theotown.city.City;

/* JADX INFO: loaded from: classes4.dex */
public class TileSoundSource extends AbstractTileSoundSource {
    public int h;
    public boolean valid;
    public float volume;
    public int w;
    public int x;
    public int y;

    public TileSoundSource(City city, int i, int i2) {
        this(city, i, i2, 1, 1);
    }

    public TileSoundSource(City city, int i, int i2, int i3, int i4) {
        super(city);
        this.volume = 1.0f;
        this.valid = true;
        this.x = i;
        this.y = i2;
        this.w = i3;
        this.h = i4;
    }

    @Override // info.flowersoft.theotown.components.soundsource.AbstractTileSoundSource
    public float getTileX() {
        return this.x;
    }

    @Override // info.flowersoft.theotown.components.soundsource.AbstractTileSoundSource
    public float getTileY() {
        return this.y;
    }

    @Override // info.flowersoft.theotown.components.soundsource.AbstractTileSoundSource
    public int getTileWidth() {
        return this.w;
    }

    @Override // info.flowersoft.theotown.components.soundsource.AbstractTileSoundSource
    public int getTileHeight() {
        return this.h;
    }

    @Override // info.flowersoft.theotown.components.DefaultSoundManager.SoundSource
    public boolean isValid() {
        return this.valid;
    }

    @Override // info.flowersoft.theotown.components.soundsource.AreaSoundSource
    public float getVolume() {
        return this.volume;
    }

    public void setX(int i) {
        this.x = i;
    }

    public void setY(int i) {
        this.y = i;
    }

    public void setW(int i) {
        this.w = i;
    }

    public void setH(int i) {
        this.h = i;
    }

    public void setVolume(float f) {
        this.volume = f;
    }

    public void setValid(boolean z) {
        this.valid = z;
    }
}
