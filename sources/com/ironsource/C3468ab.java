package com.ironsource;

import com.ironsource.C3460a3;
import com.ironsource.C3844t;
import com.ironsource.InterfaceC3961z6;
import com.ironsource.Kd;
import com.ironsource.Za;
import com.unity3d.mediation.LevelPlay;
import com.unity3d.mediation.LevelPlayAdSize;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: renamed from: com.ironsource.ab, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3468ab extends C3806qe {

    /* JADX INFO: renamed from: com.ironsource.ab$a */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[LevelPlay.AdFormat.values().length];
            try {
                iArr[LevelPlay.AdFormat.REWARDED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LevelPlay.AdFormat.INTERSTITIAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LevelPlay.AdFormat.BANNER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[LevelPlay.AdFormat.NATIVE_AD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3468ab(C3806qe sdkConfig) {
        super(sdkConfig);
        Intrinsics.checkNotNullParameter(sdkConfig, "sdkConfig");
    }

    public final boolean a(String adUnitId, LevelPlay.AdFormat adFormat) {
        Map<String, Kd.b> mapA;
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        Kd.a aVar = g().d().a().get(adFormat);
        return (aVar == null || (mapA = aVar.a()) == null || !mapA.containsKey(adUnitId)) ? false : true;
    }

    @InterfaceC3930xb
    public final InterfaceC3961z6.a b(LevelPlay.AdFormat adFormat, String adUnitId) {
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        return new InterfaceC3961z6.a(a(adFormat, adUnitId));
    }

    public final C3729md c(LevelPlay.AdFormat adFormat, String str) {
        C3729md c3729mdA;
        P9 p9A;
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        int i = a.a[adFormat.ordinal()];
        if (i == 1) {
            C3659ie c3659ieF = d().c().f();
            if (c3659ieF == null || (c3729mdA = c3659ieF.a(str)) == null) {
                return null;
            }
            return new C3729md(c3729mdA.b(), c3729mdA.c(), c3729mdA.d(), c3729mdA.f(), c3729mdA.e(), c3729mdA.a());
        }
        if (i == 2) {
            L9 l9D = d().c().d();
            if (l9D == null || (p9A = l9D.a(str)) == null) {
                return null;
            }
            return new C3729md(p9A);
        }
        if (i == 3) {
            C3521b3 c3521b3C = d().c().c();
            if (c3521b3C != null) {
                C3701l3 c3701l3A = c3521b3C.a(str);
                if (c3701l3A == null) {
                    c3701l3A = c3521b3C.i();
                    Intrinsics.checkNotNullExpressionValue(c3701l3A, "getDefaultBannerPlacement(...)");
                }
                return new C3729md(c3701l3A);
            }
            throw new IllegalStateException("Error getting " + adFormat + " configurations");
        }
        if (i != 4) {
            throw new NoWhenBranchMatchedException();
        }
        Wb wbE = d().c().e();
        if (wbE != null && str != null) {
            C3639hc c3639hcA = wbE.a(str);
            if (c3639hcA == null) {
                c3639hcA = wbE.e();
            }
            if (c3639hcA != null) {
                return new C3729md(c3639hcA);
            }
        }
        throw new IllegalStateException("Error getting " + adFormat + " configurations");
    }

    public final List<Ec> d(LevelPlay.AdFormat adFormat) {
        Map<String, Kd.b> mapA;
        Set<String> setKeySet;
        List<Ec> listDistinct;
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        Kd.a aVar = g().d().a().get(adFormat);
        if (aVar != null && (mapA = aVar.a()) != null && (setKeySet = mapA.keySet()) != null) {
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(setKeySet, 10));
            Iterator<T> it = setKeySet.iterator();
            while (it.hasNext()) {
                arrayList.add(d(adFormat, (String) it.next()));
            }
            List listFlatten = CollectionsKt__IterablesKt.flatten(arrayList);
            if (listFlatten != null && (listDistinct = CollectionsKt___CollectionsKt.distinct(listFlatten)) != null) {
                return listDistinct;
            }
        }
        return CollectionsKt__CollectionsKt.emptyList();
    }

    public final String h() {
        return g().a().b().c().a();
    }

    public final Set<String> i() throws JSONException {
        JSONArray jSONArrayE = g().a().b().d().e();
        if (jSONArrayE == null) {
            return null;
        }
        List<String> listB = C3780pa.b(jSONArrayE);
        Intrinsics.checkNotNullExpressionValue(listB, "jsonArrayToStringList(...)");
        return CollectionsKt___CollectionsKt.toSet(listB);
    }

    public final List<LevelPlayAdSize> j() {
        List<String> listA = g().a().c().b().a();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listA, 10));
        Iterator<T> it = listA.iterator();
        while (it.hasNext()) {
            arrayList.add(LevelPlayAdSize.Companion.createAdSize$mediationsdk_release((String) it.next()));
        }
        return arrayList;
    }

    public final float k() {
        return g().a().c().b().b();
    }

    public final boolean l() {
        com.ironsource.mediationsdk.adquality.a aVarA = d().c().a();
        return aVarA != null && aVarA.c();
    }

    public final boolean m() {
        return g().a().b().e();
    }

    public final C3787pd b(C3948yb tools) {
        Intrinsics.checkNotNullParameter(tools, "tools");
        return new C3787pd(tools, g().a().a());
    }

    public final long b(LevelPlay.AdFormat adFormat) {
        C3844t.b bVarB;
        Long lD;
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        C3844t c3844t = g().a().a().get(adFormat);
        long jLongValue = (c3844t == null || (bVarB = c3844t.b()) == null || (lD = bVarB.d()) == null) ? 60L : lD.longValue();
        return jLongValue > 0 ? TimeUnit.MINUTES.toMillis(jLongValue) : jLongValue;
    }

    public final Za.a a(String adUnitId) {
        long jD;
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        C3460a3 c3460a3C = g().a().c();
        C3460a3.a aVar = c3460a3C.a().get(adUnitId);
        int iC = aVar != null ? aVar.c() : c3460a3C.b().c();
        boolean zE = aVar != null ? aVar.e() : c3460a3C.b().e();
        if (aVar != null) {
            jD = aVar.d();
        } else {
            jD = c3460a3C.b().d();
        }
        return new Za.a(zE, iC, jD);
    }

    public final List<String> a(LevelPlay.AdFormat adFormat) {
        Map<String, Kd.b> mapA;
        Set<String> setKeySet;
        List<String> list;
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        Kd.a aVar = g().d().a().get(adFormat);
        return (aVar == null || (mapA = aVar.a()) == null || (setKeySet = mapA.keySet()) == null || (list = CollectionsKt___CollectionsKt.toList(setKeySet)) == null) ? CollectionsKt__CollectionsKt.emptyList() : list;
    }

    public final C3883v0 a(C3948yb tools) {
        Intrinsics.checkNotNullParameter(tools, "tools");
        return new C3883v0(tools, g().a().a());
    }

    private final InterfaceC3961z6.c a(LevelPlay.AdFormat adFormat, String str) {
        C3844t.b bVarB;
        Hd hdG;
        Map<String, C3844t.b> mapA;
        C3844t.b bVar;
        Hd hdG2;
        boolean z = adFormat == LevelPlay.AdFormat.REWARDED;
        C3844t c3844t = g().a().a().get(adFormat);
        InterfaceC3961z6.c cVarA = null;
        InterfaceC3961z6.c cVarA2 = (c3844t == null || (mapA = c3844t.a()) == null || (bVar = mapA.get(str)) == null || (hdG2 = bVar.g()) == null) ? null : hdG2.a();
        if (c3844t != null && (bVarB = c3844t.b()) != null && (hdG = bVarB.g()) != null) {
            cVarA = hdG.a();
        }
        if (cVarA2 == null) {
            cVarA2 = cVarA;
        }
        if (cVarA2 != null) {
            return cVarA2;
        }
        if (z) {
            return InterfaceC3961z6.c.c;
        }
        return InterfaceC3961z6.c.b;
    }

    public final Wd c(C3948yb tools) {
        Intrinsics.checkNotNullParameter(tools, "tools");
        C3844t c3844t = g().a().a().get(LevelPlay.AdFormat.REWARDED);
        return new Wd(tools, c3844t != null ? c3844t.a() : null, c3844t != null ? c3844t.c() : null);
    }

    public final List<Kd.c> c(LevelPlay.AdFormat adFormat) {
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        return g().d().a(adFormat);
    }

    public final List<Ec> d(LevelPlay.AdFormat adFormat, String adUnitId) {
        Map<String, Kd.b> mapA;
        Kd.b bVar;
        List<String> listA;
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Kd.a aVar = g().d().a().get(adFormat);
        if (aVar != null && (mapA = aVar.a()) != null && (bVar = mapA.get(adUnitId)) != null && (listA = bVar.a()) != null) {
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = listA.iterator();
            while (it.hasNext()) {
                Ec ec = g().e().a().get((String) it.next());
                if (ec != null) {
                    arrayList.add(ec);
                }
            }
            return arrayList;
        }
        return CollectionsKt__CollectionsKt.emptyList();
    }
}
