package info.flowersoft.theotown.stages.cityinfo;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.DefaultWater;
import info.flowersoft.theotown.components.statistics.WaterProducedItem;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.stages.CityInfoStage;
import info.flowersoft.theotown.tools.ToolResolver;
import info.flowersoft.theotown.tools.marker.WaterMarker;
import info.flowersoft.theotown.util.StringFormatter;
import io.blueflower.stapel2d.gamestack.GameStack;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.TranslationManager;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.util.StaticGetter;

/* JADX INFO: loaded from: classes4.dex */
public class WaterCityInfo extends ListBasedCityInfo {
    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public int getTitleId(City city) {
        return 1941;
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public int getIcon() {
        return Resources.ICON_WATER;
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public String getHelpText(City city) {
        return city.getTranslator().translate(3178);
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.ListBasedCityInfo, info.flowersoft.theotown.stages.cityinfo.CityInfo
    public void build(final City city, Gadget gadget, final Stapel2DGameContext stapel2DGameContext, final GameStack gameStack) {
        super.build(city, gadget, stapel2DGameContext, gameStack);
        TranslationManager translator = stapel2DGameContext.getTranslator();
        DefaultWater defaultWater = (DefaultWater) city.getComponent(8);
        addClickableItem(new StaticGetter(translator.translate(2823)), new StaticGetter(""), Resources.skin.cTextAccent, Resources.ICON_STATISTICS, new Runnable() { // from class: info.flowersoft.theotown.stages.cityinfo.WaterCityInfo$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                WaterCityInfo.$r8$lambda$o4GToXxkZ03Muf_xCXiMXgpHCZM(gameStack, city, stapel2DGameContext);
            }
        });
        addCategory(translator.translate(1746));
        addItem(StringFormatter.format(translator.translate(1004), Integer.valueOf(defaultWater.countNetworks())));
        addClickableItem(new StaticGetter(StringFormatter.format(translator.translate(2562), Float.valueOf(defaultWater.availableWater()), Integer.valueOf(defaultWater.availableWaterBuildings()))), null, null, Resources.ICON_EYE, new Runnable() { // from class: info.flowersoft.theotown.stages.cityinfo.WaterCityInfo$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                WaterCityInfo.$r8$lambda$YSbLK6IOnZC9GpSCle8ohuP8l20(gameStack, city);
            }
        });
        addItem(StringFormatter.format(translator.translate(1838), Float.valueOf(defaultWater.consumedWater()), Integer.valueOf(defaultWater.consumedWaterBuildings())));
        float fUsageRatio = defaultWater.usageRatio() * 100.0f;
        addItem(StringFormatter.format(translator.translate(328), Float.valueOf(fUsageRatio)), "", colorForRatioInPercentBad(fUsageRatio));
        float waterWaste = defaultWater.getWaterWaste() * 100.0f;
        addItem(StringFormatter.format(translator.translate(1803), Float.valueOf(waterWaste)), "", colorForRatioInPercentBad((float) Math.sqrt(waterWaste)));
        if (defaultWater.countNetworks() > 1) {
            addCategory(translator.translate(2370));
            for (int i = 0; i < defaultWater.countNetworks(); i++) {
                if (i > 0) {
                    addItem("");
                }
                addItem(StringFormatter.format(translator.translate(2562), Float.valueOf(defaultWater.availableWater(i)), Integer.valueOf(defaultWater.availableWaterBuildings(i))));
                addItem(StringFormatter.format(translator.translate(1838), Float.valueOf(defaultWater.consumedWater(i)), Integer.valueOf(defaultWater.consumedWaterBuildings(i))));
                float fUsageRatio2 = defaultWater.usageRatio(i) * 100.0f;
                addItem(StringFormatter.format(translator.translate(328), Float.valueOf(fUsageRatio2)), "", colorForRatioInPercentBad(fUsageRatio2));
                float waterWaste2 = defaultWater.getWaterWaste(i) * 100.0f;
                addItem(StringFormatter.format(translator.translate(1803), Float.valueOf(waterWaste2)), "", colorForRatioInPercentBad(waterWaste2));
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$o4GToXxkZ03Muf_xCXiMXgpHCZM(GameStack gameStack, City city, Stapel2DGameContext stapel2DGameContext) {
        gameStack.pop();
        CityInfoStage cityInfoStage = new CityInfoStage(city, stapel2DGameContext);
        cityInfoStage.selectCityInfo(new StatisticsCityInfo(WaterProducedItem.class));
        gameStack.push(cityInfoStage);
    }

    public static /* synthetic */ void $r8$lambda$YSbLK6IOnZC9GpSCle8ohuP8l20(GameStack gameStack, City city) {
        gameStack.pop();
        city.applyComponent(new ToolResolver(city).resolve(new WaterMarker(city)));
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public String getTag() {
        return "WaterCityInfo";
    }

    public String toString() {
        return "Water";
    }
}
