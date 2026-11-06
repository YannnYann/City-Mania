package info.flowersoft.theotown.tools;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.objects.Pipe;
import info.flowersoft.theotown.components.DefaultWater;
import info.flowersoft.theotown.components.soundsource.TileSoundSource;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.SoundType;
import info.flowersoft.theotown.tools.marker.WaterPipeMarker;

/* JADX INFO: loaded from: classes4.dex */
public class RemovePipeTool extends RemoveTool {
    public final PipeTool pipeTool;

    public RemovePipeTool() {
        super(false, false);
        this.pipeTool = new PipeTool(null);
    }

    @Override // info.flowersoft.theotown.tools.RemoveTool, info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getId() {
        return "RemovePipe";
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.CityComponent
    public void bind(City city) {
        super.bind(city);
        this.pipeTool.bind(city);
        setMarker(new WaterPipeMarker(city));
    }

    @Override // info.flowersoft.theotown.tools.RemoveTool, info.flowersoft.theotown.tools.TwoModesTool, info.flowersoft.theotown.tools.BuildTool
    public void redo(boolean z) {
        super.redo(z);
        recalculate();
    }

    @Override // info.flowersoft.theotown.tools.RemoveTool, info.flowersoft.theotown.tools.TwoModesTool, info.flowersoft.theotown.tools.BuildTool
    public void undo(boolean z) {
        super.undo(z);
        recalculate();
    }

    @Override // info.flowersoft.theotown.tools.RemoveTool, info.flowersoft.theotown.tools.TwoModesTool
    public void build(int i, int i2, int i3, int i4) {
        captureState(i, i2, i3, i4);
        int i5 = 0;
        for (int i6 = 0; i6 <= Math.abs(i4 - i2); i6++) {
            for (int i7 = 0; i7 <= Math.abs(i3 - i); i7++) {
                int iMin = Math.min(i, i3) + i7;
                int iMin2 = Math.min(i2, i4) + i6;
                Pipe pipe = this.tiles.getPipe(iMin, iMin2);
                if (pipe != null) {
                    i5++;
                    this.modifier.remove(pipe, iMin, iMin2);
                    addDestructionAnimation(iMin, iMin2);
                    this.soundManager.playOnce(Resources.SOUND_DESTROY, SoundType.GAME, new TileSoundSource(this.city, iMin, iMin2));
                }
            }
        }
        endCaptureState();
        if (i5 > 0) {
            recalculate();
        }
    }

    private void recalculate() {
        ((DefaultWater) this.city.getComponent(8)).calculate();
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool
    public void drawZone(int i, int i2, Drawer drawer) {
        this.pipeTool.drawZone(i, i2, drawer);
    }

    @Override // info.flowersoft.theotown.tools.BuildTool, info.flowersoft.theotown.tools.DefaultTool
    public boolean drawRoad(int i, int i2, Drawer drawer, int i3) {
        return this.pipeTool.drawRoad(i, i2, drawer, i3);
    }

    @Override // info.flowersoft.theotown.tools.BuildTool, info.flowersoft.theotown.tools.DefaultTool
    public void drawGround(int i, int i2, Drawer drawer) {
        this.pipeTool.drawGround(i, i2, drawer);
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool
    public void drawBuilding(int i, int i2, Drawer drawer) {
        this.pipeTool.drawBuilding(i, i2, drawer);
    }

    @Override // info.flowersoft.theotown.tools.BuildTool
    public void drawMarkerOverlay(int i, int i2, Drawer drawer) {
        this.pipeTool.drawMarkerOverlay(i, i2, drawer);
    }

    @Override // info.flowersoft.theotown.tools.RemoveTool, info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public int getIcon() {
        return Resources.ICON_REMOVE;
    }

    @Override // info.flowersoft.theotown.tools.RemoveTool, info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getName() {
        return this.city.getTranslator().translate(2643);
    }
}
