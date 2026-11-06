package info.flowersoft.theotown.components.soundsource;

import info.flowersoft.theotown.city.City;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractTileSoundSource extends AreaSoundSource {
    public City city;

    public int getTileHeight() {
        return 1;
    }

    public int getTileWidth() {
        return 1;
    }

    public abstract float getTileX();

    public abstract float getTileY();

    public AbstractTileSoundSource(City city) {
        this.city = city;
    }

    @Override // info.flowersoft.theotown.components.soundsource.AreaSoundSource
    public int getX() {
        float tileX = getTileX();
        float tileY = getTileY();
        float tileWidth = getTileWidth();
        float f = tileWidth / 2.0f;
        float tileHeight = getTileHeight() / 2.0f;
        return Math.round(this.city.getIsoConverter().isoToAbsX(this.city.originalToRotatedX(tileX + f, tileY + f) - f, this.city.originalToRotatedY(tileX + tileHeight, tileY + tileHeight) - tileHeight));
    }

    @Override // info.flowersoft.theotown.components.soundsource.AreaSoundSource
    public int getY() {
        float tileX = getTileX();
        float tileY = getTileY();
        float tileWidth = getTileWidth();
        float f = tileWidth / 2.0f;
        float tileHeight = getTileHeight() / 2.0f;
        return Math.round(this.city.getIsoConverter().isoToAbsY(this.city.originalToRotatedX(tileX + f, tileY + f) - f, this.city.originalToRotatedY(tileX + tileHeight, tileY + tileHeight) - tileHeight));
    }

    @Override // info.flowersoft.theotown.components.soundsource.AreaSoundSource
    public int getWidth() {
        return Math.round(getTileWidth() * 32 * this.city.getIsoConverter().getAbsScaleX());
    }

    @Override // info.flowersoft.theotown.components.soundsource.AreaSoundSource
    public int getHeight() {
        return Math.round(getTileHeight() * 16 * this.city.getIsoConverter().getAbsScaleY());
    }
}
