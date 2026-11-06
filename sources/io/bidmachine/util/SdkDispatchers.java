package io.bidmachine.util;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: SdkDispatchers.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class SdkDispatchers {
    public static final Companion Companion = new Companion(null);

    /* JADX INFO: renamed from: default, reason: not valid java name */
    public static final SdkDispatchers f3914default = new SdkDispatchers(new Function0<CoroutineDispatcher>() { // from class: io.bidmachine.util.SdkDispatchers$Companion$default$1
        @Override // kotlin.jvm.functions.Function0
        public final CoroutineDispatcher invoke() {
            return Dispatchers.getMain();
        }
    }, new Function0<CoroutineDispatcher>() { // from class: io.bidmachine.util.SdkDispatchers$Companion$default$2
        @Override // kotlin.jvm.functions.Function0
        public final CoroutineDispatcher invoke() {
            return Dispatchers.getIO();
        }
    }, new Function0<CoroutineDispatcher>() { // from class: io.bidmachine.util.SdkDispatchers$Companion$default$3
        @Override // kotlin.jvm.functions.Function0
        public final CoroutineDispatcher invoke() {
            return Dispatchers.getDefault();
        }
    });
    public final Lazy default$delegate;
    public final Function0<CoroutineDispatcher> defaultProvider;
    public final Lazy io$delegate;
    public final Function0<CoroutineDispatcher> ioProvider;
    public final Lazy main$delegate;
    public final Function0<CoroutineDispatcher> mainProvider;

    /* JADX WARN: Multi-variable type inference failed */
    public SdkDispatchers(Function0<? extends CoroutineDispatcher> mainProvider, Function0<? extends CoroutineDispatcher> ioProvider, Function0<? extends CoroutineDispatcher> defaultProvider) {
        Intrinsics.checkNotNullParameter(mainProvider, "mainProvider");
        Intrinsics.checkNotNullParameter(ioProvider, "ioProvider");
        Intrinsics.checkNotNullParameter(defaultProvider, "defaultProvider");
        this.mainProvider = mainProvider;
        this.ioProvider = ioProvider;
        this.defaultProvider = defaultProvider;
        this.main$delegate = LazyKt__LazyJVMKt.lazy(new Function0<CoroutineDispatcher>() { // from class: io.bidmachine.util.SdkDispatchers$main$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final CoroutineDispatcher invoke() {
                return (CoroutineDispatcher) this.this$0.mainProvider.invoke();
            }
        });
        this.io$delegate = LazyKt__LazyJVMKt.lazy(new Function0<CoroutineDispatcher>() { // from class: io.bidmachine.util.SdkDispatchers$io$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final CoroutineDispatcher invoke() {
                return (CoroutineDispatcher) this.this$0.ioProvider.invoke();
            }
        });
        this.default$delegate = LazyKt__LazyJVMKt.lazy(new Function0<CoroutineDispatcher>() { // from class: io.bidmachine.util.SdkDispatchers$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final CoroutineDispatcher invoke() {
                return (CoroutineDispatcher) this.this$0.defaultProvider.invoke();
            }
        });
    }

    public final CoroutineDispatcher getMain() {
        return (CoroutineDispatcher) this.main$delegate.getValue();
    }

    public final CoroutineDispatcher getIo() {
        return (CoroutineDispatcher) this.io$delegate.getValue();
    }

    /* JADX INFO: compiled from: SdkDispatchers.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        public final SdkDispatchers getDefault() {
            return SdkDispatchers.f3914default;
        }
    }
}
