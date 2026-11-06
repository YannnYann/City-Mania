package com.ironsource;

import com.ironsource.mediationsdk.logger.IronLog;
import com.unity3d.mediation.LevelPlay;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Cd implements Dd {
    private final LevelPlay.AdFormat a;
    private final Bd b;
    private final D7 c;
    private a d;
    private List<InterfaceC3968zd> e;
    private final int f;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class a {
        public static final a a = new a("None", 0);
        public static final a b = new a("Idle", 1);
        public static final a c = new a("Loading", 2);
        private static final /* synthetic */ a[] d;
        private static final /* synthetic */ EnumEntries e;

        static {
            a[] aVarArrA = a();
            d = aVarArrA;
            e = EnumEntriesKt.enumEntries(aVarArrA);
        }

        private a(String str, int i) {
        }

        private static final /* synthetic */ a[] a() {
            return new a[]{a, b, c};
        }

        public static EnumEntries<a> b() {
            return e;
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) d.clone();
        }
    }

    public /* synthetic */ class b {
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

    public Cd(LevelPlay.AdFormat adFormat, Bd adUnitsFactory, D7 epService) {
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        Intrinsics.checkNotNullParameter(adUnitsFactory, "adUnitsFactory");
        Intrinsics.checkNotNullParameter(epService, "epService");
        this.a = adFormat;
        this.b = adUnitsFactory;
        this.c = epService;
        this.d = a.a;
        this.e = new ArrayList();
        this.f = b();
    }

    private final int b() {
        int i = b.a[this.a.ordinal()];
        if (i == 1) {
            return this.c.j();
        }
        if (i != 2) {
            return 0;
        }
        return this.c.A();
    }

    private final int c() {
        int i = b.a[this.a.ordinal()];
        if (i == 1) {
            return this.c.M();
        }
        if (i != 2) {
            return 0;
        }
        return this.c.C();
    }

    private final void d() {
        final InterfaceC3968zd interfaceC3968zdE = e();
        if (interfaceC3968zdE == null) {
            this.d = a.b;
        } else {
            this.d = a.c;
            interfaceC3968zdE.a(new Function1() { // from class: com.ironsource.Cd$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Cd.a(interfaceC3968zdE, this, ((Boolean) obj).booleanValue());
                }
            });
        }
    }

    private final InterfaceC3968zd e() {
        Object next;
        if (!a()) {
            IronLog.INTERNAL.verbose(this.a + " - reached capacity");
            return null;
        }
        Iterator<T> it = this.e.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (((InterfaceC3968zd) next).a()) {
                break;
            }
        }
        InterfaceC3968zd interfaceC3968zd = (InterfaceC3968zd) next;
        if (interfaceC3968zd != null) {
            return interfaceC3968zd;
        }
        IronLog.INTERNAL.verbose(this.a + " - preload done");
        return null;
    }

    @Override // com.ironsource.Dd
    public void a(C3468ab config) {
        Intrinsics.checkNotNullParameter(config, "config");
        if (!this.c.z()) {
            IronLog.INTERNAL.warning(this.a + " - preload is disabled");
            return;
        }
        if (this.d != a.a) {
            IronLog.INTERNAL.warning(this.a + " - initializing service again");
            return;
        }
        int iC = c();
        if (iC >= 1) {
            IronLog.INTERNAL.verbose(String.valueOf(this.a));
            this.d = a.b;
            this.e = CollectionsKt___CollectionsKt.toMutableList((Collection) this.b.a(config.c(this.a), iC, config));
            d();
            return;
        }
        IronLog.INTERNAL.warning(this.a + " - invalid maxParallelLoad: " + iC);
    }

    private final InterfaceC3968zd b(String str) {
        Object next;
        Iterator<T> it = this.e.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (Intrinsics.areEqual(((InterfaceC3968zd) next).b(), str)) {
                break;
            }
        }
        return (InterfaceC3968zd) next;
    }

    public /* synthetic */ Cd(LevelPlay.AdFormat adFormat, Bd bd, D7 d7, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(adFormat, (i & 2) != 0 ? new Ad(adFormat) : bd, (i & 4) != 0 ? Pb.w.d().h() : d7);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit a(InterfaceC3968zd interfaceC3968zd, Cd cd, boolean z) {
        if (!z) {
            IronLog.INTERNAL.verbose("adunit \"" + interfaceC3968zd.b() + "\" failed to load, removing");
            cd.e.remove(interfaceC3968zd);
        }
        cd.d();
        return Unit.INSTANCE;
    }

    private final boolean a() {
        int i;
        List<InterfaceC3968zd> list = this.e;
        if ((list instanceof Collection) && list.isEmpty()) {
            i = 0;
        } else {
            Iterator<T> it = list.iterator();
            i = 0;
            while (it.hasNext()) {
                if (!((InterfaceC3968zd) it.next()).a() && (i = i + 1) < 0) {
                    CollectionsKt__CollectionsKt.throwCountOverflow();
                }
            }
        }
        return i < this.f;
    }

    @Override // com.ironsource.Dd
    public C3722m6 a(String adUnitId) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        IronLog.INTERNAL.verbose(this.a + " - adunit: \"" + adUnitId + "\"");
        InterfaceC3968zd interfaceC3968zdB = b(adUnitId);
        if (interfaceC3968zdB != null) {
            return interfaceC3968zdB.c();
        }
        return null;
    }

    @Override // com.ironsource.Dd
    public void a(String adUnitId, boolean z) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(this.a + " - adunit: \"" + adUnitId + "\", didUseInstance: " + z);
        InterfaceC3968zd interfaceC3968zdB = b(adUnitId);
        if (interfaceC3968zdB == null) {
            ironLog.warning("adunit is null at \"" + adUnitId + "\"");
            return;
        }
        interfaceC3968zdB.a(z);
        if (z && this.d == a.b) {
            d();
        }
    }
}
