package io.bidmachine.util.file;

import android.os.Environment;
import android.os.StatFs;
import io.bidmachine.util.SdkDispatchers;
import java.io.File;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: compiled from: StorageSpaceMonitor.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class StorageSpaceMonitor {
    public final double availableStorageSpaceThreshold;
    public final long interval;
    public final Set<Listener> listeners;
    public final Lazy scope$delegate;
    public final StorageSpaceStatExtractor storageSpaceStatExtractor;

    /* JADX INFO: compiled from: StorageSpaceMonitor.kt */
    public interface Listener {
        default void onLowSpace(StorageSpaceStat storageSpaceStat) {
            Intrinsics.checkNotNullParameter(storageSpaceStat, "storageSpaceStat");
        }
    }

    /* JADX INFO: compiled from: StorageSpaceMonitor.kt */
    public interface StorageSpaceStatExtractor {
        StorageSpaceStat getStorageSpaceStat();
    }

    public /* synthetic */ StorageSpaceMonitor(double d, SdkDispatchers sdkDispatchers, long j, StorageSpaceStatExtractor storageSpaceStatExtractor, DefaultConstructorMarker defaultConstructorMarker) {
        this(d, sdkDispatchers, j, storageSpaceStatExtractor);
    }

    public StorageSpaceMonitor(double d, final SdkDispatchers sdkDispatchers, long j, StorageSpaceStatExtractor storageSpaceStatExtractor) {
        this.interval = j;
        this.storageSpaceStatExtractor = storageSpaceStatExtractor;
        this.listeners = new CopyOnWriteArraySet();
        this.scope$delegate = LazyKt__LazyJVMKt.lazy(new Function0<CoroutineScope>() { // from class: io.bidmachine.util.file.StorageSpaceMonitor$scope$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final CoroutineScope invoke() {
                return CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob$default(null, 1, null).plus(sdkDispatchers.getIo()));
            }
        });
        this.availableStorageSpaceThreshold = RangesKt___RangesKt.coerceIn(d, 0.0d, 1.0d);
    }

    public /* synthetic */ StorageSpaceMonitor(double d, SdkDispatchers sdkDispatchers, long j, StorageSpaceStatExtractor storageSpaceStatExtractor, int i, DefaultConstructorMarker defaultConstructorMarker) {
        double d2 = (i & 1) != 0 ? 0.1d : d;
        SdkDispatchers sdkDispatchers2 = (i & 2) != 0 ? SdkDispatchers.Companion.getDefault() : sdkDispatchers;
        if ((i & 4) != 0) {
            Duration.Companion companion = Duration.Companion;
            j = DurationKt.toDuration(10, DurationUnit.SECONDS);
        }
        long j2 = j;
        if ((i & 8) != 0) {
            File dataDirectory = Environment.getDataDirectory();
            Intrinsics.checkNotNullExpressionValue(dataDirectory, "getDataDirectory()");
            storageSpaceStatExtractor = new StorageSpaceStatExtractorImpl(dataDirectory);
        }
        this(d2, sdkDispatchers2, j2, storageSpaceStatExtractor, null);
    }

    public final CoroutineScope getScope() {
        return (CoroutineScope) this.scope$delegate.getValue();
    }

    public final void addListener(Listener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listeners.add(listener);
    }

    /* JADX INFO: renamed from: io.bidmachine.util.file.StorageSpaceMonitor$start$1, reason: invalid class name */
    /* JADX INFO: compiled from: StorageSpaceMonitor.kt */
    @DebugMetadata(c = "io.bidmachine.util.file.StorageSpaceMonitor$start$1", f = "StorageSpaceMonitor.kt", l = {47}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        public /* synthetic */ Object L$0;
        public int label;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = StorageSpaceMonitor.this.new AnonymousClass1(continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineScope coroutineScope;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                coroutineScope = (CoroutineScope) this.L$0;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                coroutineScope = (CoroutineScope) this.L$0;
                ResultKt.throwOnFailure(obj);
            }
            while (CoroutineScopeKt.isActive(coroutineScope)) {
                StorageSpaceMonitor storageSpaceMonitor = StorageSpaceMonitor.this;
                try {
                    Result.Companion companion = Result.Companion;
                    storageSpaceMonitor.checkAndNotify();
                    Result.m2760constructorimpl(Unit.INSTANCE);
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.Companion;
                    Result.m2760constructorimpl(ResultKt.createFailure(th));
                }
                long j = StorageSpaceMonitor.this.interval;
                this.L$0 = coroutineScope;
                this.label = 1;
                if (DelayKt.m2937delayVtjQ1oo(j, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            return Unit.INSTANCE;
        }
    }

    public final void start() {
        stop();
        BuildersKt__Builders_commonKt.launch$default(getScope(), null, null, new AnonymousClass1(null), 3, null);
    }

    public final void stop() {
        JobKt__JobKt.cancelChildren$default(getScope().getCoroutineContext(), null, 1, null);
    }

    public final StorageSpaceStat getStorageSpaceStat() {
        return this.storageSpaceStatExtractor.getStorageSpaceStat();
    }

    public final void checkAndNotify() {
        StorageSpaceStat storageSpaceStat = this.storageSpaceStatExtractor.getStorageSpaceStat();
        if (storageSpaceStat != null && storageSpaceStat.getAvailableStorageSpaceInPercent() < this.availableStorageSpaceThreshold) {
            Iterator<T> it = this.listeners.iterator();
            while (it.hasNext()) {
                ((Listener) it.next()).onLowSpace(storageSpaceStat);
            }
        }
    }

    /* JADX INFO: compiled from: StorageSpaceMonitor.kt */
    public static final class StorageSpaceStatExtractorImpl implements StorageSpaceStatExtractor {
        public final File targetDir;

        public StorageSpaceStatExtractorImpl(File targetDir) {
            Intrinsics.checkNotNullParameter(targetDir, "targetDir");
            this.targetDir = targetDir;
        }

        @Override // io.bidmachine.util.file.StorageSpaceMonitor.StorageSpaceStatExtractor
        public StorageSpaceStat getStorageSpaceStat() {
            try {
                StatFs statFs = new StatFs(this.targetDir.getAbsolutePath());
                return new StorageSpaceStat(statFs.getTotalBytes(), statFs.getAvailableBytes());
            } catch (Throwable unused) {
                return null;
            }
        }
    }

    /* JADX INFO: compiled from: StorageSpaceMonitor.kt */
    public static final class StorageSpaceStat {
        public final long availableBytes;
        public final double availableStorageSpaceInPercent;
        public final long totalBytes;
        public final double usedStorageSpaceInPercent;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof StorageSpaceStat)) {
                return false;
            }
            StorageSpaceStat storageSpaceStat = (StorageSpaceStat) obj;
            return this.totalBytes == storageSpaceStat.totalBytes && this.availableBytes == storageSpaceStat.availableBytes;
        }

        public int hashCode() {
            return (Long.hashCode(this.totalBytes) * 31) + Long.hashCode(this.availableBytes);
        }

        public String toString() {
            return "StorageSpaceStat(totalBytes=" + this.totalBytes + ", availableBytes=" + this.availableBytes + ')';
        }

        public StorageSpaceStat(long j, long j2) {
            this.totalBytes = j;
            this.availableBytes = j2;
            double d = j == 0 ? 0.0d : j2 / j;
            this.availableStorageSpaceInPercent = d;
            this.usedStorageSpaceInPercent = ((double) 1) - d;
        }

        public final double getAvailableStorageSpaceInPercent() {
            return this.availableStorageSpaceInPercent;
        }

        public final double getUsedStorageSpaceInPercent() {
            return this.usedStorageSpaceInPercent;
        }
    }
}
