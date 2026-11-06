package com.ironsource;

import android.content.Context;
import android.content.IntentFilter;
import android.text.TextUtils;
import com.ironsource.Pb;
import com.ironsource.Ue;
import com.ironsource.environment.NetworkStateReceiver;
import com.ironsource.environment.thread.IronSourceThreadManager;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import kotlin.Function;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Je implements Ke {
    private final Ic a;
    private final C3528ba b;
    private final B7 c;

    public /* synthetic */ class a implements Ic, FunctionAdapter {
        public static final a a = new a();

        @Override // com.ironsource.Ic
        public final NetworkStateReceiver a(Context context, Jc jc) {
            return new NetworkStateReceiver(context, jc);
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof Ic) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function<?> getFunctionDelegate() {
            return new FunctionReferenceImpl(2, NetworkStateReceiver.class, "<init>", "<init>(Landroid/content/Context;Lcom/ironsource/environment/NetworkStateReceiverListener;)V", 0);
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Je() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    @Override // com.ironsource.Ke
    public B7 a() {
        return this.c;
    }

    @Override // com.ironsource.Ke
    public void b(Runnable callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        IronSourceThreadManager.postOnUiThreadTask$default(IronSourceThreadManager.INSTANCE, callback, 0L, 2, null);
    }

    @Override // com.ironsource.Ke
    public void c(Runnable runnable) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        IronSourceThreadManager.INSTANCE.getLevelPlayThread().a(runnable);
    }

    @Override // com.ironsource.Ke
    public void d(Runnable runnable) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        IronSourceThreadManager.postMediationBackgroundTask$default(IronSourceThreadManager.INSTANCE, runnable, 0L, 2, null);
    }

    @Override // com.ironsource.Ke
    public void e() {
        Pb.w.d().q().a(new C5(D5.M, IronSourceUtils.b(false)));
    }

    @Override // com.ironsource.Ke
    public void f() {
        Pb.a aVar = Pb.w;
        if (aVar.d().h().H()) {
            aVar.d().u().start();
        }
    }

    @Override // com.ironsource.Ke
    public void g() {
        com.ironsource.mediationsdk.p.g().H();
    }

    @Override // com.ironsource.Ke
    public void h() {
        Nd.c().a();
    }

    @Override // com.ironsource.Ke
    public C3528ba i() {
        return this.b;
    }

    public Je(Ic receiverFactory) {
        Intrinsics.checkNotNullParameter(receiverFactory, "receiverFactory");
        this.a = receiverFactory;
        this.b = new C3528ba();
        this.c = Pb.w.d().a();
    }

    @Override // com.ironsource.Ke
    public void a(Runnable runnable, long j) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        IronSourceThreadManager.INSTANCE.postOnUiThreadTask(runnable, j);
    }

    @Override // com.ironsource.Ke
    public boolean b(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return IronSourceUtils.f(context);
    }

    @Override // com.ironsource.Ke
    public String c(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        String strB = com.ironsource.mediationsdk.p.g().b(context);
        Intrinsics.checkNotNullExpressionValue(strB, "getAdvertiserId(...)");
        return strB;
    }

    @Override // com.ironsource.Ke
    public boolean d() {
        return IronSourceUtils.g();
    }

    @Override // com.ironsource.Ke
    public void a(Runnable callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        IronSourceThreadManager.postOnUiThreadTask$default(IronSourceThreadManager.INSTANCE, com.ironsource.environment.thread.a.a.a(callback), 0L, 2, null);
    }

    @Override // com.ironsource.Ke
    public void b() {
        Pb.w.d().q().a(new C5(D5.N, IronSourceUtils.b(false)));
    }

    @Override // com.ironsource.Ke
    public C3655ia c() {
        return com.ironsource.mediationsdk.p.g().m();
    }

    @Override // com.ironsource.Ke
    public void a(String key, String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        if (TextUtils.isEmpty(value)) {
            return;
        }
        O6.a().a(key, value);
    }

    @Override // com.ironsource.Ke
    public void a(long j, Ue.a responseOrigin) {
        Intrinsics.checkNotNullParameter(responseOrigin, "responseOrigin");
        com.ironsource.mediationsdk.p.g().a(j, responseOrigin);
    }

    @Override // com.ironsource.Ke
    public NetworkStateReceiver a(Context context, Jc listener) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(listener, "listener");
        Context applicationContext = context.getApplicationContext();
        try {
            Ic ic = this.a;
            Intrinsics.checkNotNull(applicationContext);
            NetworkStateReceiver networkStateReceiverA = ic.a(applicationContext, listener);
            applicationContext.registerReceiver(networkStateReceiverA, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            return networkStateReceiverA;
        } catch (Exception e) {
            IronLog.INTERNAL.error("Failed to register network state receiver: " + e.getMessage());
            C3813r4.d().a(e);
            return null;
        }
    }

    public /* synthetic */ Je(Ic ic, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? a.a : ic);
    }

    @Override // com.ironsource.Ke
    public void a(Context context, NetworkStateReceiver receiver) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(receiver, "receiver");
        try {
            context.getApplicationContext().unregisterReceiver(receiver);
        } catch (Exception e) {
            IronLog.INTERNAL.error("Failed to unregister network state receiver: " + e.getMessage());
            C3813r4.d().a(e);
        }
    }

    @Override // com.ironsource.Ke
    public Ue a(Context context, String appKey) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(appKey, "appKey");
        return com.ironsource.mediationsdk.p.g().a(context, appKey);
    }

    @Override // com.ironsource.Ke
    public String a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        String strA = a().a(context);
        Intrinsics.checkNotNullExpressionValue(strA, "getOrGenerateOnceUniqueIdentifier(...)");
        return strA;
    }

    @Override // com.ironsource.Ke
    public void a(N1 reporterSettings) {
        Intrinsics.checkNotNullParameter(reporterSettings, "reporterSettings");
        C3813r4.d().a(reporterSettings.b(), reporterSettings.d(), reporterSettings.c(), reporterSettings.e(), IronSourceUtils.d(), reporterSettings.a(), reporterSettings.g());
    }

    @Override // com.ironsource.Ke
    public void a(He initStatus) {
        Intrinsics.checkNotNullParameter(initStatus, "initStatus");
        Ie.a.a(initStatus);
    }
}
