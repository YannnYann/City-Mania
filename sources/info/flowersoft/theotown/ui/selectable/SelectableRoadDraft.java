package info.flowersoft.theotown.ui.selectable;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.DefaultBudget;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.draft.AnimationSpot;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.RoadDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.tools.ToolResolver;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Image;

/* JADX INFO: loaded from: classes4.dex */
public class SelectableRoadDraft extends SelectableDraft {
    public final RoadDraft draft;

    public SelectableRoadDraft(City city, RoadDraft roadDraft) {
        super(city);
        this.draft = roadDraft;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public long getPrice() {
        return ((DefaultBudget) this.city.getComponent(0)).getPrice(this.draft, 1, 0, 0, 0);
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public long getMonthlyPrice() {
        return this.draft.monthlyPrice;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public Draft getDraft() {
        return this.draft;
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public int getPreviewWidth() {
        RoadDraft roadDraft = this.draft;
        return roadDraft.previewFrames != null ? super.getPreviewWidth() : ((roadDraft.width + 1) * 32) / 2;
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public int getPreviewHeight() {
        RoadDraft roadDraft = this.draft;
        if (roadDraft.previewFrames != null) {
            return super.getPreviewHeight();
        }
        return (((this.draft.width + 3) * 16) / 2) + Math.max(Math.min(Math.max(0, roadDraft.minLevel), 1) * 12, 0);
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void drawPreview(Engine engine, int i, int i2) {
        int i3;
        int[] iArr;
        int[] iArr2;
        int i4 = i;
        if (this.draft.previewFrames != null) {
            super.drawPreview(engine, i, i2);
            return;
        }
        Image image = Resources.IMAGE_WORLD;
        float scaleX = engine.getScaleX();
        int i5 = 0;
        int i6 = 1;
        boolean z = hasRequirement() && !isUnlocked();
        if (z) {
            engine.setTransparency(50);
            engine.setColor(Colors.DARK_GRAY);
        }
        Draft draft = !this.draft.decorationBuildingIds.isEmpty() ? Drafts.ALL.get(this.draft.decorationBuildingIds.get(0)) : null;
        RoadDraft roadDraft = this.draft;
        int i7 = roadDraft.width;
        char c = 2;
        boolean z2 = i7 > 1 && i7 % 2 == 1 && draft != null && (draft instanceof RoadDraft) && roadDraft.devoted;
        if (Math.min(Math.max(0, roadDraft.minLevel), 1) > 0) {
            RoadDraft roadDraft2 = this.draft;
            if (roadDraft2.width == 1 && (iArr2 = roadDraft2.bridgeFrames) != null && iArr2.length > 8) {
                if (iArr2.length >= 20) {
                    engine.drawImage(image, i4, i2 + (35.0f * scaleX), iArr2[14]);
                } else {
                    engine.drawImage(image, i4, i2 + (43.0f * scaleX), iArr2[8]);
                }
            }
        }
        int i8 = this.draft.width - 1;
        while (i8 >= 0) {
            if (z2) {
                i3 = i8 < this.draft.width - i6 ? 7 : 5;
                if (i8 > 0) {
                    i3 |= 8;
                }
            } else {
                i3 = 5;
            }
            RoadDraft roadDraft3 = this.draft;
            int i9 = i5;
            int[] iArr3 = roadDraft3.frames;
            int i10 = iArr3[i3];
            char c2 = c;
            if (roadDraft3.oneWay && i8 >= roadDraft3.width / 2) {
                i10 = iArr3[i3 + 32];
            }
            int i11 = roadDraft3.width;
            if (i11 > i6 && i11 % 2 == i6 && i8 == i11 / 2 && draft != null) {
                if (draft instanceof BuildingDraft) {
                    i10 = ((BuildingDraft) draft).frames[i9];
                } else if (draft instanceof RoadDraft) {
                    i10 = ((RoadDraft) draft).frames[i3];
                }
            }
            int i12 = i10;
            float f = i4;
            float f2 = (i8 * 32) / 2;
            float f3 = i2;
            int i13 = 2 - i8;
            engine.drawImage(image, ((image.getHandleX(i12) + f2) * scaleX) + f, ((((i13 + this.draft.width) * 16) / 2) * scaleX) + f3, i12);
            RoadDraft roadDraft4 = this.draft;
            if (roadDraft4.oneWay && (iArr = roadDraft4.oneWayFrames) != null) {
                i12 = iArr[c2];
                engine.drawImage(image, ((image.getHandleX(i12) + f2) * scaleX) + f, ((((i13 + this.draft.width) * 16) / 2) * scaleX) + f3, i12);
            }
            RoadDraft roadDraft5 = this.draft;
            if (roadDraft5.animationFGSpots != null && roadDraft5.width == 1) {
                int[][] iArr4 = roadDraft5.animationFGSpotIndices;
                if (iArr4 == null) {
                    for (int i14 = i9; i14 < this.draft.animationFGSpots.size(); i14++) {
                        AnimationSpot animationSpot = this.draft.animationFGSpots.get(i14);
                        if (animationSpot.isTargeted(5)) {
                            int[] iArr5 = animationSpot.draft.frames;
                            if (iArr5.length > 0) {
                                engine.drawImage(image, f, ((((i13 + this.draft.width) * 16) / 2) * scaleX) + f3, iArr5[5 % iArr5.length]);
                            }
                        }
                    }
                } else {
                    int[] iArr6 = iArr4[i12 % iArr4.length];
                    for (int i15 = i9; i15 < iArr6.length; i15++) {
                        AnimationSpot animationSpot2 = this.draft.animationFGSpots.get(iArr6[i15]);
                        AnimationDraft animationDraft = animationSpot2.draft;
                        if (animationSpot2.isTargeted(5)) {
                            int[] iArr7 = animationDraft.frames;
                            if (iArr7.length > 0) {
                                engine.drawImage(image, f, ((((i13 + this.draft.width) * 16) / 2) * scaleX) + f3, iArr7[5 % iArr7.length]);
                            }
                        }
                    }
                }
            }
            i8--;
            i4 = i;
            i5 = i9;
            c = c2;
            i6 = 1;
        }
        if (z) {
            drawLock(engine, i, i2, getPreviewWidth(), getPreviewHeight());
        }
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void select() {
        super.select();
        this.city.applyComponent(new ToolResolver(this.city).resolve(this.draft));
    }
}
