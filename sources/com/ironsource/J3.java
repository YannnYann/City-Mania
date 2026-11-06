package com.ironsource;

import android.content.Context;
import com.ironsource.InterfaceC3851t4;
import com.ironsource.InterfaceC3854t7;
import com.ironsource.environment.ContextProvider;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class J3 implements InterfaceC3854t7, InterfaceC3854t7.a {
    private final C3586ed a;
    private final C3916wf b;

    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[N3.values().length];
            try {
                iArr[N3.a.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[N3.b.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[N3.c.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public J3() {
        this(null, null, null, 7, null);
    }

    @Override // com.ironsource.InterfaceC3854t7
    public synchronized L3 a(String identifier) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        L3 l3A = this.a.a(identifier);
        if (l3A.d()) {
            return l3A;
        }
        return this.b.a(identifier);
    }

    @Override // com.ironsource.InterfaceC3854t7.a
    public synchronized void b(String identifier) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        this.a.b(identifier);
        this.b.b(identifier);
    }

    public J3(InterfaceC3851t4 currentTimeProvider, N7 pacingDataRepository, U8 showCountDataRepository) {
        Intrinsics.checkNotNullParameter(currentTimeProvider, "currentTimeProvider");
        Intrinsics.checkNotNullParameter(pacingDataRepository, "pacingDataRepository");
        Intrinsics.checkNotNullParameter(showCountDataRepository, "showCountDataRepository");
        this.a = new C3586ed(currentTimeProvider, pacingDataRepository);
        this.b = new C3916wf(currentTimeProvider, showCountDataRepository);
    }

    @Override // com.ironsource.InterfaceC3854t7.a
    public synchronized Object a(String identifier, N3 cappingType, InterfaceC3816r7 cappingConfig) {
        Object objA;
        try {
            Intrinsics.checkNotNullParameter(identifier, "identifier");
            Intrinsics.checkNotNullParameter(cappingType, "cappingType");
            Intrinsics.checkNotNullParameter(cappingConfig, "cappingConfig");
            int i = a.a[cappingType.ordinal()];
            if (i == 1) {
                objA = this.a.a(identifier, cappingType, cappingConfig);
            } else if (i == 2) {
                objA = this.b.a(identifier, cappingType, cappingConfig);
            } else if (i == 3) {
                Result.Companion companion = Result.Companion;
                objA = Result.m2760constructorimpl(Unit.INSTANCE);
            } else {
                throw new NoWhenBranchMatchedException();
            }
        } catch (Throwable th) {
            throw th;
        }
        return objA;
    }

    public /* synthetic */ J3(InterfaceC3851t4 interfaceC3851t4, N7 n7, U8 u8, int i, DefaultConstructorMarker defaultConstructorMarker) {
        interfaceC3851t4 = (i & 1) != 0 ? new InterfaceC3851t4.a() : interfaceC3851t4;
        if ((i & 2) != 0) {
            Context applicationContext = ContextProvider.getInstance().getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
            n7 = new C3604fd(new C3807qf(applicationContext, "pacing_service", null, 4, null));
        }
        if ((i & 4) != 0) {
            Context applicationContext2 = ContextProvider.getInstance().getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext2, "getApplicationContext(...)");
            u8 = new C3880uf(new C3807qf(applicationContext2, "capping_service", null, 4, null));
        }
        this(interfaceC3851t4, n7, u8);
    }
}
