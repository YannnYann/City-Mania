package io.bidmachine.rendering.model;

import io.bidmachine.rendering.internal.k;
import io.bidmachine.util.UtilsKt;
import io.bidmachine.util.viewabilitytracker.model.ViewabilityTrackerParams;
import io.bidmachine.util.visibilitytracking.VisibilityParams;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class AdParams {
    public final CacheType a;
    public final Queue b;
    public final ViewabilityTrackerParams c;
    public final VisibilityParams d;
    public final AdPhaseParams e;
    public final Orientation f;
    public final Background g;
    public final WatermarkParams h;
    public final Map i;

    public static final class Builder {
        public final ViewabilityTrackerParams a;
        public final Queue b;
        public final Map c;
        public CacheType d;
        public AdPhaseParams e;
        public VisibilityParams f;
        public Orientation g;
        public Background h;
        public WatermarkParams i;

        public Builder(ViewabilityTrackerParams viewabilityTrackerParams) {
            Intrinsics.checkNotNullParameter(viewabilityTrackerParams, "viewabilityTrackerParams");
            this.a = viewabilityTrackerParams;
            this.b = new LinkedList();
            this.c = new HashMap();
        }

        public final Builder addAdPhaseParams(AdPhaseParams adPhaseParams) {
            Intrinsics.checkNotNullParameter(adPhaseParams, "adPhaseParams");
            this.b.add(adPhaseParams);
            return this;
        }

        public final AdParams build() {
            Background background = this.h;
            CacheType cacheTypeB = this.d;
            if (cacheTypeB == null) {
                cacheTypeB = k.a.b();
            }
            CacheType cacheType = cacheTypeB;
            Queue queue = this.b;
            ViewabilityTrackerParams viewabilityTrackerParams = this.a;
            VisibilityParams visibilityParams = this.f;
            if (visibilityParams == null) {
                visibilityParams = VisibilityParams.Companion.getDefault();
            }
            return new AdParams(cacheType, queue, viewabilityTrackerParams, visibilityParams, this.e, this.g, background, this.i, this.c);
        }

        public final Builder setBackground(Background background) {
            this.h = background;
            return this;
        }

        public final Builder setCacheType(CacheType cacheType) {
            Intrinsics.checkNotNullParameter(cacheType, "cacheType");
            this.d = cacheType;
            return this;
        }

        public final Builder setCustomParams(Map<String, String> map) {
            UtilsKt.setSafely(this.c, map);
            return this;
        }

        public final Builder setOrientation(Orientation orientation) {
            this.g = orientation;
            return this;
        }

        public final Builder setPlaceholderParams(AdPhaseParams adPhaseParams) {
            this.e = adPhaseParams;
            return this;
        }

        public final Builder setVisibilityParams(VisibilityParams visibilityParams) {
            this.f = visibilityParams;
            return this;
        }

        public final Builder setWatermarkParams(WatermarkParams watermarkParams) {
            this.i = watermarkParams;
            return this;
        }
    }

    public AdParams(CacheType cacheType, Queue<AdPhaseParams> adPhaseParamsQueue, ViewabilityTrackerParams viewabilityTrackerParams, VisibilityParams visibilityParams, AdPhaseParams adPhaseParams, Orientation orientation, Background background, WatermarkParams watermarkParams, Map<String, String> customParams) {
        Intrinsics.checkNotNullParameter(cacheType, "cacheType");
        Intrinsics.checkNotNullParameter(adPhaseParamsQueue, "adPhaseParamsQueue");
        Intrinsics.checkNotNullParameter(viewabilityTrackerParams, "viewabilityTrackerParams");
        Intrinsics.checkNotNullParameter(visibilityParams, "visibilityParams");
        Intrinsics.checkNotNullParameter(customParams, "customParams");
        this.a = cacheType;
        this.b = adPhaseParamsQueue;
        this.c = viewabilityTrackerParams;
        this.d = visibilityParams;
        this.e = adPhaseParams;
        this.f = orientation;
        this.g = background;
        this.h = watermarkParams;
        this.i = customParams;
    }

    public final Queue<AdPhaseParams> getAdPhaseParamsQueue() {
        return this.b;
    }

    public final Background getBackground() {
        return this.g;
    }

    public final CacheType getCacheType() {
        return this.a;
    }

    public final Orientation getOrientation() {
        return this.f;
    }

    public final AdPhaseParams getPlaceholderParams() {
        return this.e;
    }

    public final ViewabilityTrackerParams getViewabilityTrackerParams() {
        return this.c;
    }

    public final VisibilityParams getVisibilityParams() {
        return this.d;
    }

    public final WatermarkParams getWatermarkParams() {
        return this.h;
    }
}
