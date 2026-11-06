package info.flowersoft.theotown.tools.marker;

import com.badlogic.gdx.utils.FloatArray;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.components.InfluenceType;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.components.DefaultInfluence;
import info.flowersoft.theotown.draft.BuildingType;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.util.IntList;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class InfluenceMarker implements BuildToolMarker {
    public final Color buildingColor;
    public final City city;
    public final Color color;
    public final IntList factors;
    public final DefaultInfluence influence;
    public final IntList influences;
    public final List<LegendEntry> legend;
    public final FloatArray maxValues;
    public final FloatArray minValues;
    public final Tiles tiles;

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public int countVariants() {
        return 1;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public boolean markTree(int i, int i2) {
        return false;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public void setVariant(int i) {
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public boolean useOverlay(int i, int i2) {
        return true;
    }

    public InfluenceMarker(City city) {
        this(city, Colors.GREEN);
    }

    public InfluenceMarker(City city, Color color) {
        this.influences = new IntList();
        this.factors = new IntList();
        this.minValues = new FloatArray();
        this.maxValues = new FloatArray();
        this.legend = new ArrayList();
        this.city = city;
        this.tiles = city.getTiles();
        this.influence = (DefaultInfluence) city.getComponent(2);
        this.color = color;
        this.buildingColor = Colors.CYAN;
    }

    public final void updateLegend() {
        this.legend.clear();
        StringBuilder sb = new StringBuilder();
        boolean z = false;
        for (int i = 0; i < this.influences.size(); i++) {
            if (this.factors.get(i) > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                if (sb.length() > 0) {
                    sb.append(", ");
                }
                sb.append(this.city.getTranslator().translate(InfluenceType.cachedValues()[this.influences.get(i)].getNameId()));
                z = true;
            }
        }
        if (z) {
            this.legend.add(new LegendEntry(sb.toString(), this.buildingColor));
        }
        this.legend.add(new LegendEntry(this.city.getTranslator().translate(1179), this.color));
        this.legend.add(new LegendEntry(this.city.getTranslator().translate(2805), Colors.RED));
    }

    public InfluenceMarker(City city, InfluenceType influenceType) {
        this(city, influenceType, Colors.GREEN, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f);
    }

    public InfluenceMarker(City city, InfluenceType influenceType, Color color, float f, float f2) {
        this(city, color);
        addInfluence(influenceType, f, f2);
    }

    public void addInfluence(InfluenceType influenceType) {
        addInfluence(influenceType, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void addInfluence(InfluenceType influenceType, float f, float f2) {
        this.influences.add(influenceType.ordinal());
        this.minValues.add(f);
        this.maxValues.add(f2);
        this.factors.add(influenceType.isPositive() ? 1 : 0);
        updateLegend();
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public Color getColor(int i, int i2, Color color) {
        if (markBuilding(i, i2)) {
            return this.buildingColor;
        }
        return this.color;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public float overlayAlpha(int i, int i2) {
        Building building = this.tiles.getBuilding(i, i2);
        if (this.tiles.getZone(i, i2) != null || (building != null && building.getBuildingType() != BuildingType.DESTROYED)) {
            return 1.0f;
        }
        float fCalculateIntensityFromInfluence = 1.0f;
        for (int i3 = 0; i3 < this.influences.size(); i3++) {
            fCalculateIntensityFromInfluence *= calculateIntensityFromInfluence(this.influence.getInfluence(i, i2, this.influences.get(i3)), i3);
        }
        return !InfluenceType.cachedValues()[this.influences.get(0)].isPositive() ? 1.0f - fCalculateIntensityFromInfluence : fCalculateIntensityFromInfluence;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public float overlayTempAlpha(int i, int i2) {
        if (this.tiles.getZone(i, i2) != null || this.tiles.getBuilding(i, i2) != null) {
            return 1.0f;
        }
        float fCalculateIntensityFromInfluence = 1.0f;
        for (int i3 = 0; i3 < this.influences.size(); i3++) {
            fCalculateIntensityFromInfluence *= calculateIntensityFromInfluence(this.influence.getTempInfluence(i, i2, this.influences.get(i3)), i3);
        }
        return !InfluenceType.cachedValues()[this.influences.get(0)].isPositive() ? 1.0f - fCalculateIntensityFromInfluence : fCalculateIntensityFromInfluence;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public float getIntensity(int i, int i2) {
        float fCalculateIntensityFromInfluence = 1.0f;
        if (this.tiles.getZone(i, i2) != null || this.tiles.getBuilding(i, i2) != null) {
            for (int i3 = 0; i3 < this.influences.size(); i3++) {
                fCalculateIntensityFromInfluence *= calculateIntensityFromInfluence(this.influence.getInfluence(i, i2, this.influences.get(i3)), i3);
            }
            return fCalculateIntensityFromInfluence;
        }
        if (InfluenceType.cachedValues()[this.influences.get(0)].isPositive()) {
            return 1.0f;
        }
        return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public float getTempIntensity(int i, int i2) {
        float fCalculateIntensityFromInfluence = 1.0f;
        if (this.tiles.getZone(i, i2) != null || this.tiles.getBuilding(i, i2) != null) {
            for (int i3 = 0; i3 < this.influences.size(); i3++) {
                fCalculateIntensityFromInfluence *= calculateIntensityFromInfluence(this.influence.getTempInfluence(i, i2, this.influences.get(i3)), i3);
            }
            return fCalculateIntensityFromInfluence;
        }
        if (InfluenceType.cachedValues()[this.influences.get(0)].isPositive()) {
            return 1.0f;
        }
        return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public boolean ignoreBuilding(int i, int i2) {
        Building building = this.tiles.getBuilding(i, i2);
        return building != null && building.getBuildingType() == BuildingType.DESTROYED;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public boolean markBuilding(int i, int i2) {
        int[] influenceInduceVector;
        Building building = this.tiles.getBuilding(i, i2);
        if (building != null && (influenceInduceVector = building.getInfluenceInduceVector()) != null) {
            for (int i3 = 0; i3 < this.influences.size(); i3++) {
                if (influenceInduceVector[this.influences.get(i3)] > 0) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public float getBuildingIntensity(int i, int i2) {
        float f = 1.0f;
        for (int i3 = 0; i3 < this.influences.size(); i3++) {
            f *= this.factors.get(i3);
        }
        return f;
    }

    public final float calculateIntensityFromInfluence(float f, int i) {
        float f2 = this.minValues.get(i);
        float f3 = this.maxValues.get(i);
        float f4 = (f - f2) / (f3 - f2);
        return (this.factors.get(i) * f4) + ((1 - r5) * (1.0f - f4));
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public int getIcon() {
        return InfluenceType.cachedValues()[this.influences.get(0)].getIconId();
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public String getTag() {
        return "InfluenceMarker";
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public List<LegendEntry> getLegend() {
        return this.legend;
    }
}
