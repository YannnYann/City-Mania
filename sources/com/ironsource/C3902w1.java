package com.ironsource;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ProcessLifecycleOwner;
import com.ironsource.C3902w1;
import com.ironsource.environment.thread.IronSourceThreadManager;
import com.ironsource.mediationsdk.logger.IronLog;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.w1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3902w1 implements X1 {

    /* JADX INFO: renamed from: com.ironsource.w1$a */
    public static final class a implements LifecycleEventObserver {
        private final InterfaceC3802qa a;

        /* JADX INFO: renamed from: com.ironsource.w1$a$a, reason: collision with other inner class name */
        public /* synthetic */ class C1062a {
            public static final /* synthetic */ int[] a;

            static {
                int[] iArr = new int[Lifecycle.Event.values().length];
                try {
                    iArr[Lifecycle.Event.ON_START.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[Lifecycle.Event.ON_RESUME.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[Lifecycle.Event.ON_PAUSE.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[Lifecycle.Event.ON_STOP.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                a = iArr;
            }
        }

        public a(InterfaceC3802qa listener) {
            Intrinsics.checkNotNullParameter(listener, "listener");
            this.a = listener;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(Lifecycle.Event event, a aVar) {
            int i = C1062a.a[event.ordinal()];
            if (i == 1) {
                aVar.a.b();
                return;
            }
            if (i == 2) {
                aVar.a.c();
            } else if (i == 3) {
                aVar.a.d();
            } else {
                if (i != 4) {
                    return;
                }
                aVar.a.a();
            }
        }

        public boolean equals(Object obj) {
            InterfaceC3802qa interfaceC3802qa = this.a;
            a aVar = obj instanceof a ? (a) obj : null;
            return Intrinsics.areEqual(interfaceC3802qa, aVar != null ? aVar.a : null);
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        @Override // androidx.lifecycle.LifecycleEventObserver
        public void onStateChanged(LifecycleOwner source, final Lifecycle.Event event) {
            Intrinsics.checkNotNullParameter(source, "source");
            Intrinsics.checkNotNullParameter(event, "event");
            IronSourceThreadManager.postMediationBackgroundTask$default(IronSourceThreadManager.INSTANCE, new Runnable() { // from class: com.ironsource.w1$a$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    C3902w1.a.a(event, this);
                }
            }, 0L, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(InterfaceC3802qa interfaceC3802qa) {
        ProcessLifecycleOwner.Companion.get().getLifecycle().addObserver(new a(interfaceC3802qa));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(InterfaceC3802qa interfaceC3802qa) {
        ProcessLifecycleOwner.Companion.get().getLifecycle().removeObserver(new a(interfaceC3802qa));
    }

    @Override // com.ironsource.X1
    public void a(final InterfaceC3802qa observer) {
        Intrinsics.checkNotNullParameter(observer, "observer");
        IronLog.INTERNAL.verbose("Adding lifecycle event observer");
        IronSourceThreadManager.postOnUiThreadTask$default(IronSourceThreadManager.INSTANCE, new Runnable() { // from class: com.ironsource.w1$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3902w1.c(observer);
            }
        }, 0L, 2, null);
    }

    @Override // com.ironsource.X1
    public void b(final InterfaceC3802qa observer) {
        Intrinsics.checkNotNullParameter(observer, "observer");
        IronLog.INTERNAL.verbose("Removing lifecycle event observer");
        IronSourceThreadManager.postOnUiThreadTask$default(IronSourceThreadManager.INSTANCE, new Runnable() { // from class: com.ironsource.w1$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                C3902w1.d(observer);
            }
        }, 0L, 2, null);
    }
}
