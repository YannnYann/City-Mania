package info.flowersoft.theotown.city.components;

import com.ironsource.InterfaceC3676je;
import com.ironsource.InterfaceC3681k1;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.resources.Resources;
import io.bidmachine.protobuf.EventTypeExtended;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public enum InfluenceType {
    POLLUTION(3055, 2042, Resources.ICON_POLLUTION, "influence pollution", false, 1.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT),
    NOISE(2886, 2905, Resources.ICON_NOISE, "influence noise", false, 1.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT),
    HEALTH(3364, 1704, Resources.ICON_MEDIC, "influence health"),
    POLICE(546, 878, Resources.ICON_POLICE, "influence police"),
    FIREDEPARTMENT(1068, 2601, Resources.ICON_FIREDEPARTMENT, "influence fire department"),
    PARK(392, 1258, Resources.ICON_PARK, "influence park"),
    SPORT(3207, InterfaceC3681k1.a.b.h, Resources.ICON_SPORTS, "influence sport"),
    EDUCATION_LOW(1288, 2437, Resources.ICON_EDUCATION_LOW, "influence education low"),
    EDUCATION_HIGH(3339, 472, Resources.ICON_EDUCATION_HIGH, "influence education high"),
    CULTURE(3447, 3416, Resources.ICON_CULTURE, "influence culture"),
    MANAGEMENT(1630, 1117, Resources.ICON_PUBLIC, "influence management"),
    RELIGION(3468, 350, Resources.ICON_RELIGION, "influence religion"),
    PASSENGER_BUS(390, 3266, Resources.ICON_BUS_TRANSPORT, "influence passenger bus"),
    PASSENGER_TRAIN(IronSourceError.ERROR_NEW_INIT_API_ALREADY_CALLED, 3241, Resources.ICON_PUBLICTRANSPORT, "influence passenger train"),
    RESIDENTIAL(561, 667, Resources.ICON_RESIDENTIAL, "influence residential", true, 0.5f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, false),
    COMMERCIAL(EventTypeExtended.EVENT_TYPE_EXTENDED_AD_UNIT_FINISHED_VALUE, 1546, Resources.ICON_COMMERCIAL, "influence commercial", true, 0.5f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, false),
    INDUSTRIAL(2788, 1596, Resources.ICON_INDUSTRIAL, "influence industrial", true, 0.5f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, false),
    LEVEL_LOW(1321, 3285, Resources.ICON_LEVEL_I, "influence level0", true, 1.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, false),
    LEVEL_MIDDLE(1648, 3035, Resources.ICON_LEVEL_II, "influence level1", true, 1.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, false),
    LEVEL_HIGH(2940, 1680, Resources.ICON_LEVEL_III, "influence level2", true, 1.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, false),
    DENSITY(2199, 1000, Resources.ICON_CITY, "density", true, 0.1f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, false),
    RADIOACTIVITY(3450, 716, Resources.ICON_DISASTER_NUKE, "influence radioactive", false, 1.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT),
    NATURE(2704, InterfaceC3676je.c.g, Resources.ICON_NATURE, "influence nature"),
    WASTE_DISPOSAL(2393, 2052, Resources.ICON_WASTE_DISPOSAL, "influence waste disposal", true, 1.0f, 0.5f),
    BODY_DISPOSAL(1988, 1572, Resources.ICON_BODY_DISPOSAL, "influence body disposal", true, 1.0f, 0.5f),
    TRAFFIC(1629, 3464, Resources.ICON_ROAD, "influence traffic", false, 0.05f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);

    public static InfluenceType[] cachedValues;
    public static Map<String, InfluenceType> tagToType;
    public final float base;
    public final float factor;
    public final int iconId;
    public final boolean isPositive;
    public final int nameId;
    public final String tag;
    public final int textId;
    public final boolean visible;

    InfluenceType(int i, int i2, int i3, String str) {
        this(i, i2, i3, str, 1.0f);
    }

    InfluenceType(int i, int i2, int i3, String str, float f) {
        this(i, i2, i3, str, true, f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
    }

    InfluenceType(int i, int i2, int i3, String str, boolean z, float f, float f2) {
        this(i, i2, i3, str, z, f, f2, i > 0);
    }

    InfluenceType(int i, int i2, int i3, String str, boolean z, float f, float f2, boolean z2) {
        this.nameId = i;
        this.textId = i2;
        this.iconId = i3;
        this.tag = str;
        this.isPositive = z;
        this.factor = f;
        this.base = f2;
        this.visible = z2;
    }

    public int getNameId() {
        return this.nameId;
    }

    public int getTextId() {
        return this.textId;
    }

    public int getIconId() {
        return this.iconId;
    }

    public String getTag() {
        return this.tag;
    }

    public boolean isPositive() {
        return this.isPositive;
    }

    public float getFactor() {
        return this.factor;
    }

    public float getBase() {
        return this.base;
    }

    public boolean isHidden() {
        return !this.visible;
    }

    public static InfluenceType fromTag(String str) {
        if (tagToType == null) {
            tagToType = new HashMap();
            for (InfluenceType influenceType : cachedValues()) {
                tagToType.put(influenceType.getTag(), influenceType);
            }
        }
        return tagToType.get(str);
    }

    public static InfluenceType[] cachedValues() {
        if (cachedValues == null) {
            cachedValues = values();
        }
        return cachedValues;
    }
}
