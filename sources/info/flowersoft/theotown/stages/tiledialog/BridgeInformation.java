package info.flowersoft.theotown.stages.tiledialog;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.ui.Dialog;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.util.Setter;

/* JADX INFO: loaded from: classes4.dex */
public class BridgeInformation extends TileInformationProvider {
    public boolean isBridge;
    public Road road;

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public boolean isMutualExclusive() {
        return false;
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public void setContext(City city, int i, int i2) {
        int i3;
        super.setContext(city, i, i2);
        Road topRoad = city.getTiles().getTopRoad(i, i2);
        this.road = topRoad;
        if (topRoad != null && ((i3 = topRoad.level) < 0 || (i3 == 0 && topRoad.dLevel == 0))) {
            this.road = null;
        }
        this.isBridge = this.road != null;
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public boolean canHandle() {
        return this.isBridge;
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public void finish(Dialog dialog, Stapel2DGameContext stapel2DGameContext, Setter<Stage> setter) {
        super.finish(dialog, stapel2DGameContext, setter);
    }
}
