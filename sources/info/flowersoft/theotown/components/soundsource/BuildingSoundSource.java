package info.flowersoft.theotown.components.soundsource;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.objects.Building;

/* JADX INFO: loaded from: classes4.dex */
public class BuildingSoundSource extends AbstractTileSoundSource {
    public Building building;

    @Override // info.flowersoft.theotown.components.DefaultSoundManager.SoundSource
    public boolean isValid() {
        return true;
    }

    public BuildingSoundSource(City city, Building building) {
        super(city);
        this.building = building;
    }

    @Override // info.flowersoft.theotown.components.soundsource.AbstractTileSoundSource
    public float getTileX() {
        return this.building.getX();
    }

    @Override // info.flowersoft.theotown.components.soundsource.AbstractTileSoundSource
    public float getTileY() {
        return this.building.getY();
    }

    @Override // info.flowersoft.theotown.components.soundsource.AbstractTileSoundSource
    public int getTileWidth() {
        return this.building.getWidth();
    }

    @Override // info.flowersoft.theotown.components.soundsource.AbstractTileSoundSource
    public int getTileHeight() {
        return this.building.getHeight();
    }
}
