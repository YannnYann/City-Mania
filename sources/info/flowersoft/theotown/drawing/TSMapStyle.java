package info.flowersoft.theotown.drawing;

import com.ironsource.mediationsdk.metadata.a;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import io.bidmachine.protobuf.EventTypeExtended;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TSMapStyle.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class TSMapStyle {
    public static final Companion Companion = new Companion(null);
    public static final TSMapStyle DARK;
    public static final TSMapStyle LIGHT;
    public final Color backgroundColor;
    public final Color gridColor;
    public final Color landmarkTintColor;
    public final Color mapColor;
    public final Color mapTintColor;
    public final Color neighborColor;
    public final Color neighborInactiveColor;
    public final Color neighborNameColor;
    public final Color routeTintColor;
    public float routeTintFactor;
    public final Color stationColor;
    public final Color stationInactiveColor;
    public final Color waterColor;

    public TSMapStyle(Color backgroundColor, Color mapColor, Color mapTintColor, Color waterColor, Color neighborColor, Color neighborInactiveColor, Color neighborNameColor, Color routeTintColor, float f, Color stationColor, Color stationInactiveColor, Color landmarkTintColor, Color gridColor) {
        Intrinsics.checkNotNullParameter(backgroundColor, "backgroundColor");
        Intrinsics.checkNotNullParameter(mapColor, "mapColor");
        Intrinsics.checkNotNullParameter(mapTintColor, "mapTintColor");
        Intrinsics.checkNotNullParameter(waterColor, "waterColor");
        Intrinsics.checkNotNullParameter(neighborColor, "neighborColor");
        Intrinsics.checkNotNullParameter(neighborInactiveColor, "neighborInactiveColor");
        Intrinsics.checkNotNullParameter(neighborNameColor, "neighborNameColor");
        Intrinsics.checkNotNullParameter(routeTintColor, "routeTintColor");
        Intrinsics.checkNotNullParameter(stationColor, "stationColor");
        Intrinsics.checkNotNullParameter(stationInactiveColor, "stationInactiveColor");
        Intrinsics.checkNotNullParameter(landmarkTintColor, "landmarkTintColor");
        Intrinsics.checkNotNullParameter(gridColor, "gridColor");
        this.backgroundColor = backgroundColor;
        this.mapColor = mapColor;
        this.mapTintColor = mapTintColor;
        this.waterColor = waterColor;
        this.neighborColor = neighborColor;
        this.neighborInactiveColor = neighborInactiveColor;
        this.neighborNameColor = neighborNameColor;
        this.routeTintColor = routeTintColor;
        this.routeTintFactor = f;
        this.stationColor = stationColor;
        this.stationInactiveColor = stationInactiveColor;
        this.landmarkTintColor = landmarkTintColor;
        this.gridColor = gridColor;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ TSMapStyle(Color color, Color color2, Color color3, Color color4, Color color5, Color color6, Color color7, Color color8, float f, Color color9, Color color10, Color color11, Color color12, int i, DefaultConstructorMarker defaultConstructorMarker) {
        Color colorCopy;
        Color color13 = (i & 1) != 0 ? new Color(60, 60, 60) : color;
        Color color14 = (i & 2) != 0 ? new Color(255, 255, 255) : color2;
        Color color15 = (i & 4) != 0 ? new Color(255, 255, 255, 30) : color3;
        if ((i & 8) != 0) {
            colorCopy = Colors.MARINE_BLUE.copy();
            colorCopy.setAlpha(80);
            Intrinsics.checkNotNullExpressionValue(colorCopy, "apply(...)");
        } else {
            colorCopy = color4;
        }
        this(color13, color14, color15, colorCopy, (i & 16) != 0 ? new Color(255, 255, 255) : color5, (i & 32) != 0 ? new Color(255, 255, 255, 100) : color6, (i & 64) != 0 ? new Color(255, 255, 255) : color7, (i & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) != 0 ? new Color(0, 0, 0) : color8, (i & 256) != 0 ? 0.2f : f, (i & EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE) != 0 ? new Color(0, 0, 0) : color9, (i & 1024) != 0 ? new Color(0, 0, 0, 30) : color10, (i & a.o) != 0 ? new Color(255, 255, 255, 80) : color11, (i & 4096) != 0 ? new Color(0, 0, 0, 10) : color12);
    }

    public final Color getBackgroundColor() {
        return this.backgroundColor;
    }

    public final Color getMapColor() {
        return this.mapColor;
    }

    public final Color getMapTintColor() {
        return this.mapTintColor;
    }

    public final Color getWaterColor() {
        return this.waterColor;
    }

    public final Color getNeighborColor() {
        return this.neighborColor;
    }

    public final Color getNeighborInactiveColor() {
        return this.neighborInactiveColor;
    }

    public final Color getNeighborNameColor() {
        return this.neighborNameColor;
    }

    public final Color getRouteTintColor() {
        return this.routeTintColor;
    }

    public final float getRouteTintFactor() {
        return this.routeTintFactor;
    }

    public final Color getStationColor() {
        return this.stationColor;
    }

    public final Color getStationInactiveColor() {
        return this.stationInactiveColor;
    }

    public final Color getLandmarkTintColor() {
        return this.landmarkTintColor;
    }

    public final Color getGridColor() {
        return this.gridColor;
    }

    /* JADX INFO: compiled from: TSMapStyle.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        public final TSMapStyle getLIGHT() {
            return TSMapStyle.LIGHT;
        }

        public final TSMapStyle getDARK() {
            return TSMapStyle.DARK;
        }
    }

    static {
        Color color = null;
        Color color2 = null;
        Color color3 = null;
        Color color4 = null;
        Color color5 = null;
        LIGHT = new TSMapStyle(null, null, null, color, null, color2, color3, color4, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, null, null, null, color5, 8191, null);
        Color color6 = new Color(0, 0, 0);
        Color color7 = new Color(18, 18, 18);
        Color colorCopy = Colors.MARINE_BLUE.copy();
        colorCopy.setAlpha(40);
        Unit unit = Unit.INSTANCE;
        Intrinsics.checkNotNullExpressionValue(colorCopy, "apply(...)");
        DARK = new TSMapStyle(color6, color7, color, colorCopy, color2, color3, color4, new Color(255, 255, 255), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, new Color(255, 255, 255), new Color(255, 255, 255, 20), color5, new Color(255, 255, 255, 8), 2420, null);
    }
}
