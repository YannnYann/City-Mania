package info.flowersoft.theotown.tools;

import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.components.Disaster;
import info.flowersoft.theotown.components.DefaultCatastrophe;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.resources.Resources;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DisasterTool extends BuildTool {
    public abstract Class<? extends Disaster> getDisasterType();

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public int getIcon() {
        return Resources.ICON_CATASTROPHES;
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public void onClick(int i, int i2, float f, float f2, int i3, int i4) {
        if (((DefaultCatastrophe) this.city.getComponent(6)).issueDisaster(getDisasterType(), i, i2) && this.city.canAchieve()) {
            TheoTown.gamesService.unlockAchievement("issue_disaster");
        }
    }

    @Override // info.flowersoft.theotown.tools.BuildTool
    public void drawOnTop(int i, int i2, Drawer drawer) {
        if (this.drawnTargetHover && this.drawnTargetX == i && this.drawnTargetY == i2) {
            drawTileOverlayFrame(drawer, i, i2, this.city.getTiles().getGround(i, i2), Resources.FRAME_TOOLMARK_MARKER);
        }
    }
}
