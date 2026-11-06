package info.flowersoft.theotown.stages.cityinfo;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.DefaultPower;
import info.flowersoft.theotown.components.statistics.EnergyProducedItem;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.stages.CityInfoStage;
import info.flowersoft.theotown.tools.ToolResolver;
import info.flowersoft.theotown.tools.marker.PowerMarker;
import info.flowersoft.theotown.util.StringFormatter;
import io.blueflower.stapel2d.gamestack.GameStack;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.TranslationManager;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.util.StaticGetter;

/* JADX INFO: loaded from: classes4.dex */
public class EnergyCityInfo extends ListBasedCityInfo {
    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public int getTitleId(City city) {
        return 360;
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public int getIcon() {
        return Resources.ICON_ENERGY;
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public String getHelpText(City city) {
        return city.getTranslator().translate(2582);
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.ListBasedCityInfo, info.flowersoft.theotown.stages.cityinfo.CityInfo
    public void build(final City city, Gadget gadget, final Stapel2DGameContext stapel2DGameContext, final GameStack gameStack) {
        super.build(city, gadget, stapel2DGameContext, gameStack);
        DefaultPower defaultPower = (DefaultPower) city.getComponent(5);
        TranslationManager translator = stapel2DGameContext.getTranslator();
        addClickableItem(new StaticGetter(translator.translate(2823)), new StaticGetter(""), Resources.skin.cTextAccent, Resources.ICON_STATISTICS, new Runnable() { // from class: info.flowersoft.theotown.stages.cityinfo.EnergyCityInfo$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                EnergyCityInfo.$r8$lambda$7efVDCXRoN_1wiULlI2EqkU1frg(gameStack, city, stapel2DGameContext);
            }
        });
        addCategory(translator.translate(2709));
        addItem(StringFormatter.format(translator.translate(2157), Integer.valueOf(defaultPower.countNetworks())));
        addClickableItem(new StaticGetter(StringFormatter.format(translator.translate(279), Float.valueOf(defaultPower.availablePower()), Integer.valueOf(defaultPower.availablePowerBuildings()))), null, null, Resources.ICON_EYE, new Runnable() { // from class: info.flowersoft.theotown.stages.cityinfo.EnergyCityInfo$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                EnergyCityInfo.$r8$lambda$4Ecdh9UFNb3Re4OX5l1kYpxtjM8(gameStack, city);
            }
        });
        addItem(StringFormatter.format(translator.translate(993), Float.valueOf(defaultPower.consumedPower()), Integer.valueOf(defaultPower.consumedPowerBuildings())));
        float fUsageRatio = defaultPower.usageRatio() * 100.0f;
        addItem(StringFormatter.format(translator.translate(2336), Float.valueOf(fUsageRatio)), "", colorForRatioInPercentBad(fUsageRatio));
        if (defaultPower.countNetworks() > 1) {
            addCategory(translator.translate(2957));
            for (int i = 0; i < defaultPower.countNetworks(); i++) {
                if (i > 0) {
                    addItem("");
                }
                addItem(StringFormatter.format(translator.translate(279), Float.valueOf(defaultPower.availablePower(i)), Integer.valueOf(defaultPower.availablePowerBuildings(i))));
                addItem(StringFormatter.format(translator.translate(993), Float.valueOf(defaultPower.consumedPower(i)), Integer.valueOf(defaultPower.consumedPowerBuildings(i))));
                float fUsageRatio2 = defaultPower.usageRatio(i) * 100.0f;
                addItem(StringFormatter.format(translator.translate(2336), Float.valueOf(fUsageRatio2)), "", colorForRatioInPercentBad(fUsageRatio2));
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$7efVDCXRoN_1wiULlI2EqkU1frg(GameStack gameStack, City city, Stapel2DGameContext stapel2DGameContext) {
        gameStack.pop();
        CityInfoStage cityInfoStage = new CityInfoStage(city, stapel2DGameContext);
        cityInfoStage.selectCityInfo(new StatisticsCityInfo(EnergyProducedItem.class));
        gameStack.push(cityInfoStage);
    }

    public static /* synthetic */ void $r8$lambda$4Ecdh9UFNb3Re4OX5l1kYpxtjM8(GameStack gameStack, City city) {
        gameStack.pop();
        city.applyComponent(new ToolResolver(city).resolve(new PowerMarker(city)));
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public String getTag() {
        return "EnergyCityInfo";
    }

    public String toString() {
        return "Energy";
    }
}
