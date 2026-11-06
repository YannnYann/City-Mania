package ads_mobile_sdk;

import android.app.Activity;
import android.content.ComponentName;
import android.net.Uri;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsServiceConnection;
import androidx.browser.customtabs.CustomTabsSession;
import java.util.Map;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class ug2 extends CustomTabsServiceConnection {
    public final /* synthetic */ ah2 a;
    public final /* synthetic */ Activity b;
    public final /* synthetic */ Uri c;
    public final /* synthetic */ String d;
    public final /* synthetic */ Map e;

    public ug2(ah2 ah2Var, Activity activity, Uri uri, String str, Map map) {
        this.a = ah2Var;
        this.b = activity;
        this.c = uri;
        this.d = str;
        this.e = map;
    }

    @Override // androidx.browser.customtabs.CustomTabsServiceConnection
    public final void onCustomTabsServiceConnected(ComponentName name, CustomTabsClient client) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(client, "client");
        CustomTabsSession customTabsSessionNewSession = null;
        try {
            client.warmup(0L);
            customTabsSessionNewSession = client.newSession(null);
        } catch (Exception e) {
            ah2 ah2Var = this.a;
            CoroutineScope coroutineScope = ah2Var.t;
            tg2 block = new tg2(ah2Var, e, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        }
        try {
            this.a.a(customTabsSessionNewSession, this.b, this.c, this.d, this.e);
        } finally {
            this.b.unbindService(this);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName name) {
        Intrinsics.checkNotNullParameter(name, "name");
    }
}
