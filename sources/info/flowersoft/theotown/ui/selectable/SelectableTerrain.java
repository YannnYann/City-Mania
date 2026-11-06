package info.flowersoft.theotown.ui.selectable;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.DefaultBudget;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.GroundDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.tools.TerrainTool;
import io.blueflower.stapel2d.drawing.Engine;

/* JADX INFO: loaded from: classes4.dex */
public class SelectableTerrain extends SelectableDraft {
    public boolean active;
    public final GroundDraft draft;
    public final int frame;
    public boolean setDraft;
    public final boolean setToWater;

    public SelectableTerrain(City city, boolean z) {
        super(city);
        this.setToWater = z;
        if (z) {
            this.draft = (GroundDraft) Drafts.ALL.get("$water00");
        } else {
            this.draft = (GroundDraft) Drafts.ALL.get("$ground00");
            this.setDraft = true;
        }
        GroundDraft groundDraft = this.draft;
        int[] iArr = groundDraft.previewFrames;
        if (iArr != null && iArr.length > 0) {
            this.frame = iArr[0];
        } else {
            this.frame = groundDraft.frames[0];
        }
        this.active = true;
    }

    public SelectableTerrain(City city, GroundDraft groundDraft) {
        super(city);
        this.setToWater = false;
        this.draft = groundDraft;
        int[] iArr = groundDraft.previewFrames;
        if (iArr != null && iArr.length > 0) {
            this.frame = iArr[0];
        } else {
            this.frame = groundDraft.frames[0];
        }
        this.setDraft = true;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public boolean isActive() {
        return this.active || super.isActive();
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public long getPrice() {
        return ((DefaultBudget) this.city.getComponent(0)).getPriceForTerrain(this.setToWater);
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public Draft getDraft() {
        return this.draft;
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void select() {
        super.select();
        if (this.setDraft) {
            this.city.applyComponent(new TerrainTool(this.draft));
        } else {
            this.city.applyComponent(new TerrainTool(this.setToWater));
        }
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public int getPreviewWidth() {
        return Math.round(Resources.IMAGE_WORLD.getWidth(this.frame));
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public int getPreviewHeight() {
        return Math.round(Resources.IMAGE_WORLD.getHeight(this.frame));
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void drawPreview(Engine engine, int i, int i2) {
        engine.drawImage(Resources.IMAGE_WORLD, i, i2, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, this.frame);
    }
}
