package io.bidmachine.rendering.model;

import com.ironsource.mediationsdk.metadata.a;
import com.vungle.ads.internal.protos.Sdk;
import io.bidmachine.protobuf.EventTypeExtended;
import io.bidmachine.rendering.measurer.MeasurerFactory;
import io.bidmachine.rendering.model.engagedclick.EngagedClickParams;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class AdElementParams {
    public final AdElementType a;
    public final Resource b;
    public final String c;
    public final String d;
    public final ElementLayoutParams e;
    public final AppearanceParams f;
    public final Map g;
    public final List h;
    public final BrokenCreativeDetectorParams i;
    public final EngagedClickParams j;
    public final List k;
    public final boolean l;
    public final String m;

    public AdElementParams(AdElementType adElementType, String name, Resource resource, String str, String str2, ElementLayoutParams elementLayoutParams, AppearanceParams appearanceParams, Map<String, String> customParams, List<? extends MeasurerFactory> list, BrokenCreativeDetectorParams brokenCreativeDetectorParams, EngagedClickParams engagedClickParams, List<ScriptConfig> list2, boolean z) {
        Intrinsics.checkNotNullParameter(adElementType, "adElementType");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(elementLayoutParams, "elementLayoutParams");
        Intrinsics.checkNotNullParameter(appearanceParams, "appearanceParams");
        Intrinsics.checkNotNullParameter(customParams, "customParams");
        this.a = adElementType;
        this.b = resource;
        this.c = str;
        this.d = str2;
        this.e = elementLayoutParams;
        this.f = appearanceParams;
        this.g = customParams;
        this.h = list;
        this.i = brokenCreativeDetectorParams;
        this.j = engagedClickParams;
        this.k = list2;
        this.l = z;
        Locale ENGLISH = Locale.ENGLISH;
        Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
        String lowerCase = name.toLowerCase(ENGLISH);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        this.m = lowerCase;
    }

    public final AdElementType getAdElementType() {
        return this.a;
    }

    public final AppearanceParams getAppearanceParams() {
        return this.f;
    }

    public final BrokenCreativeDetectorParams getBrokenCreativeDetectorParams() {
        return this.i;
    }

    public final String getCustomParam(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return (String) this.g.get(key);
    }

    public final Map<String, String> getCustomParams() {
        return this.g;
    }

    public final ElementLayoutParams getElementLayoutParams() {
        return this.e;
    }

    public final EngagedClickParams getEngagedClickParams() {
        return this.j;
    }

    public final List<MeasurerFactory> getMeasurerFactoryList() {
        return this.h;
    }

    public final String getName() {
        return this.m;
    }

    public final String getPlaceholder() {
        return this.c;
    }

    public final Resource getResource() {
        return this.b;
    }

    public final List<ScriptConfig> getScriptsConfig() {
        return this.k;
    }

    public final String getText() {
        return this.d;
    }

    public final boolean isPrerender() {
        return this.l;
    }

    public /* synthetic */ AdElementParams(AdElementType adElementType, String str, Resource resource, String str2, String str3, ElementLayoutParams elementLayoutParams, AppearanceParams appearanceParams, Map map, List list, BrokenCreativeDetectorParams brokenCreativeDetectorParams, EngagedClickParams engagedClickParams, List list2, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(adElementType, str, (i & 4) != 0 ? null : resource, (i & 8) != 0 ? null : str2, (i & 16) != 0 ? null : str3, elementLayoutParams, appearanceParams, (i & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) != 0 ? new HashMap() : map, (i & 256) != 0 ? null : list, (i & EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE) != 0 ? null : brokenCreativeDetectorParams, (i & 1024) != 0 ? null : engagedClickParams, (i & a.o) != 0 ? null : list2, (i & 4096) != 0 ? true : z);
    }
}
