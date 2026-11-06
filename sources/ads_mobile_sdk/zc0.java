package ads_mobile_sdk;

import android.content.ComponentName;
import android.content.Context;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsServiceConnection;
import androidx.browser.customtabs.CustomTabsSession;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class zc0 extends CustomTabsServiceConnection {
    public final Context a;
    public final CoroutineScope b;
    public final g83 c;
    public final ur3 d;
    public CustomTabsSession e;
    public CustomTabsClient f;
    public final AtomicBoolean g;

    public zc0(Context applicationContext, CoroutineScope backgroundScope, g83 rootTraceCreator, ur3 traceLogger) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        this.a = applicationContext;
        this.b = backgroundScope;
        this.c = rootTraceCreator;
        this.d = traceLogger;
        this.g = new AtomicBoolean(false);
    }

    @Override // androidx.browser.customtabs.CustomTabsServiceConnection
    public final void onCustomTabsServiceConnected(ComponentName name, CustomTabsClient client) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(client, "client");
        this.f = client;
        try {
            client.warmup(0L);
            this.e = client.newSession(new xc0(this));
        } catch (Exception e) {
            this.e = null;
            CoroutineScope coroutineScope = this.b;
            yc0 block = new yc0(this, e, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.e = null;
        this.f = null;
    }
}
