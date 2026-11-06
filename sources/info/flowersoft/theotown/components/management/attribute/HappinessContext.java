package info.flowersoft.theotown.components.management.attribute;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.BuildingSurvey;
import info.flowersoft.theotown.city.components.InfluenceType;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.components.coverage.CoverageCalculator;
import info.flowersoft.theotown.draft.ZoneDraft;

/* JADX INFO: loaded from: classes4.dex */
public class HappinessContext {
    public ConcreteAttributeContainer attributeContainer;
    public Building building;
    public City city;
    public CoverageCalculator coverageCalculator;
    public float density;
    public float[] generalInfluences;
    public float[] influences;
    public int level;
    public int people;
    public BuildingSurvey survey;
    public ZoneDraft zone;

    public HappinessContext() {
        this.influences = new float[InfluenceType.cachedValues().length];
        this.generalInfluences = new float[InfluenceType.cachedValues().length];
    }

    public HappinessContext(ZoneDraft zoneDraft, int i, float[] fArr, float[] fArr2, BuildingSurvey buildingSurvey, CoverageCalculator coverageCalculator, City city) {
        this.zone = zoneDraft;
        this.level = i;
        this.influences = fArr;
        this.generalInfluences = fArr2;
        this.survey = buildingSurvey;
        this.coverageCalculator = coverageCalculator;
        this.city = city;
    }

    public void setBuilding(Building building) {
        this.building = building;
        this.attributeContainer = (ConcreteAttributeContainer) building.getAttributeContainer();
    }

    public void setFrom(HappinessContext happinessContext) {
        this.zone = happinessContext.zone;
        this.level = happinessContext.level;
        for (int i = 0; i < InfluenceType.cachedValues().length; i++) {
            this.influences[i] = happinessContext.influences[i];
            this.generalInfluences[i] = happinessContext.generalInfluences[i];
        }
        this.survey = happinessContext.survey;
        Building building = happinessContext.building;
        if (building != null) {
            this.building = building;
            this.attributeContainer = (ConcreteAttributeContainer) building.getAttributeContainer();
        }
        this.density = happinessContext.density;
    }
}
