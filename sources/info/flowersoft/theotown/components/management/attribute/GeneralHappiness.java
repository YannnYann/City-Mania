package info.flowersoft.theotown.components.management.attribute;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.WeightedAverageCalculator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class GeneralHappiness extends Attribute {
    public final WeightedAverageCalculator averageCalculator;

    public GeneralHappiness() {
        super(false, false, 1738, Resources.ICON_RATING);
        this.averageCalculator = new WeightedAverageCalculator();
        setAdjustRatio(1.0f);
    }

    @Override // info.flowersoft.theotown.components.management.attribute.Attribute
    public float evaluate(HappinessContext happinessContext) {
        Building building = happinessContext.building;
        if (building != null) {
            float[] values = ((ConcreteAttributeContainer) building.getAttributeContainer()).getValues();
            List<Attribute> attributes = AttributeFactory.getAttributes();
            this.averageCalculator.clear();
            int i = 0;
            for (int i2 = 0; i2 < values.length; i2++) {
                Attribute attribute = attributes.get(i2);
                if (values[i2] >= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT && attribute.isHappiness()) {
                    this.averageCalculator.addValue(Math.max(values[i2], UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT));
                    float f = values[i2];
                    i++;
                }
            }
            if (i > 0) {
                return Math.min(this.averageCalculator.getResult(), 1.0f);
            }
        }
        return -1.0f;
    }
}
