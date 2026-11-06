package info.flowersoft.theotown.stages.tiledialog;

import info.flowersoft.theotown.city.City;
import io.blueflower.stapel2d.gamestack.Translator;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class TileInfoDialogBuilder {
    public City city;
    public final List<TileInformationProvider> informationProviders;
    public Translator translator;

    public TileInfoDialogBuilder(City city) {
        ArrayList arrayList = new ArrayList();
        this.informationProviders = arrayList;
        this.city = city;
        this.translator = city.getTranslator();
        arrayList.add(new ToolActionProvider());
        arrayList.add(new WasteBuildingInformation());
        arrayList.add(new BodyDisposalBuildingInformation());
        arrayList.add(new BuildingInformation());
        arrayList.add(new EnergyInformation());
        arrayList.add(new WaterInformation());
        arrayList.add(new RailwayInformation());
        arrayList.add(new RoadInformation());
        arrayList.add(new BusStopInformation());
        arrayList.add(new BridgeInformation());
        arrayList.add(new WeatherMachineInformation());
        arrayList.add(new MilitaryInformation());
        arrayList.add(new AirportInformation());
        arrayList.add(new ScriptBasedInformation());
        arrayList.add(new PerformanceInformation());
        arrayList.add(new ConstructionBuildingInformation());
    }

    /* JADX WARN: Removed duplicated region for block: B:90:0x02e5 A[LOOP:8: B:88:0x02df->B:90:0x02e5, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x02f7 A[LOOP:9: B:91:0x02f1->B:93:0x02f7, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public info.flowersoft.theotown.ui.Dialog build(int r32, int r33, io.blueflower.stapel2d.gui.Master r34, final io.blueflower.stapel2d.util.Setter<info.flowersoft.theotown.stages.cityinfo.CityInfo> r35, io.blueflower.stapel2d.util.Setter<io.blueflower.stapel2d.gamestack.Stage> r36, io.blueflower.stapel2d.gamestack.Stapel2DGameContext r37) {
        /*
            Method dump skipped, instruction units count: 775
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.stages.tiledialog.TileInfoDialogBuilder.build(int, int, io.blueflower.stapel2d.gui.Master, io.blueflower.stapel2d.util.Setter, io.blueflower.stapel2d.util.Setter, io.blueflower.stapel2d.gamestack.Stapel2DGameContext):info.flowersoft.theotown.ui.Dialog");
    }
}
