package io.bidmachine.internal;

import android.content.Context;
import io.bidmachine.BidMachineSharedPreferenceKt;
import io.bidmachine.SessionManagerKtWrapper;
import io.bidmachine.core.Logger;
import io.bidmachine.util.version.Version;
import io.bidmachine.utils.lazy.LazyValue;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes5.dex */
public final class Q {
    public static final b b = new b(null);
    public final Function0 a;

    public static final class a extends Lambda implements Function0 {
        public static final a a = new a();

        public a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Version invoke() {
            Version version = Version.Companion.parseVersion("3.8.0");
            if (version != null) {
                return version;
            }
            Logger.e("Unexpected version parsing error: 3.8.0");
            return new Version(0, 0, 0);
        }
    }

    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public b() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Q() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public static final String b(S s) {
        return "New session, milestone updated:\n" + s;
    }

    public final S a(Context context, SessionManagerKtWrapper sessionManagerKtWrapper) {
        Version versionF;
        Version version = (Version) this.a.invoke();
        BidMachineSharedPreferenceKt bidMachineSharedPreferenceKt = BidMachineSharedPreferenceKt.INSTANCE;
        List historyVersionMilestoneList = bidMachineSharedPreferenceKt.getHistoryVersionMilestoneList(context);
        S currentVersionMilestone = bidMachineSharedPreferenceKt.getCurrentVersionMilestone(context);
        Object obj = null;
        Version versionF2 = currentVersionMilestone != null ? currentVersionMilestone.f() : null;
        if (Intrinsics.areEqual(version, versionF2)) {
            return currentVersionMilestone;
        }
        long sessionStartTime = sessionManagerKtWrapper.getSessionStartTime();
        Version version2 = versionF2;
        S s = new S(version, 0, sessionStartTime, sessionStartTime, 0L, 0L);
        List mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) historyVersionMilestoneList);
        if (currentVersionMilestone != null) {
            mutableList.add(S.a(currentVersionMilestone, null, 0, 0L, 0L, 0L, currentVersionMilestone.a(), 15, null));
        }
        bidMachineSharedPreferenceKt.setHistoryVersionMilestoneList(context, mutableList);
        if (version2 == null) {
            a(context, sessionStartTime);
            return s;
        }
        if (version.compareTo(version2) < 0) {
            a(version2, version);
            return s;
        }
        Iterator it = historyVersionMilestoneList.iterator();
        if (it.hasNext()) {
            Object next = it.next();
            if (it.hasNext()) {
                Version versionF3 = ((S) next).f();
                do {
                    Object next2 = it.next();
                    Version versionF4 = ((S) next2).f();
                    if (versionF3.compareTo(versionF4) < 0) {
                        next = next2;
                        versionF3 = versionF4;
                    }
                } while (it.hasNext());
            }
            obj = next;
        }
        S s2 = (S) obj;
        if (s2 == null || (versionF = s2.f()) == null) {
            versionF = version2;
        }
        a(version2, version, versionF);
        return s;
    }

    public final void c(Context context, SessionManagerKtWrapper sessionManager) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(sessionManager, "sessionManager");
        S sA = a(context, sessionManager);
        final S sA2 = sA != null ? S.a(sA, null, sA.e() + 1, 0L, sessionManager.getSessionStartTime(), sessionManager.getSessionDurationMs(), sA.a(), 5, null) : null;
        BidMachineSharedPreferenceKt.INSTANCE.setCurrentVersionMilestone(context, sA2);
        Logger.d("VersionManager", (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.internal.Q$$ExternalSyntheticLambda0
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return Q.b(sA2);
            }
        });
    }

    public Q(Function0 currentVersionProvider) {
        Intrinsics.checkNotNullParameter(currentVersionProvider, "currentVersionProvider");
        this.a = currentVersionProvider;
    }

    public final void b(Context context, SessionManagerKtWrapper sessionManager) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(sessionManager, "sessionManager");
        BidMachineSharedPreferenceKt bidMachineSharedPreferenceKt = BidMachineSharedPreferenceKt.INSTANCE;
        S currentVersionMilestone = bidMachineSharedPreferenceKt.getCurrentVersionMilestone(context);
        final S sA = currentVersionMilestone != null ? S.a(currentVersionMilestone, null, 0, 0L, 0L, sessionManager.getSessionDurationMs(), 0L, 47, null) : null;
        bidMachineSharedPreferenceKt.setCurrentVersionMilestone(context, sA);
        Logger.d("VersionManager", (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.internal.Q$$ExternalSyntheticLambda1
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return Q.a(sA);
            }
        });
    }

    public /* synthetic */ Q(Function0 function0, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? a.a : function0);
    }

    public static final String b(Version from, Version to, Version version) {
        Intrinsics.checkNotNullParameter(from, "$from");
        Intrinsics.checkNotNullParameter(to, "$to");
        return "Upgrade detected: " + from + " -> " + to + ", last max version: " + version;
    }

    public static final String b(Version from, Version to) {
        Intrinsics.checkNotNullParameter(from, "$from");
        Intrinsics.checkNotNullParameter(to, "$to");
        return "Downgrade detected: " + from + " -> " + to;
    }

    public static final String a(S s) {
        return "Pause session, milestone updated:\n" + s;
    }

    public final void a(Context context, long j) {
        BidMachineSharedPreferenceKt bidMachineSharedPreferenceKt = BidMachineSharedPreferenceKt.INSTANCE;
        if (bidMachineSharedPreferenceKt.hasBMIFV(context)) {
            Logger.d("VersionManager", "Migration from old version detected");
        } else {
            Logger.d("VersionManager", "Install detected");
            bidMachineSharedPreferenceKt.setSdkInstallTime(context, j);
        }
    }

    public final void a(final Version version, final Version version2, final Version version3) {
        Logger.d("VersionManager", (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.internal.Q$$ExternalSyntheticLambda2
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return Q.b(version, version2, version3);
            }
        });
    }

    public final void a(final Version version, final Version version2) {
        Logger.w("VersionManager", (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.internal.Q$$ExternalSyntheticLambda3
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return Q.b(version, version2);
            }
        });
    }
}
