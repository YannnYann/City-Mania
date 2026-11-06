package info.flowersoft.theotown.components.management.attribute;

import info.flowersoft.theotown.city.components.InfluenceType;

/* JADX INFO: loaded from: classes4.dex */
public class EducationHighAttribute extends Attribute {
    public EducationHighAttribute() {
        super(false, false, 0);
        setAdjustRatio(0.02f);
    }

    @Override // info.flowersoft.theotown.components.management.attribute.Attribute
    public float evaluateResidential(HappinessContext happinessContext) {
        return happinessContext.influences[InfluenceType.EDUCATION_HIGH.ordinal()] * happinessContext.coverageCalculator.getInRangeCoverage(1);
    }
}
