package io.bidmachine;

import android.content.Context;
import com.android.installreferrer.api.InstallReferrerClient;
import com.android.installreferrer.api.InstallReferrerStateListener;
import com.android.installreferrer.api.ReferrerDetails;
import com.explorestack.protobuf.Timestamp;
import io.bidmachine.core.Logger;
import io.bidmachine.internal.C4230n;
import io.bidmachine.internal.InterfaceC4232p;
import io.bidmachine.protobuf.sdk.App;
import io.bidmachine.utils.ProtoUtils;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class InstallInfoProvider {
    private C4230n installInfo;
    private final AtomicBoolean isInitializeExecuted = new AtomicBoolean(false);

    public final class a {
        public final Context a;
        public final InstallReferrerClient b;
        public final /* synthetic */ InstallInfoProvider c;

        /* JADX INFO: renamed from: io.bidmachine.InstallInfoProvider$a$a, reason: collision with other inner class name */
        public final class C1101a implements InstallReferrerStateListener {
            public C1101a() {
            }
        }

        public a(InstallInfoProvider installInfoProvider, Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            this.c = installInfoProvider;
            Context applicationContext = context.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
            this.a = applicationContext;
            InstallReferrerClient installReferrerClientBuild = InstallReferrerClient.newBuilder(applicationContext).build();
            Intrinsics.checkNotNullExpressionValue(installReferrerClientBuild, "newBuilder(applicationCo…\n                .build()");
            this.b = installReferrerClientBuild;
        }

        public final void a() {
            try {
                this.b.startConnection(new C1101a());
            } catch (Throwable th) {
                Logger.w(th);
            }
        }
    }

    private final C4230n createBySharedPreferences(Context context) {
        return new C4230n(n.p(context), n.q(context), n.n(context), n.l(context), n.o(context), n.m(context), n.C(context));
    }

    private final Timestamp getInstallBeginServerTimestamp() {
        Long lB;
        C4230n c4230n = this.installInfo;
        if (c4230n != null && (lB = c4230n.b()) != null) {
            long jLongValue = lB.longValue();
            if (jLongValue > 0) {
                return ProtoUtils.secToTimestamp(jLongValue);
            }
        }
        return null;
    }

    private final Timestamp getInstallBeginTimestamp() {
        Long lA;
        C4230n c4230n = this.installInfo;
        if (c4230n != null && (lA = c4230n.a()) != null) {
            long jLongValue = lA.longValue();
            if (jLongValue > 0) {
                return ProtoUtils.secToTimestamp(jLongValue);
            }
        }
        return null;
    }

    private final Timestamp getInstallReferrerClickServerTimestamp() {
        Long lD;
        C4230n c4230n = this.installInfo;
        if (c4230n != null && (lD = c4230n.d()) != null) {
            long jLongValue = lD.longValue();
            if (jLongValue > 0) {
                return ProtoUtils.secToTimestamp(jLongValue);
            }
        }
        return null;
    }

    private final Timestamp getInstallReferrerClickTimestamp() {
        Long lC;
        C4230n c4230n = this.installInfo;
        if (c4230n != null && (lC = c4230n.c()) != null) {
            long jLongValue = lC.longValue();
            if (jLongValue > 0) {
                return ProtoUtils.secToTimestamp(jLongValue);
            }
        }
        return null;
    }

    private final String getInstallReferrerUrl() {
        String strE;
        C4230n c4230n = this.installInfo;
        if (c4230n == null || (strE = c4230n.e()) == null || strE.length() <= 0) {
            return null;
        }
        return strE;
    }

    private final String getInstallVersion() {
        String strF;
        C4230n c4230n = this.installInfo;
        if (c4230n == null || (strF = c4230n.f()) == null || strF.length() <= 0) {
            return null;
        }
        return strF;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initialize$lambda$0(InstallInfoProvider this$0, Context context) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(context, "$context");
        new a(this$0, context).a();
    }

    private final Boolean isGooglePlayInstant() {
        C4230n c4230n = this.installInfo;
        if (c4230n != null) {
            return c4230n.i();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final C4230n toInstallInfo(ReferrerDetails referrerDetails) {
        return new C4230n(referrerDetails.getInstallReferrer(), referrerDetails.getInstallVersion(), Long.valueOf(referrerDetails.getReferrerClickTimestampSeconds()), Long.valueOf(referrerDetails.getInstallBeginTimestampSeconds()), Long.valueOf(referrerDetails.getReferrerClickTimestampServerSeconds()), Long.valueOf(referrerDetails.getInstallBeginTimestampServerSeconds()), Boolean.valueOf(referrerDetails.getGooglePlayInstantParam()));
    }

    public final /* synthetic */ void fill(App.Builder appBuilder) {
        Intrinsics.checkNotNullParameter(appBuilder, "appBuilder");
        String installReferrerUrl = getInstallReferrerUrl();
        if (installReferrerUrl != null) {
            appBuilder.setInstallReferrerUrl(installReferrerUrl);
        }
        String installVersion = getInstallVersion();
        if (installVersion != null) {
            appBuilder.setInstallVersion(installVersion);
        }
        Timestamp installReferrerClickTimestamp = getInstallReferrerClickTimestamp();
        if (installReferrerClickTimestamp != null) {
            appBuilder.setInstallReferrerClickTimestamp(installReferrerClickTimestamp);
        }
        Timestamp installBeginTimestamp = getInstallBeginTimestamp();
        if (installBeginTimestamp != null) {
            appBuilder.setInstallTime(installBeginTimestamp);
        }
        Timestamp installReferrerClickServerTimestamp = getInstallReferrerClickServerTimestamp();
        if (installReferrerClickServerTimestamp != null) {
            appBuilder.setInstallReferrerClickServerTimestamp(installReferrerClickServerTimestamp);
        }
        Timestamp installBeginServerTimestamp = getInstallBeginServerTimestamp();
        if (installBeginServerTimestamp != null) {
            appBuilder.setInstallBeginServerTimestamp(installBeginServerTimestamp);
        }
        Boolean boolIsGooglePlayInstant = isGooglePlayInstant();
        if (boolIsGooglePlayInstant != null) {
            appBuilder.setIsGooglePlayInstant(boolIsGooglePlayInstant.booleanValue());
        }
    }

    public final void initialize(final Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (this.isInitializeExecuted.compareAndSet(false, true)) {
            C4230n c4230nCreateBySharedPreferences = createBySharedPreferences(context);
            this.installInfo = c4230nCreateBySharedPreferences;
            if (c4230nCreateBySharedPreferences == null || !c4230nCreateBySharedPreferences.h()) {
                new Thread(new InterfaceC4232p() { // from class: io.bidmachine.InstallInfoProvider$$ExternalSyntheticLambda0
                    @Override // io.bidmachine.utils.SafeRunnable
                    public final void onRun() {
                        InstallInfoProvider.initialize$lambda$0(this.f$0, context);
                    }
                }).start();
            }
        }
    }
}
