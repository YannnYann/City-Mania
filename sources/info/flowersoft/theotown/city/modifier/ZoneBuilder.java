package info.flowersoft.theotown.city.modifier;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.components.DefaultBudget;
import info.flowersoft.theotown.draft.ZoneDraft;
import info.flowersoft.theotown.resources.Settings;

/* JADX INFO: loaded from: classes4.dex */
public class ZoneBuilder {
    public final City city;
    public final CityModifier m;
    public long price;
    public int radius;
    public int sx;
    public int sy;
    public final Tiles tiles;
    public int tx;
    public int ty;
    public ZoneDraft zone;

    public ZoneBuilder(City city) {
        this.city = city;
        this.tiles = city.getTiles();
        this.m = new CityModifier(city, true);
    }

    public void setZone(ZoneDraft zoneDraft) {
        this.zone = zoneDraft;
        this.radius = Settings.useZoneRadius ? zoneDraft.radius : 0;
    }

    public void setArea(int i, int i2, int i3, int i4) {
        this.sx = Math.min(i, i3);
        this.sy = Math.min(i2, i4);
        this.tx = Math.max(i, i3);
        this.ty = Math.max(i2, i4);
    }

    public long getPrice() {
        return this.price;
    }

    public boolean isBuildable() {
        int i = this.sx - this.radius;
        int i2 = 0;
        while (true) {
            int i3 = this.tx;
            int i4 = this.radius;
            if (i <= i3 + i4) {
                int i5 = this.sy - i4;
                while (true) {
                    int i6 = this.ty;
                    if (i5 <= this.radius + i6) {
                        boolean z = i >= this.sx && i <= this.tx && i5 >= this.sy && i5 <= i6;
                        if (this.city.isValid(i, i5)) {
                            ZoneDraft zone = this.tiles.getZone(i, i5);
                            boolean zIsSuperiorTo = this.zone.isSuperiorTo(zone);
                            if (!zIsSuperiorTo && z) {
                                return false;
                            }
                            if (zone == null || (this.zone.isSuperiorTo(zone) && this.zone != zone && zIsSuperiorTo)) {
                                i2++;
                            }
                        } else if (z) {
                            return false;
                        }
                        i5++;
                    }
                }
            } else {
                this.price = ((DefaultBudget) this.city.getComponent(0)).getPrice(this.zone, i2);
                return true;
            }
            i++;
        }
    }

    public void build() {
        int i = this.sx - this.radius;
        while (true) {
            int i2 = this.tx;
            int i3 = this.radius;
            if (i > i2 + i3) {
                return;
            }
            for (int i4 = this.sy - i3; i4 <= this.ty + this.radius; i4++) {
                if (this.m.isBuildable(this.zone, i, i4) && this.zone.isSuperiorTo(this.tiles.getZone(i, i4))) {
                    this.m.markZone(this.zone, i, i4);
                }
            }
            i++;
        }
    }
}
