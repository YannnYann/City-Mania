package info.flowersoft.theotown.stages.gameuibuilder;

import com.badlogic.gdx.utils.TimeUtils;
import com.google.android.gms.ads.AdSize;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.IsoConverter;
import info.flowersoft.theotown.city.components.Demand;
import info.flowersoft.theotown.city.components.People;
import info.flowersoft.theotown.components.DefaultTraffic;
import info.flowersoft.theotown.components.DefaultTransportation;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.scripting.MethodCluster;
import info.flowersoft.theotown.scripting.ScriptingEnvironment;
import info.flowersoft.theotown.stages.CityStage;
import info.flowersoft.theotown.ui.DebugInfo;
import info.flowersoft.theotown.ui.DebugLayer;
import info.flowersoft.theotown.ui.StaticDebugInfo;
import info.flowersoft.theotown.util.StringFormatter;
import info.flowersoft.theotown.util.TimeLog;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.util.Builder;
import io.blueflower.stapel2d.util.Tuple;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public class DebugLayerBuilder extends Builder<CityStage.GameStageContext> {
    public final City city;
    public final Master gui;

    public DebugLayerBuilder(CityStage.GameStageContext gameStageContext) {
        super(gameStageContext);
        this.city = getBuilderContext().getCity();
        this.gui = getBuilderContext().getGUI();
    }

    @Override // io.blueflower.stapel2d.util.Builder
    public void build() {
        DebugLayer debugLayer = new DebugLayer(this.gui) { // from class: info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder.1
            @Override // info.flowersoft.theotown.ui.DebugLayer, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
                int i3;
                super.draw(i, i2);
                Skin skin = this.skin;
                Engine engine = skin.engine;
                Font font = skin.fontSmall;
                Color[] colorArr = {Colors.RED, Colors.LIGHT_ORANGE, Colors.CYAN, Colors.LIGHT_BLUE, Colors.GREEN, Colors.LIGHT_GRAY};
                String[] strArr = {"Draw city", "Update city", "Draw gui", "Flush", "Waiting", "Other"};
                float time = 0.0f;
                int i4 = 0;
                while (true) {
                    if (i4 >= 6) {
                        break;
                    }
                    time += TimeLog.getTime(i4);
                    i4++;
                }
                int x = ((CityStage.GameStageContext) DebugLayerBuilder.this.getBuilderContext()).areaPanel.getX();
                float f = -90.0f;
                int i5 = 0;
                for (i3 = 6; i5 < i3; i3 = 6) {
                    engine.setColor(colorArr[i5]);
                    int i6 = i5;
                    float f2 = 64;
                    float time2 = f + ((TimeLog.getTime(i5) * 360.0f) / time);
                    engine.drawOval(Resources.IMAGE_WORLD, x, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, f2, f2, f, time2, Resources.FRAME_RECT);
                    String str = StringFormatter.format(strArr[i6] + " (%dms)", Integer.valueOf(Math.round(TimeLog.getTime(i6))));
                    engine.setColor(Colors.BLACK);
                    engine.setTransparency(AdSize.WIDE_SKYSCRAPER_WIDTH);
                    float f3 = (float) (x + 66);
                    float f4 = i6;
                    engine.drawImage(Resources.IMAGE_WORLD, f3, font.getHeight() * f4, font.getWidth(str), font.getHeight(), Resources.FRAME_RECT);
                    engine.setColor(colorArr[i6]);
                    engine.setTransparency(255);
                    engine.drawText(font, str, f3, f4 * font.getHeight());
                    i5 = i6 + 1;
                    f = time2;
                }
                engine.setColor(Colors.WHITE);
                ((DefaultTransportation) DebugLayerBuilder.this.city.getComponent(16)).getReachabilityMask().drawDebug(engine, 30.0f, 85.0f);
            }
        };
        getBuilderContext().debugLayer = debugLayer;
        final DefaultTraffic defaultTraffic = (DefaultTraffic) this.city.getComponent(7);
        debugLayer.setVisible(false);
        debugLayer.addInfo(new StaticDebugInfo(">> Debug stats " + TheoTown.VERSION_NAME + " <<"));
        debugLayer.addInfo(new StaticDebugInfo(TheoTown.DEVICE_MODEL + " by " + TheoTown.DEVICE_MANUFACTURER + ""));
        String property = System.getProperty("java.vendor");
        debugLayer.addInfo(new StaticDebugInfo(System.getProperty("java.version") + " by " + property + ""));
        debugLayer.addInfo(new DebugInfo() { // from class: info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder.2
            @Override // info.flowersoft.theotown.ui.DebugInfo
            public String getText() {
                return "Orig. res. " + Resources.skin.engine.getWidth() + "x" + Resources.skin.engine.getHeight() + ", virt. res. " + DebugLayerBuilder.this.gui.getWidth() + "x" + DebugLayerBuilder.this.gui.getHeight();
            }
        });
        debugLayer.addInfo(new DebugInfo() { // from class: info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder.3
            @Override // info.flowersoft.theotown.ui.DebugInfo
            public String getText() {
                String str = ((CityStage.GameStageContext) DebugLayerBuilder.this.getBuilderContext()).getEngine().getDrawCounter() + " draw calls, " + ((CityStage.GameStageContext) DebugLayerBuilder.this.getBuilderContext()).getEngine().getBatchCounter() + " batches, " + ((int) ((CityStage.GameStageContext) DebugLayerBuilder.this.getBuilderContext()).getGameContext().getFPS()) + " FPS";
                if (!Settings.energySaving || ((CityStage.GameStageContext) DebugLayerBuilder.this.getBuilderContext()).getGameContext().getFPS() >= 40.0f) {
                    return str;
                }
                return str + " (energy saving)";
            }
        });
        debugLayer.addInfo(new DebugInfo() { // from class: info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder.4
            public float onAverage = -1.0f;

            @Override // info.flowersoft.theotown.ui.DebugInfo
            public String getText() {
                int delimitedMS = ((CityStage.GameStageContext) DebugLayerBuilder.this.getBuilderContext()).getDelimitedMS();
                int lastRenderTime = ((CityStage.GameStageContext) DebugLayerBuilder.this.getBuilderContext()).getLastRenderTime();
                float f = this.onAverage;
                if (f < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                    this.onAverage = lastRenderTime;
                } else {
                    this.onAverage = (f * 0.9f) + (lastRenderTime * 0.1f);
                }
                return "Wait: " + delimitedMS + "ms, render: " + lastRenderTime + "ms (avg: " + Math.round(this.onAverage) + "ms)";
            }

            @Override // info.flowersoft.theotown.ui.DebugInfo
            public Color getColor() {
                int delimitedMS = ((CityStage.GameStageContext) DebugLayerBuilder.this.getBuilderContext()).getDelimitedMS();
                if (delimitedMS > 16) {
                    return Colors.GREEN;
                }
                return delimitedMS > 4 ? new Color(255, 255, 0) : Colors.RED;
            }
        });
        final Demand demand = (Demand) this.city.getComponent(10);
        debugLayer.addInfo(new DebugInfo() { // from class: info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder.5
            @Override // info.flowersoft.theotown.ui.DebugInfo
            public String getText() {
                return "R: " + demand.getResidential(0) + ", " + demand.getResidential(1) + ", " + demand.getResidential(2);
            }
        });
        debugLayer.addInfo(new DebugInfo() { // from class: info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder.6
            @Override // info.flowersoft.theotown.ui.DebugInfo
            public String getText() {
                return "C: " + demand.getCommercial(0) + ", " + demand.getCommercial(1) + ", " + demand.getCommercial(2);
            }
        });
        debugLayer.addInfo(new DebugInfo() { // from class: info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder.7
            @Override // info.flowersoft.theotown.ui.DebugInfo
            public String getText() {
                return "I: " + demand.getIndustrial(0) + ", " + demand.getIndustrial(1) + ", " + demand.getIndustrial(2);
            }
        });
        debugLayer.addInfo(new DebugInfo() { // from class: info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder.8
            @Override // info.flowersoft.theotown.ui.DebugInfo
            public String getText() {
                return "Cars: " + defaultTraffic.countCars() + ", Bus stops: " + DebugLayerBuilder.this.city.getBusStops().size();
            }
        });
        debugLayer.addInfo(new DebugInfo() { // from class: info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder.9
            @Override // info.flowersoft.theotown.ui.DebugInfo
            public String getText() {
                People people = (People) DebugLayerBuilder.this.city.getComponent(9);
                return "People: " + people.getPeople() + " (" + people.getPeople(0) + ", " + people.getPeople(1) + ", " + people.getPeople(2) + ")";
            }
        });
        debugLayer.addInfo(new DebugInfo() { // from class: info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder.10
            @Override // info.flowersoft.theotown.ui.DebugInfo
            public String getText() {
                return "#Buildings: " + DebugLayerBuilder.this.city.getBuildings().size() + ", #Roads: " + DebugLayerBuilder.this.city.getRoads().size();
            }
        });
        debugLayer.addInfo(new DebugInfo() { // from class: info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder.11
            @Override // info.flowersoft.theotown.ui.DebugInfo
            public String getText() {
                return "Processor cores " + Runtime.getRuntime().availableProcessors();
            }
        });
        debugLayer.addInfo(new DebugInfo() { // from class: info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder.12
            @Override // info.flowersoft.theotown.ui.DebugInfo
            public String getText() {
                Runtime runtime = Runtime.getRuntime();
                long j = runtime.totalMemory();
                return String.format(Locale.ENGLISH, "Memory free:%d, total: %d, max:%d", Long.valueOf(runtime.freeMemory() / 1024), Long.valueOf(j / 1024), Long.valueOf(runtime.maxMemory() / 1024));
            }
        });
        debugLayer.addInfo(new DebugInfo() { // from class: info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder.13
            @Override // info.flowersoft.theotown.ui.DebugInfo
            public String getText() {
                IsoConverter isoConverter = DebugLayerBuilder.this.city.getIsoConverter();
                float width = isoConverter.getView().getWidth() / 2.0f;
                float height = isoConverter.getView().getHeight() / 2.0f;
                return String.format(Locale.ENGLISH, "Over tile: %f, %f", Float.valueOf(isoConverter.absToIsoX(width, height)), Float.valueOf(isoConverter.absToIsoY(width, height)));
            }
        });
        debugLayer.addInfo(new DebugInfo() { // from class: info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder.14
            @Override // info.flowersoft.theotown.ui.DebugInfo
            public String getText() {
                return String.format(Locale.ENGLISH, "City points: %d / %d", Integer.valueOf(DebugLayerBuilder.this.city.getCurrentXp()), Integer.valueOf(DebugLayerBuilder.this.city.getTargetXp()));
            }
        });
        debugLayer.addInfo(new DebugInfo() { // from class: info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder.15
            @Override // info.flowersoft.theotown.ui.DebugInfo
            public String getText() {
                return "Lua postponed functions: " + ScriptingEnvironment.getInstance().countPostponedTasks();
            }
        });
        debugLayer.addInfo(buildMethodClusterInfo());
        new Panel(0, 0, 0, 0, this.gui) { // from class: info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder.16
            @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
            }

            @Override // io.blueflower.stapel2d.gui.SensitiveGadget, io.blueflower.stapel2d.gui.Gadget
            public void onUpdate() {
            }
        };
    }

    public final DebugInfo buildMethodClusterInfo() {
        return new DebugInfo() { // from class: info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder.17
            public long lastMS;
            public String lastResult;

            @Override // info.flowersoft.theotown.ui.DebugInfo
            public String getText() {
                if (this.lastResult == null || TimeUtils.millis() - this.lastMS >= 1000) {
                    this.lastMS = TimeUtils.millis();
                    this.lastResult = build();
                }
                return this.lastResult;
            }

            public final String build() {
                int i;
                ArrayList<MethodCluster> activeClusters = MethodCluster.getActiveClusters();
                ArrayList arrayList = new ArrayList();
                Iterator<MethodCluster> it = activeClusters.iterator();
                while (true) {
                    i = 0;
                    if (!it.hasNext()) {
                        break;
                    }
                    MethodCluster next = it.next();
                    while (i < next.countMethods()) {
                        arrayList.add(new Tuple(next, Integer.valueOf(i)));
                        i++;
                    }
                }
                Collections.sort(arrayList, new Comparator<Tuple<MethodCluster, Integer>>() { // from class: info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder.17.1
                    @Override // java.util.Comparator
                    public int compare(Tuple<MethodCluster, Integer> tuple, Tuple<MethodCluster, Integer> tuple2) {
                        return -Float.compare(tuple.getFirst().getMethodExecutionTime(tuple.getSecond().intValue()) / Math.max(tuple.getFirst().getMethodExecutionCounter(tuple.getSecond().intValue()), 1), tuple2.getFirst().getMethodExecutionTime(tuple2.getSecond().intValue()) / Math.max(tuple2.getFirst().getMethodExecutionCounter(tuple2.getSecond().intValue()), 1));
                    }
                });
                StringBuilder sb = new StringBuilder();
                sb.append("Lua function stats for 1s: active: " + arrayList.size() + ", calls: " + MethodCluster.getAndResetCallCounter());
                sb.append("\n");
                int i2 = 0;
                for (int i3 = 0; i3 < arrayList.size() && i2 < 5; i3++) {
                    Tuple tuple = (Tuple) arrayList.get(i3);
                    MethodCluster methodCluster = (MethodCluster) tuple.getFirst();
                    int iIntValue = ((Integer) tuple.getSecond()).intValue();
                    Draft draft = methodCluster.getMethodScript(iIntValue).getDraft();
                    if (!draft.isSuperPrivileged()) {
                        long methodExecutionTime = methodCluster.getMethodExecutionTime(iIntValue);
                        float fMax = methodExecutionTime / Math.max(r6, 1);
                        sb.append(StringFormatter.format("%s ~%.1fms[%d/%d]", draft.id + ":" + methodCluster.getName(), Float.valueOf(fMax), Long.valueOf(methodExecutionTime), Integer.valueOf(methodCluster.getMethodExecutionCounter(iIntValue))));
                        sb.append("\n");
                        i2++;
                    }
                }
                while (i < arrayList.size()) {
                    Tuple tuple2 = (Tuple) arrayList.get(i);
                    ((MethodCluster) tuple2.getFirst()).clearExecutionStats(((Integer) tuple2.getSecond()).intValue());
                    i++;
                }
                MethodCluster.clearActiveClusters();
                return sb.toString();
            }
        };
    }
}
