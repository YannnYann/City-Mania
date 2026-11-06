package info.flowersoft.theotown.tools;

import info.flowersoft.theotown.draft.FenceDraft;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.DraftLocalizer;

/* JADX INFO: loaded from: classes4.dex */
public class FenceTool extends TwoModesTool {
    public final FenceDraft draft;
    public long price = 0;

    public FenceTool(FenceDraft fenceDraft) {
        this.draft = fenceDraft;
        this.hasToBeLine = true;
        this.additionalValidMapSize = 1;
        addUndoButton();
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getId() {
        return "Fence:" + this.draft.id;
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool, info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public void onClick(int i, int i2, float f, float f2, int i3, int i4) {
        super.onClick(Math.round(f), Math.round(f2), f, f2, i3, i4);
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool, info.flowersoft.theotown.city.components.Tool
    public boolean canBeginMove(float f, float f2, int i, int i2, float f3, float f4) {
        return super.canBeginMove(f, f2, Math.round(f3), Math.round(f4), f3, f4);
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool, info.flowersoft.theotown.city.components.Tool
    public void beginMove(int i, int i2, float f, float f2) {
        super.beginMove(Math.round(f), Math.round(f2), f, f2);
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool, info.flowersoft.theotown.city.components.Tool
    public boolean updateMove(float f, float f2, float f3, float f4, int i, int i2, float f5, float f6) {
        return super.updateMove(f, f2, f3, f4, Math.round(f5), Math.round(f6), f5, f6);
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool, info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public void mouseMove(int i, int i2, float f, float f2, float f3, float f4, boolean z) {
        super.mouseMove(Math.round(f), Math.round(f2), f, f2, f3, f4, z);
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool
    public void build(int i, int i2, int i3, int i4) {
        if (isValid(i, i2, i3, i4)) {
            captureState(i, i2, i3, i4);
            int iMin = Math.min(i, i3);
            int iMin2 = Math.min(i2, i4);
            int iMax = Math.max(i, i3);
            int iMax2 = Math.max(i2, i4);
            int i5 = iMax > iMin ? 1 : 0;
            int i6 = iMax2 <= iMin2 ? 0 : 1;
            int iMax3 = Math.max(iMax - iMin, iMax2 - iMin2);
            for (int i7 = 0; i7 < iMax3; i7++) {
                int i8 = (i7 * i5) + iMin;
                int i9 = (i7 * i6) + iMin2;
                int i10 = i5 > 0 ? 3 : 2;
                if (this.modifier.canBuildFence(this.draft, i8, i9, i10)) {
                    this.modifier.buildFence(this.draft, i8, i9, i10);
                }
            }
            getBudget().spend(this.price, i3, i4, "build " + this.draft.id);
            this.price = 0L;
            endCaptureState();
        }
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool
    public boolean isValid(int i, int i2) {
        return i >= 0 && i2 >= 0 && i <= this.city.getWidth() && i2 <= this.city.getHeight();
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool
    public boolean isValid(int i, int i2, int i3, int i4) {
        this.price = 0L;
        if (!super.isValid(i, i2, i3, i4)) {
            return false;
        }
        int iMin = Math.min(i, i3);
        int iMin2 = Math.min(i2, i4);
        int iMax = Math.max(i, i3);
        int iMax2 = Math.max(i2, i4);
        int i5 = iMax > iMin ? 1 : 0;
        int i6 = iMax2 <= iMin2 ? 0 : 1;
        int iMax3 = Math.max(iMax - iMin, iMax2 - iMin2);
        if (iMax3 <= 0) {
            return false;
        }
        for (int i7 = 0; i7 < iMax3; i7++) {
            int i8 = (i7 * i5) + iMin;
            int i9 = (i7 * i6) + iMin2;
            int i10 = i5 > 0 ? 3 : 2;
            if (!this.modifier.canBuildFence(this.draft, i8, i9, i10)) {
                return false;
            }
            FenceDraft fence = this.modifier.getFence(i8, i9, i10);
            FenceDraft fenceDraft = this.draft;
            if (fence != fenceDraft) {
                this.price += fenceDraft.price;
            }
        }
        boolean zCanSpend = getBudget().canSpend(this.price);
        this.notBuildableBecauseOfPrice = !zCanSpend;
        return zCanSpend;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0128  */
    @Override // info.flowersoft.theotown.tools.BuildTool
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void drawOnTop(int r15, int r16, info.flowersoft.theotown.city.Drawer r17) {
        /*
            Method dump skipped, instruction units count: 381
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.tools.FenceTool.drawOnTop(int, int, info.flowersoft.theotown.city.Drawer):void");
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getName() {
        return new DraftLocalizer(this.city).getTitle(this.draft);
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public int getIcon() {
        return Resources.ICON_FENCE;
    }
}
