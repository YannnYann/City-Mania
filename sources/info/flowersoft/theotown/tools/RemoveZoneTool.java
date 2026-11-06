package info.flowersoft.theotown.tools;

import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.components.soundsource.BuildingSoundSource;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.SoundType;

/* JADX INFO: loaded from: classes4.dex */
public class RemoveZoneTool extends RemoveTool {
    @Override // info.flowersoft.theotown.tools.RemoveTool, info.flowersoft.theotown.tools.TwoModesTool
    public boolean isValid(int i, int i2) {
        return true;
    }

    @Override // info.flowersoft.theotown.tools.RemoveTool, info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getId() {
        return "RemoveZone";
    }

    @Override // info.flowersoft.theotown.tools.RemoveTool, info.flowersoft.theotown.tools.marker.BuildToolMarker
    public boolean markBuilding(int i, int i2) {
        if (this.tiles.getZone(i, i2) != null) {
            return super.markBuilding(i, i2);
        }
        return false;
    }

    public RemoveZoneTool() {
        super(false, false);
    }

    @Override // info.flowersoft.theotown.tools.RemoveTool, info.flowersoft.theotown.tools.TwoModesTool
    public void build(int i, int i2, int i3, int i4) {
        captureState(i, i2, i3, i4);
        for (int i5 = 0; i5 <= Math.abs(i4 - i2); i5++) {
            for (int i6 = 0; i6 <= Math.abs(i3 - i); i6++) {
                int iMin = Math.min(i, i3) + i6;
                int iMin2 = Math.min(i2, i4) + i5;
                if (this.tiles.getZone(iMin, iMin2) != null) {
                    Building building = this.tiles.getBuilding(iMin, iMin2);
                    if (building != null && !building.isLocked()) {
                        this.modifier.remove(building, null);
                        addDestructionAnimation(building.getX(), building.getY(), building.getWidth(), building.getHeight());
                        this.soundManager.playOnce(Resources.SOUND_DESTROY, SoundType.GAME, new BuildingSoundSource(this.city, building));
                    }
                    if (this.tiles.getBuilding(iMin, iMin2) == null) {
                        this.modifier.markZone(null, iMin, iMin2);
                    }
                }
            }
        }
        endCaptureState();
    }

    @Override // info.flowersoft.theotown.tools.RemoveTool, info.flowersoft.theotown.tools.TwoModesTool
    public boolean isValid(int i, int i2, int i3, int i4) {
        return Math.max(Math.abs(i3 - i), Math.abs(i4 - i2)) + 1 <= 15 || infiniteRange();
    }

    @Override // info.flowersoft.theotown.tools.RemoveTool, info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public int getIcon() {
        return Resources.ICON_REMOVE;
    }

    @Override // info.flowersoft.theotown.tools.RemoveTool, info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getName() {
        return this.city.getTranslator().translate(884);
    }
}
