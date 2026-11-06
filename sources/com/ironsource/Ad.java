package com.ironsource;

import com.ironsource.E0;
import com.ironsource.Kd;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.logger.IronLog;
import com.unity3d.mediation.LevelPlay;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Ad implements Bd {
    private final LevelPlay.AdFormat a;

    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[LevelPlay.AdFormat.values().length];
            try {
                iArr[LevelPlay.AdFormat.INTERSTITIAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LevelPlay.AdFormat.REWARDED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    public Ad(LevelPlay.AdFormat adFormat) {
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        this.a = adFormat;
    }

    @InterfaceC3930xb
    private final C3950yd a(Kd.c cVar, int i, C3468ab c3468ab) {
        String strC = cVar.c();
        if (strC == null) {
            IronLog.INTERNAL.warning("invalid adUnitId");
            return null;
        }
        List<String> listD = cVar.d();
        if (listD == null) {
            IronLog.INTERNAL.warning("invalid instances");
            return null;
        }
        C3609g0 c3609g0 = new C3609g0(com.unity3d.mediation.a.a(this.a), C3962z7.a.a(), strC, null, null, null, 56, null);
        AbstractC3919x0 abstractC3919x0A = a(c3609g0, c3468ab);
        if (abstractC3919x0A == null) {
            IronLog.INTERNAL.warning("adunit data is null");
            return null;
        }
        IronSource.a aVarA = com.unity3d.mediation.a.a(this.a);
        E0.b bVar = E0.b.MEDIATION;
        T0 t0 = new T0(new C3770p0(aVarA, bVar), abstractC3919x0A, bVar);
        t0.f().a(new C0(t0, c3609g0, null, 4, null));
        return new C3950yd(strC, listD, i, new Ed(t0, abstractC3919x0A, null, 4, null), t0);
    }

    private final AbstractC3919x0 a(C3609g0 c3609g0, C3468ab c3468ab) {
        try {
            int i = a.a[this.a.ordinal()];
            if (i == 1) {
                return J9.A.a(c3609g0, c3468ab, false);
            }
            if (i == 2) {
                return C3623ge.A.a(c3609g0, c3468ab, false);
            }
            throw new IllegalArgumentException("Unsupported ad format for preload: " + this.a);
        } catch (Exception e) {
            IronLog.INTERNAL.error("Failed to create AdUnitData for ad format " + this.a + ": " + e.getMessage() + "\n" + ExceptionsKt__ExceptionsKt.stackTraceToString(e));
            return null;
        }
    }

    @Override // com.ironsource.Bd
    public List<InterfaceC3968zd> a(List<Kd.c> config, int i, C3468ab levelPlayConfig) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(levelPlayConfig, "levelPlayConfig");
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = config.iterator();
        while (it.hasNext()) {
            C3950yd c3950ydA = a((Kd.c) it.next(), i, levelPlayConfig);
            if (c3950ydA != null) {
                arrayList.add(c3950ydA);
            }
        }
        return arrayList;
    }
}
