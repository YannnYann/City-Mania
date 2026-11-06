package info.flowersoft.theotown.drawing;

import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.utils.IntMap;
import com.badlogic.gdx.utils.LongMap;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.transportationsystem.TSStation;
import info.flowersoft.theotown.components.transportationsystem.TSSystem;
import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.util.IntList;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$IntRef;

/* JADX INFO: compiled from: TSMapSystemDrawer.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class TSMapSystemDrawer {
    public final City city;
    public final LongMap<PathSegment> pathSegments;
    public final List<TSSystem.TSRoute> routes;
    public final Rectangle stationBounds;
    public final IntMap<List<TSSystem.TSRoute>> stationRoutes;
    public TSMapStyle style;
    public final TSSystem system;
    public final Color tempColor;

    public TSMapSystemDrawer(City city, TSSystem system, TSMapStyle style) {
        Intrinsics.checkNotNullParameter(city, "city");
        Intrinsics.checkNotNullParameter(system, "system");
        Intrinsics.checkNotNullParameter(style, "style");
        this.city = city;
        this.system = system;
        this.style = style;
        this.tempColor = new Color();
        List<TSSystem.TSRoute> routes = system.queryRoutes();
        this.routes = routes;
        Rectangle rectangle = new Rectangle();
        final Ref$IntRef ref$IntRef = new Ref$IntRef();
        ref$IntRef.element = city.getWidth();
        final Ref$IntRef ref$IntRef2 = new Ref$IntRef();
        ref$IntRef2.element = city.getHeight();
        final Ref$IntRef ref$IntRef3 = new Ref$IntRef();
        final Ref$IntRef ref$IntRef4 = new Ref$IntRef();
        Intrinsics.checkNotNullExpressionValue(routes, "routes");
        Iterator<T> it = routes.iterator();
        while (it.hasNext()) {
            ((TSSystem.TSRoute) it.next()).stationIds.forEach(new IntList.IntConsumer() { // from class: info.flowersoft.theotown.drawing.TSMapSystemDrawer$$ExternalSyntheticLambda0
                @Override // io.blueflower.stapel2d.util.IntList.IntConsumer
                public final void accept(int i) {
                    TSMapSystemDrawer.stationBounds$lambda$0$0$0(this.f$0, ref$IntRef, ref$IntRef2, ref$IntRef3, ref$IntRef4, i);
                }
            });
        }
        float f = ref$IntRef.element;
        int height = this.city.getHeight() - 1;
        int i = ref$IntRef4.element;
        rectangle.set(f, height - i, (ref$IntRef3.element - ref$IntRef.element) + 1, (i - ref$IntRef2.element) + 1);
        rectangle.x -= 4.0f;
        rectangle.y -= 4.0f;
        rectangle.width += 8.0f;
        rectangle.height += 8.0f;
        this.stationBounds = rectangle;
        this.pathSegments = new LongMap<>();
        this.stationRoutes = new IntMap<>();
        List<TSStation> stations = this.system.getStations();
        Intrinsics.checkNotNullExpressionValue(stations, "getStations(...)");
        Iterator<T> it2 = stations.iterator();
        while (it2.hasNext()) {
            this.stationRoutes.put(((TSStation) it2.next()).getId(), new ArrayList());
        }
        List<TSSystem.TSRoute> routes2 = this.routes;
        Intrinsics.checkNotNullExpressionValue(routes2, "routes");
        for (TSSystem.TSRoute tSRoute : routes2) {
            int size = tSRoute.stationIds.size();
            int i2 = 0;
            while (i2 < size) {
                int i3 = i2 + 1;
                if (i3 >= tSRoute.stationIds.size() && tSRoute.mode != TSSystem.TSRouteMode.LOOP) {
                    break;
                }
                int i4 = tSRoute.stationIds.get(i2);
                IntList intList = tSRoute.stationIds;
                int i5 = intList.get(i3 % intList.size());
                TSStation stationById = this.system.getStationById(i4);
                TSStation stationById2 = this.system.getStationById(i5);
                long pathSegmentKey = getPathSegmentKey(i4, i5);
                PathSegment pathSegment = this.pathSegments.get(pathSegmentKey);
                if (pathSegment == null) {
                    Intrinsics.checkNotNull(stationById);
                    Intrinsics.checkNotNull(stationById2);
                    pathSegment = new PathSegment(stationById, stationById2);
                    this.pathSegments.put(pathSegmentKey, pathSegment);
                }
                Intrinsics.checkNotNull(tSRoute);
                Intrinsics.checkNotNull(stationById);
                Intrinsics.checkNotNull(stationById2);
                pathSegment.addRoute(tSRoute, stationById, stationById2);
                i2 = i3;
            }
            int size2 = tSRoute.stationIds.size();
            for (int i6 = 0; i6 < size2; i6++) {
                List<TSSystem.TSRoute> list = this.stationRoutes.get(tSRoute.stationIds.get(i6));
                if (list != null) {
                    Intrinsics.checkNotNull(tSRoute);
                    list.add(tSRoute);
                }
            }
        }
    }

    public final void setStyle(TSMapStyle tSMapStyle) {
        Intrinsics.checkNotNullParameter(tSMapStyle, "<set-?>");
        this.style = tSMapStyle;
    }

    public final List<TSSystem.TSRoute> getRoutes() {
        return this.routes;
    }

    public final Color getStyledColor(TSSystem.TSRoute tSRoute) {
        Intrinsics.checkNotNullParameter(tSRoute, "<this>");
        this.tempColor.setTo(tSRoute.color);
        this.tempColor.lerp(this.style.getRouteTintColor(), this.style.getRouteTintFactor());
        return this.tempColor;
    }

    public final Rectangle getStationBounds() {
        return this.stationBounds;
    }

    public static final void stationBounds$lambda$0$0$0(TSMapSystemDrawer tSMapSystemDrawer, Ref$IntRef ref$IntRef, Ref$IntRef ref$IntRef2, Ref$IntRef ref$IntRef3, Ref$IntRef ref$IntRef4, int i) {
        TSStation stationById = tSMapSystemDrawer.system.getStationById(i);
        ref$IntRef.element = Math.min(ref$IntRef.element, stationById.getTiles().getMinX());
        ref$IntRef2.element = Math.min(ref$IntRef2.element, stationById.getTiles().getMinY());
        ref$IntRef3.element = Math.max(ref$IntRef3.element, stationById.getTiles().getMaxX());
        ref$IntRef4.element = Math.max(ref$IntRef4.element, stationById.getTiles().getMaxY());
    }

    public final long getPathSegmentKey(int i, int i2) {
        return ((long) Math.max(i, i2)) | (((long) Math.min(i, i2)) << 32);
    }

    public final int getTileX(TSStation tSStation) {
        Intrinsics.checkNotNullParameter(tSStation, "<this>");
        if (tSStation.isCity()) {
            return MathUtils.clamp(tSStation.getCityX(), -4, this.city.getWidth() + 3);
        }
        return tSStation.getTiles().getMeanX();
    }

    public final int getTileY(TSStation tSStation) {
        Intrinsics.checkNotNullParameter(tSStation, "<this>");
        if (tSStation.isCity()) {
            return MathUtils.clamp(tSStation.getCityY(), -4, this.city.getHeight() + 3);
        }
        return tSStation.getTiles().getMeanY();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void draw(Engine engine, float f, float f2, float f3, float f4) {
        float f5;
        TSMapSystemDrawer tSMapSystemDrawer = this;
        Engine engine2 = engine;
        Intrinsics.checkNotNullParameter(engine2, "engine");
        LongMap.Entries<PathSegment> entries = tSMapSystemDrawer.pathSegments.entries();
        Intrinsics.checkNotNullExpressionValue(entries, "entries(...)");
        Iterator<LongMap.Entry<V>> it = entries.iterator();
        while (true) {
            f5 = 0.2f;
            int i = 0;
            if (!it.hasNext()) {
                break;
            }
            PathSegment pathSegment = (PathSegment) ((LongMap.Entry) it.next()).value;
            TSStation start = pathSegment.getStart();
            TSStation end = pathSegment.getEnd();
            float tileX = ((tSMapSystemDrawer.getTileX(start) + 0.5f) * f) + f3;
            float height = ((((tSMapSystemDrawer.city.getHeight() - 1.0f) - tSMapSystemDrawer.getTileY(start)) + 0.5f) * f2) + f4;
            float tileX2 = ((tSMapSystemDrawer.getTileX(end) + 0.5f) * f) + f3;
            float height2 = ((((tSMapSystemDrawer.city.getHeight() - 1.0f) - tSMapSystemDrawer.getTileY(end)) + 0.5f) * f2) + f4;
            for (Object obj : pathSegment.getRoutes()) {
                int i2 = i + 1;
                if (i < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                engine2.setColorAndTransparency(tSMapSystemDrawer.getStyledColor((TSSystem.TSRoute) obj));
                float f6 = tileX;
                float f7 = tileX2;
                float f8 = height2;
                float f9 = height;
                tSMapSystemDrawer.drawCurve(f6, f9, f7, f8, 0.3f * f * (i - ((pathSegment.getRoutes().size() - 1) * 0.5f)), Math.max(f * 0.2f, 1.0f), engine2);
                tileX = f6;
                tileX2 = f7;
                height2 = f8;
                i = i2;
                height = f9;
            }
        }
        IntMap.Entries<List<TSSystem.TSRoute>> entries2 = tSMapSystemDrawer.stationRoutes.entries();
        Intrinsics.checkNotNullExpressionValue(entries2, "entries(...)");
        Iterator<IntMap.Entry<V>> it2 = entries2.iterator();
        while (it2.hasNext()) {
            IntMap.Entry entry = (IntMap.Entry) it2.next();
            int i3 = entry.key;
            List list = (List) entry.value;
            TSStation stationById = tSMapSystemDrawer.system.getStationById(i3);
            Intrinsics.checkNotNull(stationById);
            float tileX3 = (tSMapSystemDrawer.getTileX(stationById) * f) + f3 + (f * 0.5f);
            float f10 = f2 * 0.5f;
            float height3 = (((tSMapSystemDrawer.city.getHeight() - 1.0f) - tSMapSystemDrawer.getTileY(stationById)) * f2) + f4 + f10;
            if (list.isEmpty()) {
                engine2.setColorAndTransparency(tSMapSystemDrawer.style.getStationInactiveColor());
            } else {
                engine2.setColorAndTransparency(tSMapSystemDrawer.style.getStationColor());
            }
            engine2.setScale(f / 5.0f, f2 / 5.0f);
            float f11 = f5;
            TSMapSystemDrawer tSMapSystemDrawer2 = tSMapSystemDrawer;
            Engine engine3 = engine;
            engine3.drawText(Resources.skin.fontSmall, stationById.getNameOrUnnamed(), tileX3, height3 + f10, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
            engine3.setScale(1.0f, 1.0f);
            float fMax = Math.max((list.size() * f) + (f * f11), f * 1.2f);
            engine3.drawImage(Resources.IMAGE_WORLD, tileX3 - (fMax * 0.5f), height3 - (0.6f * f2), fMax, 1.2f * f2, Resources.FRAME_RECT);
            Intrinsics.checkNotNull(list);
            int i4 = 0;
            for (Object obj2 : list) {
                int i5 = i4 + 1;
                if (i4 < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                engine3.setColor(tSMapSystemDrawer2.getStyledColor((TSSystem.TSRoute) obj2));
                engine3.drawImage(Resources.IMAGE_WORLD, ((i4 - (list.size() * 0.5f)) * f) + tileX3, height3 - f10, f, f2, Resources.FRAME_RECT);
                engine3 = engine;
                i4 = i5;
            }
            engine2 = engine;
            tSMapSystemDrawer = tSMapSystemDrawer2;
            f5 = f11;
        }
    }

    public final void drawCurve(float f, float f2, float f3, float f4, float f5, float f6, Engine engine) {
        float f7;
        float f8;
        float f9;
        float f10;
        float f11;
        if (f3 < f) {
            f9 = f;
            f7 = f3;
            f8 = f4;
            f10 = -f5;
            f11 = f2;
        } else {
            f7 = f;
            f8 = f2;
            f9 = f3;
            f10 = f5;
            f11 = f4;
        }
        float f12 = f9 - f7;
        float f13 = f11 - f8;
        if (Math.abs(f12) > Math.abs(f13)) {
            float fSignum = f10 * Math.signum(f12);
            float fSqrt = ((float) Math.sqrt(2.0f)) * fSignum;
            float f14 = f8 + fSignum;
            Drawing.getInstance().drawLine(f7, f14, f9 - (Math.signum(f12) * Math.abs(f13)), f14, f6, engine);
            Drawing.getInstance().drawLine(f9 - (Math.signum(f12) * Math.abs(f13)), f8 + fSqrt, f9, f11 + fSqrt, f6, engine);
            return;
        }
        float f15 = f8;
        float fSignum2 = f10 * Math.signum(f13);
        float fSqrt2 = ((float) Math.sqrt(2.0f)) * fSignum2;
        float f16 = f9 + fSignum2;
        Drawing.getInstance().drawLine(f16, f15 + (Math.signum(f13) * Math.abs(f12)), f16, f11, f6, engine);
        Drawing.getInstance().drawLine(f7 + fSqrt2, f15, f9 + fSqrt2, f15 + (Math.signum(f13) * Math.abs(f12)), f6, engine);
    }

    /* JADX INFO: compiled from: TSMapSystemDrawer.kt */
    public static final class PathSegment {
        public final TSStation end;
        public final List<TSSystem.TSRoute> routes;
        public final TSStation start;

        public PathSegment(TSStation start, TSStation end) {
            Intrinsics.checkNotNullParameter(start, "start");
            Intrinsics.checkNotNullParameter(end, "end");
            this.start = start;
            this.end = end;
            this.routes = new ArrayList();
        }

        public final TSStation getStart() {
            return this.start;
        }

        public final TSStation getEnd() {
            return this.end;
        }

        public final List<TSSystem.TSRoute> getRoutes() {
            return this.routes;
        }

        public final void addRoute(TSSystem.TSRoute route, TSStation start, TSStation end) {
            Intrinsics.checkNotNullParameter(route, "route");
            Intrinsics.checkNotNullParameter(start, "start");
            Intrinsics.checkNotNullParameter(end, "end");
            this.routes.add(route);
        }
    }
}
