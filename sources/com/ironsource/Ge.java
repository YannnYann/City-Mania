package com.ironsource;

import android.content.Context;
import com.ironsource.Ge;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.logger.IronSourceError;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Ge implements Kc {
    public static final Ge a = new Ge();
    private static final Ke b = new Je(null, 1, null);

    public static final class a implements InterfaceC3933xe {
        final /* synthetic */ InterfaceC3933xe a;

        public a(InterfaceC3933xe interfaceC3933xe) {
            this.a = interfaceC3933xe;
        }

        @Override // com.ironsource.InterfaceC3933xe
        public void a(final C3806qe sdkConfig) {
            Intrinsics.checkNotNullParameter(sdkConfig, "sdkConfig");
            Ke ke = Ge.b;
            final InterfaceC3933xe interfaceC3933xe = this.a;
            ke.c(new Runnable() { // from class: com.ironsource.Ge$a$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    Ge.a.a(sdkConfig, interfaceC3933xe);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(C3806qe c3806qe, InterfaceC3933xe interfaceC3933xe) {
            Ge.a.a(c3806qe, interfaceC3933xe);
        }

        @Override // com.ironsource.InterfaceC3933xe
        public void a(final C3841se error) {
            Intrinsics.checkNotNullParameter(error, "error");
            Ke ke = Ge.b;
            final InterfaceC3933xe interfaceC3933xe = this.a;
            ke.b(new Runnable() { // from class: com.ironsource.Ge$a$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    Ge.a.a(interfaceC3933xe, error);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(InterfaceC3933xe interfaceC3933xe, C3841se c3841se) {
            interfaceC3933xe.a(c3841se);
        }
    }

    private Ge() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(Context context, C3969ze c3969ze, InterfaceC3933xe interfaceC3933xe) throws Throwable {
        new C3528ba().a(EnumC3951ye.b);
        a.a(context, c3969ze, interfaceC3933xe, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(Context context, C3969ze c3969ze, InterfaceC3933xe interfaceC3933xe) throws Throwable {
        com.ironsource.mediationsdk.p pVarG = com.ironsource.mediationsdk.p.g();
        String strD = c3969ze.d();
        IronSource.a[] aVarArr = (IronSource.a[]) c3969ze.e().toArray(new IronSource.a[0]);
        List<IronSource.a> listA = pVarG.a(context, strD, false, (IronSource.a[]) Arrays.copyOf(aVarArr, aVarArr.length));
        Intrinsics.checkNotNull(listA);
        c3969ze.a(listA);
        new C3528ba().a(EnumC3951ye.c);
        a.a(context, c3969ze, interfaceC3933xe, true);
    }

    public final void c(final Context context, final C3969ze initRequest, final InterfaceC3933xe listener) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(initRequest, "initRequest");
        Intrinsics.checkNotNullParameter(listener, "listener");
        b.c(new Runnable() { // from class: com.ironsource.Ge$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                Ge.d(context, initRequest, listener);
            }
        });
    }

    @Override // com.ironsource.Kc
    public void onInitFailed(final IronSourceError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        b.c(new Runnable() { // from class: com.ironsource.Ge$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                Ge.a(error);
            }
        });
    }

    public final void a(final Context context, final C3969ze initRequest, final InterfaceC3933xe listener) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(initRequest, "initRequest");
        Intrinsics.checkNotNullParameter(listener, "listener");
        b.c(new Runnable() { // from class: com.ironsource.Ge$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                Ge.b(context, initRequest, listener);
            }
        });
    }

    private final void a(Context context, C3969ze c3969ze, final InterfaceC3933xe interfaceC3933xe, boolean z) throws Throwable {
        String strF = c3969ze.f();
        if (strF != null && strF.length() > 0) {
            com.ironsource.mediationsdk.p.g().j(c3969ze.f());
        } else {
            c3969ze = new C3969ze(c3969ze.d(), com.ironsource.mediationsdk.p.g().i(), CollectionsKt___CollectionsKt.toMutableList((Collection) c3969ze.e()));
        }
        com.ironsource.mediationsdk.p pVarG = com.ironsource.mediationsdk.p.g();
        String strD = c3969ze.d();
        IronSource.a[] aVarArr = (IronSource.a[]) c3969ze.e().toArray(new IronSource.a[0]);
        final IronSourceError ironSourceErrorA = pVarG.a(context, strD, z, this, (IronSource.a[]) Arrays.copyOf(aVarArr, aVarArr.length));
        if (ironSourceErrorA == null || ironSourceErrorA.getErrorCode() == 2020) {
            Fe.m.a().a(context, c3969ze, new a(interfaceC3933xe), !z);
            return;
        }
        if (ironSourceErrorA.getErrorCode() == 2040) {
            final Ue ueD = com.ironsource.mediationsdk.p.g().d();
            if (ueD != null) {
                b.c(new Runnable() { // from class: com.ironsource.Ge$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        Ge.a(ueD, interfaceC3933xe);
                    }
                });
                return;
            }
        } else if (ironSourceErrorA.getErrorCode() == 2030) {
            Fe.m.a().g();
            return;
        }
        b.b(new Runnable() { // from class: com.ironsource.Ge$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                Ge.a(interfaceC3933xe, ironSourceErrorA);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(Ue ue) {
        Fe.m.a().a(new Ae(ue));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Ue ue, InterfaceC3933xe interfaceC3933xe) {
        a.a(new C3806qe(new Ae(ue)), interfaceC3933xe);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(InterfaceC3933xe interfaceC3933xe, IronSourceError ironSourceError) {
        interfaceC3933xe.a(new C3841se(ironSourceError));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @InterfaceC3930xb
    public final void a(final C3806qe c3806qe, final InterfaceC3933xe interfaceC3933xe) {
        if (!com.ironsource.mediationsdk.p.g().a(Fe.m.a().e(), c3806qe.d())) {
            b.b(new Runnable() { // from class: com.ironsource.Ge$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    Ge.a(interfaceC3933xe);
                }
            });
        } else {
            b.b(new Runnable() { // from class: com.ironsource.Ge$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    Ge.a(interfaceC3933xe, c3806qe);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(InterfaceC3933xe interfaceC3933xe) {
        interfaceC3933xe.a(new C3841se(IronSourceError.ERROR_LEGACY_INIT_POST_FAILED, "An unknown error has occurred"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(InterfaceC3933xe interfaceC3933xe, C3806qe c3806qe) {
        interfaceC3933xe.a(c3806qe);
    }

    @Override // com.ironsource.Kc
    public void a(final Ue serverResponse) {
        Intrinsics.checkNotNullParameter(serverResponse, "serverResponse");
        b.c(new Runnable() { // from class: com.ironsource.Ge$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                Ge.b(serverResponse);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(IronSourceError ironSourceError) {
        Fe.m.a().b(new C3841se(ironSourceError));
    }
}
