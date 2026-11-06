package info.flowersoft.theotown.ui.selectable;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.DefaultBudget;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.TreeDraft;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.tools.TreeTool;
import io.blueflower.stapel2d.drawing.Engine;

/* JADX INFO: loaded from: classes4.dex */
public class SelectableTreeDraft extends SelectableDraft {
    public TreeDraft draft;
    public int frame;

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public int getPreviewWidth() {
        return 32;
    }

    public SelectableTreeDraft(City city, TreeDraft treeDraft) {
        super(city);
        this.draft = treeDraft;
        this.frame = 0;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public long getPrice() {
        return ((DefaultBudget) this.city.getComponent(0)).getPrice(this.draft);
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public Draft getDraft() {
        return this.draft;
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void select() {
        super.select();
        this.city.applyComponent(new TreeTool(this.draft, this.frame - 1));
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public int getPreviewHeight() {
        TreeDraft treeDraft = this.draft;
        int[] iArr = treeDraft.frames;
        int length = iArr.length;
        int i = treeDraft.framesPerTree;
        int i2 = length / i;
        int i3 = this.frame;
        int i4 = 0;
        int iMax = 32;
        if (i3 == 0 && iArr.length / i > 1) {
            int[] iArr2 = treeDraft.previewFrames;
            if (iArr2 != null && (iArr2.length == 1 || iArr2.length >= i2 + 1)) {
                return Math.max(32, (int) Resources.IMAGE_WORLD.getHeight(iArr2[0]));
            }
            while (true) {
                TreeDraft treeDraft2 = this.draft;
                if (i4 >= Math.min(treeDraft2.frames.length / treeDraft2.framesPerTree, 3)) {
                    return iMax;
                }
                TreeDraft treeDraft3 = this.draft;
                iMax = Math.max(iMax, (int) Resources.IMAGE_WORLD.getHeight(treeDraft3.frames[treeDraft3.framesPerTree * i4]));
                i4++;
            }
        } else {
            int i5 = iArr[i * Math.max(i3 - 1, 0)];
            int[] iArr3 = this.draft.previewFrames;
            if (iArr3 != null && iArr3.length >= i2) {
                int i6 = this.frame;
                if (iArr3.length <= i2 && i6 != 0) {
                    i4 = 1;
                }
                i5 = iArr3[i6 - i4];
            }
            return Math.max(32, (int) Resources.IMAGE_WORLD.getHeight(i5));
        }
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void drawPreview(Engine engine, int i, int i2) {
        TreeDraft treeDraft = this.draft;
        int length = treeDraft.frames.length / treeDraft.framesPerTree;
        float scaleX = engine.getScaleX();
        float scaleY = engine.getScaleY();
        int previewHeight = getPreviewHeight();
        float f = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        if (previewHeight > 32) {
            f = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT + ((previewHeight - 32) * scaleY);
        }
        int i3 = this.frame;
        if (i3 == 0) {
            TreeDraft treeDraft2 = this.draft;
            if (treeDraft2.frames.length / treeDraft2.framesPerTree > 1) {
                int[] iArr = treeDraft2.previewFrames;
                if (iArr == null || (iArr.length != 1 && iArr.length < length + 1)) {
                    while (true) {
                        TreeDraft treeDraft3 = this.draft;
                        if (i >= Math.min(treeDraft3.frames.length / treeDraft3.framesPerTree, 3)) {
                            break;
                        }
                        TreeDraft treeDraft4 = this.draft;
                        engine.drawImage(Resources.IMAGE_WORLD, i + (((i * 9) - 11) * scaleX), i2 + (scaleY * 24.0f) + f, treeDraft4.frames[treeDraft4.framesPerTree * i]);
                        i++;
                    }
                } else {
                    engine.drawImage(Resources.IMAGE_WORLD, i, i2 + (24.0f * scaleY) + f, iArr[0]);
                }
                engine.setScale(0.5f, 0.5f);
                engine.drawImage(Resources.IMAGE_WORLD, i - 5, i2, Resources.ICON_RANDOM);
                engine.setScale(scaleX, scaleY);
                return;
            }
        }
        TreeDraft treeDraft5 = this.draft;
        int i4 = treeDraft5.frames[treeDraft5.framesPerTree * Math.max(i3 - 1, 0)];
        int[] iArr2 = this.draft.previewFrames;
        if (iArr2 != null && iArr2.length >= length) {
            i4 = iArr2[this.frame - (iArr2.length <= length ? 1 : 0)];
        }
        engine.drawImage(Resources.IMAGE_WORLD, i, i2 + (scaleY * 24.0f) + f, i4);
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public int countFrames() {
        TreeDraft treeDraft = this.draft;
        int[] iArr = treeDraft.frames;
        int length = iArr.length;
        int i = treeDraft.framesPerTree;
        return (length / i) + (iArr.length / i <= 1 ? 0 : 1);
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public int getFrame() {
        return this.frame;
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void setFrame(int i) {
        this.frame = i;
    }
}
