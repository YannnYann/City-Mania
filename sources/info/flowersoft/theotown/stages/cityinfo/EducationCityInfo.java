package info.flowersoft.theotown.stages.cityinfo;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.InfluenceType;
import info.flowersoft.theotown.components.coverage.CoverageCalculator;
import info.flowersoft.theotown.components.management.DefaultManagement;
import info.flowersoft.theotown.components.statistics.EducationHighItem;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.stages.CityInfoStage;
import info.flowersoft.theotown.tools.ToolResolver;
import info.flowersoft.theotown.util.StringFormatter;
import io.bidmachine.protobuf.EventTypeExtended;
import io.blueflower.stapel2d.gamestack.GameStack;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.TranslationManager;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.util.StaticGetter;
import io.blueflower.stapel2d.util.Tuple;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class EducationCityInfo extends ListBasedCityInfo {
    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public int getTitleId(City city) {
        return 2483;
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public int getIcon() {
        return Resources.ICON_EDUCATION;
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public String getHelpText(City city) {
        return city.getTranslator().translate(EventTypeExtended.EVENT_TYPE_EXTENDED_AD_UNIT_LOADED_VALUE);
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.ListBasedCityInfo, info.flowersoft.theotown.stages.cityinfo.CityInfo
    public void build(final City city, Gadget gadget, final Stapel2DGameContext stapel2DGameContext, final GameStack gameStack) {
        super.build(city, gadget, stapel2DGameContext, gameStack);
        CoverageCalculator coverageCalculator = ((DefaultManagement) city.getComponent(3)).getCoverageCalculator();
        TranslationManager translator = stapel2DGameContext.getTranslator();
        addClickableItem(new StaticGetter(translator.translate(2823)), new StaticGetter(""), Resources.skin.cTextAccent, Resources.ICON_STATISTICS, new Runnable() { // from class: info.flowersoft.theotown.stages.cityinfo.EducationCityInfo$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                EducationCityInfo.$r8$lambda$pPzXYsUYkq47W1swoGPMO_TxDCE(gameStack, city, stapel2DGameContext);
            }
        });
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Tuple(0, translator.translate(877)));
        arrayList.add(new Tuple(1, translator.translate(2977)));
        int[] iArr = {0, 1};
        String[] strArr = {translator.translate(877), translator.translate(2977)};
        InfluenceType[] influenceTypeArr = {InfluenceType.EDUCATION_LOW, InfluenceType.EDUCATION_HIGH};
        for (int i = 0; i < 2; i++) {
            int i2 = iArr[i];
            String str = strArr[i];
            final InfluenceType influenceType = influenceTypeArr[i];
            addCategory(str);
            addClickableItem(new StaticGetter(StringFormatter.format(translator.translate(1234), Integer.valueOf(coverageCalculator.countProvidingBuildings(i2)))), null, null, Resources.ICON_EYE, new Runnable() { // from class: info.flowersoft.theotown.stages.cityinfo.EducationCityInfo$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    EducationCityInfo.m2306$r8$lambda$udhsUgW7Sm4Royye6oJFMhyvw(gameStack, city, influenceType);
                }
            });
            addItem(StringFormatter.format(translator.translate(2294), Integer.valueOf(coverageCalculator.getNeededAmount(i2))));
            addItem(StringFormatter.format(translator.translate(2108), Integer.valueOf(coverageCalculator.getReachedAmount(i2))));
            addItem(StringFormatter.format(translator.translate(1198), Integer.valueOf(coverageCalculator.getProvidedAmount(i2))));
        }
    }

    public static /* synthetic */ void $r8$lambda$pPzXYsUYkq47W1swoGPMO_TxDCE(GameStack gameStack, City city, Stapel2DGameContext stapel2DGameContext) {
        gameStack.pop();
        CityInfoStage cityInfoStage = new CityInfoStage(city, stapel2DGameContext);
        cityInfoStage.selectCityInfo(new StatisticsCityInfo(EducationHighItem.class));
        gameStack.push(cityInfoStage);
    }

    /* JADX INFO: renamed from: $r8$lambda$udhsUgW7Sm-4-Royye6oJFMhyvw, reason: not valid java name */
    public static /* synthetic */ void m2306$r8$lambda$udhsUgW7Sm4Royye6oJFMhyvw(GameStack gameStack, City city, InfluenceType influenceType) {
        gameStack.pop();
        city.applyComponent(new ToolResolver(city).resolve(influenceType));
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public String getTag() {
        return "EducationCityInfo";
    }

    public String toString() {
        return "Education";
    }
}
