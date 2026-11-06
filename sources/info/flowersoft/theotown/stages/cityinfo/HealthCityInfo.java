package info.flowersoft.theotown.stages.cityinfo;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.InfluenceType;
import info.flowersoft.theotown.components.coverage.CoverageCalculator;
import info.flowersoft.theotown.components.management.DefaultManagement;
import info.flowersoft.theotown.components.statistics.HealthItem;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.stages.CityInfoStage;
import info.flowersoft.theotown.tools.ToolResolver;
import info.flowersoft.theotown.util.StringFormatter;
import io.blueflower.stapel2d.gamestack.GameStack;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.TranslationManager;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.util.StaticGetter;

/* JADX INFO: loaded from: classes4.dex */
public class HealthCityInfo extends ListBasedCityInfo {
    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public int getTitleId(City city) {
        return 3117;
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public int getIcon() {
        return Resources.ICON_MEDIC;
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public String getHelpText(City city) {
        return city.getTranslator().translate(2412);
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.ListBasedCityInfo, info.flowersoft.theotown.stages.cityinfo.CityInfo
    public void build(final City city, Gadget gadget, final Stapel2DGameContext stapel2DGameContext, final GameStack gameStack) {
        super.build(city, gadget, stapel2DGameContext, gameStack);
        TranslationManager translator = stapel2DGameContext.getTranslator();
        addClickableItem(new StaticGetter(translator.translate(2823)), new StaticGetter(""), Resources.skin.cTextAccent, Resources.ICON_STATISTICS, new Runnable() { // from class: info.flowersoft.theotown.stages.cityinfo.HealthCityInfo$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                HealthCityInfo.m2312$r8$lambda$QlbRgeqYa0C4aGT__Vv5VjDWSw(gameStack, city, stapel2DGameContext);
            }
        });
        CoverageCalculator coverageCalculator = ((DefaultManagement) city.getComponent(3)).getCoverageCalculator();
        addClickableItem(new StaticGetter(StringFormatter.format(translator.translate(3193), Integer.valueOf(coverageCalculator.countProvidingBuildings(2)))), null, null, Resources.ICON_EYE, new Runnable() { // from class: info.flowersoft.theotown.stages.cityinfo.HealthCityInfo$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                HealthCityInfo.m2311$r8$lambda$lDLMCfNrSgoU1t7gWWviRVMNjk(gameStack, city);
            }
        });
        addItem(StringFormatter.format(translator.translate(436), Integer.valueOf(coverageCalculator.getNeededAmount(2))));
        addItem(StringFormatter.format(translator.translate(2337), Integer.valueOf(coverageCalculator.getReachedAmount(2))));
        addItem(StringFormatter.format(translator.translate(2913), Integer.valueOf(coverageCalculator.getProvidedAmount(2))));
    }

    /* JADX INFO: renamed from: $r8$lambda$QlbRgeqYa0C4-aGT__Vv5VjDWSw, reason: not valid java name */
    public static /* synthetic */ void m2312$r8$lambda$QlbRgeqYa0C4aGT__Vv5VjDWSw(GameStack gameStack, City city, Stapel2DGameContext stapel2DGameContext) {
        gameStack.pop();
        CityInfoStage cityInfoStage = new CityInfoStage(city, stapel2DGameContext);
        cityInfoStage.selectCityInfo(new StatisticsCityInfo(HealthItem.class));
        gameStack.push(cityInfoStage);
    }

    /* JADX INFO: renamed from: $r8$lambda$-lDLMCfNrSgoU1t7gWWviRVMNjk, reason: not valid java name */
    public static /* synthetic */ void m2311$r8$lambda$lDLMCfNrSgoU1t7gWWviRVMNjk(GameStack gameStack, City city) {
        gameStack.pop();
        city.applyComponent(new ToolResolver(city).resolve(InfluenceType.HEALTH));
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public String getTag() {
        return "HealthCityInfo";
    }

    public String toString() {
        return "Health";
    }
}
