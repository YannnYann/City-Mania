package info.flowersoft.theotown.draft;

import io.blueflower.stapel2d.drawing.Color;

/* JADX INFO: loaded from: classes4.dex */
public class ZoneDraft extends ViewportDraft {
    public Draft[] addPriceDrafts;
    public ZoneDraft base;
    public int[] borderFrames;
    public Color mapColor;
    public int oldId;
    public boolean persistent;
    public boolean placeable;
    public int price;
    public float priceFactor;
    public int radius;
    public boolean rci;
    public boolean rebuild;
    public int[] roadBorderFrames;
    public boolean superiorToAll;
    public boolean superiorToBase;
    public int tempId;
    public boolean needsRoad = true;
    public boolean autoRoad = true;

    public boolean isBaseOf(ZoneDraft zoneDraft) {
        ZoneDraft zoneDraft2;
        if (zoneDraft != this) {
            return (zoneDraft == null || zoneDraft == (zoneDraft2 = zoneDraft.base) || !isBaseOf(zoneDraft2)) ? false : true;
        }
        return true;
    }

    public boolean isSuperiorTo(ZoneDraft zoneDraft) {
        if (this.superiorToAll || this == zoneDraft || zoneDraft == null) {
            return true;
        }
        return this.superiorToBase && this.base.isSuperiorTo(zoneDraft);
    }

    public boolean isSimilar(ZoneDraft zoneDraft) {
        if (zoneDraft != null) {
            return this == zoneDraft || this.base == zoneDraft || zoneDraft.base == this;
        }
        return false;
    }

    @Override // info.flowersoft.theotown.draft.Draft
    public int hashCode() {
        return this.tempId;
    }
}
