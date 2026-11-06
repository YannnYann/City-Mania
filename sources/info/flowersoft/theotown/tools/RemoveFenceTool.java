package info.flowersoft.theotown.tools;

import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.resources.Resources;

/* JADX INFO: loaded from: classes4.dex */
public class RemoveFenceTool extends RemoveTool {
    public RemoveFenceTool() {
        super(false, false);
        setMarker(null);
    }

    @Override // info.flowersoft.theotown.tools.RemoveTool, info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getId() {
        return "RemoveFence";
    }

    @Override // info.flowersoft.theotown.tools.RemoveTool, info.flowersoft.theotown.tools.TwoModesTool
    public void build(int i, int i2, int i3, int i4) {
        captureState(i, i2, i3, i4);
        int iMin = Math.min(i, i3);
        int iMin2 = Math.min(i2, i4);
        this.modifier.removeFenceWithin(iMin, iMin2, (Math.max(i, i3) - iMin) + 1, (Math.max(i2, i4) - iMin2) + 1);
        endCaptureState();
    }

    @Override // info.flowersoft.theotown.tools.RemoveTool, info.flowersoft.theotown.tools.BuildTool
    public void drawOnTop(int i, int i2, Drawer drawer) {
        int i3;
        int i4;
        Drawer drawer2;
        super.drawOnTop(i, i2, drawer);
        if (this.tiles.hasFence(i, i2)) {
            int i5 = 0;
            while (i5 < 4) {
                if (this.tiles.getFence(i, i2, i5) != null) {
                    i3 = i;
                    i4 = i2;
                    drawer2 = drawer;
                    drawTileOverlayFrame(drawer2, i3, i4, this.city.getTiles().getGround(i, i2), Resources.FRAME_SIDEMARK + (((i5 + 4) - drawer.rotation) % 4));
                } else {
                    i3 = i;
                    i4 = i2;
                    drawer2 = drawer;
                }
                i5++;
                drawer = drawer2;
                i = i3;
                i2 = i4;
            }
        }
    }

    @Override // info.flowersoft.theotown.tools.RemoveTool, info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public int getIcon() {
        return Resources.ICON_REMOVE_FENCE;
    }

    @Override // info.flowersoft.theotown.tools.RemoveTool, info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getName() {
        return this.city.getTranslator().translate(2305);
    }
}
