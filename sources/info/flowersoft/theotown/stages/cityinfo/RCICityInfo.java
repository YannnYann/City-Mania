package info.flowersoft.theotown.stages.cityinfo;

import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.Demand;
import info.flowersoft.theotown.components.DefaultDemand;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.ui.BarGraph;
import info.flowersoft.theotown.ui.RCIIcon;
import io.bidmachine.protobuf.sdk.ErrorReasonAnalytics;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.gamestack.GameStack;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.gui.Button;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Icon;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.gui.ToggleButton;

/* JADX INFO: loaded from: classes4.dex */
public class RCICityInfo extends CityInfo {
    public BarGraph barGraph;
    public Demand demand;
    public Translator translator;

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public int getTitleId(City city) {
        return 3048;
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public Icon createIcon(City city, Gadget gadget, boolean z) {
        RCIIcon rCIIcon = new RCIIcon((Demand) city.getComponent(10), gadget);
        rCIIcon.setShape(3, 3, gadget.getClientWidth() - 6, gadget.getClientHeight() - 6);
        return rCIIcon;
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public String getHelpText(City city) {
        return city.getTranslator().translate(617);
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public void build(City city, Gadget gadget, Stapel2DGameContext stapel2DGameContext, GameStack gameStack) {
        Gadget gadget2;
        RCICityInfo rCICityInfo;
        int i;
        this.demand = (Demand) city.getComponent(10);
        this.translator = stapel2DGameContext.getTranslator();
        int i2 = 0;
        if (city.getGameMode().hasInfinityMoney() && (this.demand instanceof DefaultDemand) && !city.isReadonly()) {
            final DefaultDemand defaultDemand = (DefaultDemand) this.demand;
            int clientWidth = gadget.getClientWidth() - 6;
            final int i3 = 0;
            while (true) {
                int i4 = 22;
                i2 = 44;
                if (i3 >= 9) {
                    break;
                }
                int i5 = clientWidth / 9;
                int i6 = 3 + (i5 * i3);
                Gadget gadget3 = gadget;
                new Button(i6, 0, i5, i4, gadget3) { // from class: info.flowersoft.theotown.stages.cityinfo.RCICityInfo.1
                    @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                    public void onClick() {
                        super.onClick();
                        DefaultDemand defaultDemand2 = defaultDemand;
                        int i7 = i3;
                        defaultDemand2.setOffset(i7, defaultDemand2.getOffset(i7) + 20);
                        RCICityInfo.this.rebuildGraph();
                    }
                }.setText("+");
                new Button(i6, gadget3.getClientHeight() - 44, i5, i4, gadget3) { // from class: info.flowersoft.theotown.stages.cityinfo.RCICityInfo.2
                    @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                    public void onClick() {
                        super.onClick();
                        defaultDemand.setOffset(i3, r0.getOffset(r1) - 20);
                        RCICityInfo.this.rebuildGraph();
                    }
                }.setText("-");
                new ToggleButton(i6, gadget3.getClientHeight() - 22, i5, i4, gadget3) { // from class: info.flowersoft.theotown.stages.cityinfo.RCICityInfo.3
                    @Override // io.blueflower.stapel2d.gui.ToggleButton, io.blueflower.stapel2d.gui.Button
                    public boolean isPressed() {
                        return defaultDemand.getMultiplier(i3) == 0;
                    }

                    @Override // io.blueflower.stapel2d.gui.ToggleButton, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                    public void onClick() {
                        super.onClick();
                        DefaultDemand defaultDemand2 = defaultDemand;
                        int i7 = i3;
                        defaultDemand2.setMultiplier(i7, 1 - defaultDemand2.getMultiplier(i7));
                        defaultDemand.setOffset(i3, 0);
                        RCICityInfo.this.rebuildGraph();
                    }
                }.setText("0");
                i3++;
                gadget = gadget3;
            }
            gadget2 = gadget;
            rCICityInfo = this;
            i = 22;
        } else {
            gadget2 = gadget;
            rCICityInfo = this;
            i = 0;
        }
        rCICityInfo.barGraph = new BarGraph(0, i, gadget2.getClientWidth(), (gadget2.getClientHeight() - i2) - i, gadget2);
        rebuildGraph();
    }

    public final void rebuildGraph() {
        Demand demand = this.demand;
        if (demand instanceof DefaultDemand) {
            ((DefaultDemand) demand).calculate();
        }
        this.barGraph.clear();
        Skin skin = Resources.skin;
        Color color = Colors.GREEN;
        Color color2 = Colors.BLUE;
        Color color3 = Colors.YELLOW;
        Color[] colorArr = {skin.cItemBg0.copy().lerp(color, 0.05f), skin.cItemBg1.copy().lerp(color, 0.05f), skin.cItemBg0.copy().lerp(color2, 0.05f), skin.cItemBg1.copy().lerp(color2, 0.05f), skin.cItemBg0.copy().lerp(color3, 0.05f), skin.cItemBg1.copy().lerp(color3, 0.05f)};
        String[] strArr = {this.translator.translate(450), this.translator.translate(Sdk.SDKError.Reason.AD_WIN_NOTIFICATION_ERROR_VALUE), this.translator.translate(2144)};
        this.barGraph.addBar(Drafts.get("$cat_residential00_level00", Draft.class).previewFrames, strArr[0], Resources.COLOR_RES1, getDemand(this.demand.getResidential(0)), colorArr[0]);
        this.barGraph.addBar(Drafts.get("$cat_residential00_level01", Draft.class).previewFrames, strArr[1], Resources.COLOR_RES2, getDemand(this.demand.getResidential(1)), colorArr[1]);
        this.barGraph.addBar(Drafts.get("$cat_residential00_level02", Draft.class).previewFrames, strArr[2], Resources.COLOR_RES3, getDemand(this.demand.getResidential(2)), colorArr[0]);
        this.barGraph.addBar(Drafts.get("$cat_commercial00_level00", Draft.class).previewFrames, strArr[0], Resources.COLOR_COM1, getDemand(this.demand.getCommercial(0)), colorArr[3]);
        this.barGraph.addBar(Drafts.get("$cat_commercial00_level01", Draft.class).previewFrames, strArr[1], Resources.COLOR_COM2, getDemand(this.demand.getCommercial(1)), colorArr[2]);
        this.barGraph.addBar(Drafts.get("$cat_commercial00_level02", Draft.class).previewFrames, strArr[2], Resources.COLOR_COM3, getDemand(this.demand.getCommercial(2)), colorArr[3]);
        this.barGraph.addBar(Drafts.get("$cat_industrial00_level00", Draft.class).previewFrames, strArr[0], Resources.COLOR_IND1, getDemand(this.demand.getIndustrial(0)), colorArr[4]);
        this.barGraph.addBar(Drafts.get("$cat_industrial00_level01", Draft.class).previewFrames, strArr[1], Resources.COLOR_IND2, getDemand(this.demand.getIndustrial(1)), colorArr[5]);
        this.barGraph.addBar(Drafts.get("$cat_industrial00_level02", Draft.class).previewFrames, strArr[2], Resources.COLOR_IND3, getDemand(this.demand.getIndustrial(2)), colorArr[4]);
        Color colorCopy = Resources.skin.cText.copy();
        colorCopy.setAlpha(60);
        this.barGraph.addHeadline(this.translator.translate(2125), 0, 3, colorCopy);
        this.barGraph.addHeadline(this.translator.translate(2692), 3, 3, colorCopy);
        this.barGraph.addHeadline(this.translator.translate(ErrorReasonAnalytics.ERROR_REASON_ANALYTICS_MONITOR_BAD_CONTENT_VALUE), 6, 3, colorCopy);
        this.barGraph.setView(-1.25f, 1.25f);
    }

    public final float getDemand(float f) {
        return Math.signum(f) * (1.0f - ((float) Math.exp(Math.abs(f) * (-0.0125f))));
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public String getTag() {
        return "RCICityInfo";
    }

    public String toString() {
        return "RCI";
    }
}
