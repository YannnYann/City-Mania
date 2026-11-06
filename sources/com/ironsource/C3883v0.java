package com.ironsource;

import com.ironsource.C3844t;
import com.ironsource.InterfaceC3854t7;
import com.unity3d.mediation.LevelPlay;
import java.util.Iterator;
import java.util.Map;
import kotlin.Result;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;

/* JADX INFO: renamed from: com.ironsource.v0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3883v0 implements K3 {
    private final C3948yb a;
    private final Map<LevelPlay.AdFormat, C3844t> b;

    public C3883v0(C3948yb tools, Map<LevelPlay.AdFormat, C3844t> adFormatsConfigurations) {
        Intrinsics.checkNotNullParameter(tools, "tools");
        Intrinsics.checkNotNullParameter(adFormatsConfigurations, "adFormatsConfigurations");
        this.a = tools;
        this.b = adFormatsConfigurations;
    }

    private final void b(InterfaceC3854t7.a aVar, String str, C3844t.b bVar) throws JSONException {
        C3640hd c3640hdE = bVar.e();
        if (c3640hdE != null) {
            N3 n3 = N3.a;
            a(aVar.a(str, n3, new E3(c3640hdE.a(), c3640hdE.b(), c3640hdE.c())), str, n3);
        }
    }

    @Override // com.ironsource.K3
    public void a(InterfaceC3854t7.a cappingService) {
        Intrinsics.checkNotNullParameter(cappingService, "cappingService");
        Iterator<Map.Entry<LevelPlay.AdFormat, C3844t>> it = this.b.entrySet().iterator();
        while (it.hasNext()) {
            for (Map.Entry<String, C3844t.b> entry : it.next().getValue().a().entrySet()) {
                String key = entry.getKey();
                C3844t.b value = entry.getValue();
                a(cappingService, key, value);
                b(cappingService, key, value);
            }
        }
    }

    private final void a(InterfaceC3854t7.a aVar, String str, C3844t.b bVar) throws JSONException {
        H3 h3B = bVar.b();
        if (h3B != null) {
            N3 n3 = N3.b;
            a(aVar.a(str, n3, new E3(h3B.a(), h3B.b(), h3B.c())), str, n3);
        }
    }

    private final void a(Object obj, String str, N3 n3) throws JSONException {
        Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(obj);
        if (thM2763exceptionOrNullimpl != null) {
            this.a.a(str, new I3().a(n3), thM2763exceptionOrNullimpl.getMessage());
        }
    }
}
