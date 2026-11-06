package com.ironsource;

import com.ironsource.C3844t;
import com.ironsource.O7;
import com.unity3d.mediation.LevelPlay;
import java.util.Map;
import kotlin.Result;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;

/* JADX INFO: renamed from: com.ironsource.pd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3787pd {
    private final C3948yb a;
    private final Map<LevelPlay.AdFormat, C3844t> b;

    public C3787pd(C3948yb tools, Map<LevelPlay.AdFormat, C3844t> adFormatsConfigurations) {
        Intrinsics.checkNotNullParameter(tools, "tools");
        Intrinsics.checkNotNullParameter(adFormatsConfigurations, "adFormatsConfigurations");
        this.a = tools;
        this.b = adFormatsConfigurations;
    }

    private final void b(O7.a aVar, String str, LevelPlay.AdFormat adFormat, C3844t.b bVar) throws JSONException {
        N3 n3 = N3.c;
        Q4 q4C = bVar.c();
        a(aVar.a(str, adFormat, n3, new E3(q4C != null ? Boolean.valueOf(q4C.a()) : null, null, null, 6, null)), str, adFormat, n3);
    }

    private final void c(O7.a aVar, String str, LevelPlay.AdFormat adFormat, C3844t.b bVar) throws JSONException {
        C3640hd c3640hdE = bVar.e();
        if (c3640hdE != null) {
            N3 n3 = N3.a;
            a(aVar.a(str, adFormat, n3, new E3(c3640hdE.a(), c3640hdE.b(), M3.f)), str, adFormat, n3);
        }
    }

    public final void a(O7.a cappingService) {
        Intrinsics.checkNotNullParameter(cappingService, "cappingService");
        for (Map.Entry<LevelPlay.AdFormat, C3844t> entry : this.b.entrySet()) {
            LevelPlay.AdFormat key = entry.getKey();
            for (Map.Entry<String, C3844t.b> entry2 : entry.getValue().c().entrySet()) {
                String key2 = entry2.getKey();
                C3844t.b value = entry2.getValue();
                b(cappingService, key2, key, value);
                a(cappingService, key2, key, value);
                c(cappingService, key2, key, value);
            }
        }
    }

    private final void a(O7.a aVar, String str, LevelPlay.AdFormat adFormat, C3844t.b bVar) throws JSONException {
        H3 h3B = bVar.b();
        if (h3B != null) {
            N3 n3 = N3.b;
            a(aVar.a(str, adFormat, n3, new E3(h3B.a(), h3B.b(), h3B.c())), str, adFormat, n3);
        }
    }

    private final void a(Object obj, String str, LevelPlay.AdFormat adFormat, N3 n3) throws JSONException {
        Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(obj);
        if (thM2763exceptionOrNullimpl != null) {
            this.a.a(str, adFormat, new I3().a(n3), thM2763exceptionOrNullimpl.getMessage());
        }
    }
}
