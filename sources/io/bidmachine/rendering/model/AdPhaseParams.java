package io.bidmachine.rendering.model;

import io.bidmachine.util.UtilsKt;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class AdPhaseParams {
    public final int a;
    public final Background b;
    public final List c;
    public final List d;
    public final List e;
    public final Map f;
    public final Map g;
    public final List h;

    public static final class Builder {
        public final int a;
        public final List b = new ArrayList();
        public final List c = new ArrayList();
        public final List d = new ArrayList();
        public final Map e = new HashMap();
        public final Map f = new HashMap();
        public final List g = new ArrayList();
        public Background h;

        public /* synthetic */ class a extends FunctionReferenceImpl implements Function2 {
            public static final a a = new a();

            public a() {
                super(2, EventParams.class, "mergeWith", "mergeWith(Lio/bidmachine/rendering/model/EventParams;)Lio/bidmachine/rendering/model/EventParams;", 0);
            }

            @Override // kotlin.jvm.functions.Function2
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final EventParams invoke(EventParams p0, EventParams p1) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                Intrinsics.checkNotNullParameter(p1, "p1");
                return p0.mergeWith(p1);
            }
        }

        public Builder(int i) {
            this.a = i;
        }

        public final Builder addAdsElementParams(AdElementParams adElementParams) {
            Intrinsics.checkNotNullParameter(adElementParams, "adElementParams");
            this.b.add(adElementParams);
            return this;
        }

        public final Builder addControlsElementParams(AdElementParams adElementParams) {
            Intrinsics.checkNotNullParameter(adElementParams, "adElementParams");
            this.c.add(adElementParams);
            return this;
        }

        public final Builder addEventParams(EventParams eventParams) {
            Intrinsics.checkNotNullParameter(eventParams, "eventParams");
            if (eventParams.isEmpty()) {
                return this;
            }
            String source = eventParams.getSource();
            Map enumMap = (Map) this.e.get(source);
            if (enumMap == null) {
                enumMap = new EnumMap(EventType.class);
                this.e.put(source, enumMap);
            }
            UtilsKt.mergeOrRemove(enumMap, eventParams.getEventType(), eventParams, a.a);
            return this;
        }

        public final Builder addMethodParams(MethodParams methodParams) {
            Intrinsics.checkNotNullParameter(methodParams, "methodParams");
            this.d.add(methodParams);
            return this;
        }

        public final AdPhaseParams build() {
            return new AdPhaseParams(this.a, this.h, this.b, this.c, this.d, this.e, this.f, this.g);
        }

        public final Builder setBackground(Background background) {
            this.h = background;
            return this;
        }

        public final Builder setCustomParams(Map<String, String> map) {
            UtilsKt.setSafely(this.f, map);
            return this;
        }

        public final Builder setStateGroups(List<String> list) {
            UtilsKt.setSafely(this.g, list);
            return this;
        }
    }

    public AdPhaseParams(int i, Background background, List<AdElementParams> adsList, List<AdElementParams> controlsList, List<MethodParams> methodParamsList, Map<String, ? extends Map<EventType, EventParams>> sourceEventTypeMap, Map<String, String> customParams, List<String> stateGroups) {
        Intrinsics.checkNotNullParameter(adsList, "adsList");
        Intrinsics.checkNotNullParameter(controlsList, "controlsList");
        Intrinsics.checkNotNullParameter(methodParamsList, "methodParamsList");
        Intrinsics.checkNotNullParameter(sourceEventTypeMap, "sourceEventTypeMap");
        Intrinsics.checkNotNullParameter(customParams, "customParams");
        Intrinsics.checkNotNullParameter(stateGroups, "stateGroups");
        this.a = i;
        this.b = background;
        this.c = adsList;
        this.d = controlsList;
        this.e = methodParamsList;
        this.f = sourceEventTypeMap;
        this.g = customParams;
        this.h = stateGroups;
    }

    public final List<AdElementParams> getAdsList() {
        return this.c;
    }

    public final Background getBackground() {
        return this.b;
    }

    public final List<AdElementParams> getControlsList() {
        return this.d;
    }

    public final Map<EventType, EventParams> getEventTypeMap(String sourceName) {
        Intrinsics.checkNotNullParameter(sourceName, "sourceName");
        return (Map) this.f.get(sourceName);
    }

    public final List<MethodParams> getMethodParamsList() {
        return this.e;
    }

    public final int getSequence() {
        return this.a;
    }

    public final List<String> getStateGroups() {
        return this.h;
    }
}
