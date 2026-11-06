package com.ironsource;

import com.ironsource.O7;
import com.unity3d.mediation.LevelPlay;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.od, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3765od implements O7, O7.a {
    private final J3 a;
    private final R4 b;

    /* JADX INFO: renamed from: com.ironsource.od$a */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[N3.values().length];
            try {
                iArr[N3.c.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[N3.a.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[N3.b.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C3765od() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    @Override // com.ironsource.O7
    public synchronized L3 a(String placementName, LevelPlay.AdFormat adFormat) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        String strA = new C3860td(placementName, adFormat).a();
        L3 l3A = this.b.a(strA);
        if (l3A.d()) {
            return l3A;
        }
        return this.a.a(strA);
    }

    @Override // com.ironsource.O7.a
    public synchronized void b(String placementName, LevelPlay.AdFormat adFormat) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        String strA = new C3860td(placementName, adFormat).a();
        if (!this.b.a(strA).d()) {
            this.a.b(strA);
        }
    }

    public C3765od(J3 cappingService, R4 deliveryHandler) {
        Intrinsics.checkNotNullParameter(cappingService, "cappingService");
        Intrinsics.checkNotNullParameter(deliveryHandler, "deliveryHandler");
        this.a = cappingService;
        this.b = deliveryHandler;
    }

    public /* synthetic */ C3765od(J3 j3, R4 r4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new J3(null, null, null, 7, null) : j3, (i & 2) != 0 ? new R4() : r4);
    }

    @Override // com.ironsource.O7.a
    public synchronized Object a(String placementName, LevelPlay.AdFormat adFormat, N3 cappingType, InterfaceC3816r7 cappingConfig) {
        Object objA;
        try {
            Intrinsics.checkNotNullParameter(placementName, "placementName");
            Intrinsics.checkNotNullParameter(adFormat, "adFormat");
            Intrinsics.checkNotNullParameter(cappingType, "cappingType");
            Intrinsics.checkNotNullParameter(cappingConfig, "cappingConfig");
            String strA = new C3860td(placementName, adFormat).a();
            int i = a.a[cappingType.ordinal()];
            if (i != 1) {
                if (i != 2 && i != 3) {
                    throw new NoWhenBranchMatchedException();
                }
                objA = this.a.a(strA, cappingType, cappingConfig);
            } else {
                objA = this.b.a(strA, cappingType, cappingConfig);
            }
        } catch (Throwable th) {
            throw th;
        }
        return objA;
    }
}
