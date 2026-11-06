package com.ironsource;

import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.metadata.MetaDataUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class Tb {
    private final com.ironsource.mediationsdk.c a;
    private final C3857ta b;
    private final C3528ba c;
    private final W6 d;
    private final C3813r4 e;

    public Tb() {
        this(null, null, null, null, null, 31, null);
    }

    public final void a(boolean z) {
        a(CollectionsKt__CollectionsJVMKt.listOf(com.ironsource.mediationsdk.metadata.a.a), z);
    }

    public final void b(boolean z) {
        List<String> META_DATA_COPPA_FLAGS = com.ironsource.mediationsdk.metadata.a.g;
        Intrinsics.checkNotNullExpressionValue(META_DATA_COPPA_FLAGS, "META_DATA_COPPA_FLAGS");
        a(META_DATA_COPPA_FLAGS, z);
    }

    public Tb(com.ironsource.mediationsdk.c adapterRepository, C3857ta publisherDataHolder, C3528ba globalDataWriter, W6 googleWaterMarkDataWriter, C3813r4 crashReporter) {
        Intrinsics.checkNotNullParameter(adapterRepository, "adapterRepository");
        Intrinsics.checkNotNullParameter(publisherDataHolder, "publisherDataHolder");
        Intrinsics.checkNotNullParameter(globalDataWriter, "globalDataWriter");
        Intrinsics.checkNotNullParameter(googleWaterMarkDataWriter, "googleWaterMarkDataWriter");
        Intrinsics.checkNotNullParameter(crashReporter, "crashReporter");
        this.a = adapterRepository;
        this.b = publisherDataHolder;
        this.c = globalDataWriter;
        this.d = googleWaterMarkDataWriter;
        this.e = crashReporter;
    }

    private final void a(String str, boolean z) {
        List<String> listListOf = CollectionsKt__CollectionsJVMKt.listOf(String.valueOf(z));
        if (MetaDataUtils.isMediationOnlyKey(str)) {
            this.b.a(str, listListOf);
        } else {
            this.a.c(str, listListOf);
        }
    }

    private final void a() {
        try {
            HashMap map = new HashMap(this.a.e());
            map.putAll(this.b.c());
            JSONObject jSONObject = new JSONObject();
            for (Map.Entry entry : map.entrySet()) {
                jSONObject.put((String) entry.getKey(), (List) entry.getValue());
            }
            this.d.a(jSONObject);
            this.c.a(jSONObject);
        } catch (JSONException e) {
            this.e.a(e);
            IronLog.INTERNAL.error("got the following error " + e.getMessage());
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ Tb(com.ironsource.mediationsdk.c cVar, C3857ta c3857ta, C3528ba c3528ba, W6 w6, C3813r4 c3813r4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        cVar = (i & 1) != 0 ? com.ironsource.mediationsdk.c.c() : cVar;
        c3857ta = (i & 2) != 0 ? C3857ta.b() : c3857ta;
        c3528ba = (i & 4) != 0 ? new C3528ba() : c3528ba;
        this(cVar, c3857ta, c3528ba, (i & 8) != 0 ? new W6(c3528ba) : w6, (i & 16) != 0 ? C3813r4.d() : c3813r4);
    }

    private final void a(List<String> list, boolean z) {
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            a((String) it.next(), z);
        }
        a();
    }
}
