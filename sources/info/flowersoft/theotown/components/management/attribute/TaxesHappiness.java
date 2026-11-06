package info.flowersoft.theotown.components.management.attribute;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.GameMode;
import info.flowersoft.theotown.components.DefaultBudget;
import info.flowersoft.theotown.resources.Resources;

/* JADX INFO: loaded from: classes4.dex */
public class TaxesHappiness extends Attribute {
    public int happinessIndex;

    public TaxesHappiness() {
        super(true, true, 3031, Resources.ICON_MONEY);
        this.happinessIndex = AttributeFactory.getIndex((Class<? extends Attribute>) GeneralHappiness.class);
        setAdjustRatio(1.0f);
    }

    @Override // info.flowersoft.theotown.components.management.attribute.Attribute
    public float evaluate(HappinessContext happinessContext) {
        if (happinessContext.building == null) {
            return -1.0f;
        }
        float taxes = ((DefaultBudget) happinessContext.city.getComponent(0)).getTaxes(happinessContext.zone, happinessContext.level);
        int i = 8;
        switch (AnonymousClass1.$SwitchMap$info$flowersoft$theotown$city$GameMode[happinessContext.city.getGameMode().ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                i = 10;
                break;
            case 5:
                i = 9;
                break;
        }
        return Math.max(Math.min(0.5f - (((float) Math.atan((taxes - i) * 0.5f)) * 0.38f), 1.0f), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.components.management.attribute.TaxesHappiness$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$info$flowersoft$theotown$city$GameMode;

        static {
            int[] iArr = new int[GameMode.values().length];
            $SwitchMap$info$flowersoft$theotown$city$GameMode = iArr;
            try {
                iArr[GameMode.SANDBOX.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$city$GameMode[GameMode.NOLOGIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$city$GameMode[GameMode.FREE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$city$GameMode[GameMode.EASY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$city$GameMode[GameMode.MIDDLE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$city$GameMode[GameMode.HARD.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }
}
