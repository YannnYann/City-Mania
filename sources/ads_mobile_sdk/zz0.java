package ads_mobile_sdk;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.libraries.ads.mobile.sdk.common.AdActivity;
import com.google.android.libraries.ads.mobile.sdk.initialization.InitializationConfig;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt__SetsJVMKt;
import kotlin.collections.SetsKt___SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import kotlin.time.Duration;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.ExecutorsKt;

/* JADX INFO: loaded from: classes.dex */
public final class zz0 {
    public static boolean c;
    public static final /* synthetic */ zz0 a = new zz0();
    public static final js1 b = new js1();
    public static final AtomicBoolean d = new AtomicBoolean(false);

    public static final void a(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("GoogleMobileAds", 0);
        int i = sharedPreferences.getInt("early_webview_init_count", 0);
        String string = sharedPreferences.getString("early_webview_init_profiles", "");
        String str = string == null ? "" : string;
        Set of = StringsKt__StringsKt.isBlank(str) ? SetsKt__SetsJVMKt.setOf("Default") : SetsKt___SetsKt.plus(SetsKt__SetsJVMKt.setOf("Default"), (Iterable) CollectionsKt___CollectionsKt.toSet(StringsKt__StringsKt.split$default((CharSequence) str, new String[]{","}, false, 0, 6, (Object) null)));
        if (i > 0) {
            AtomicBoolean atomicBoolean = az3.a;
            az3.a(context, ExecutorsKt.asExecutor(Dispatchers.getIO()), true, of, null);
            Intrinsics.checkNotNull(sharedPreferences);
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.putInt("early_webview_init_count", i - 1);
            editorEdit.apply();
        }
    }

    public static a01 a(Context context, InitializationConfig initializationConfig, boolean z) {
        Object obj;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(AdActivity.class, "adActivityClass");
        Context applicationContext = context.getApplicationContext();
        if (applicationContext instanceof Application) {
            if (z && d.compareAndSet(false, true)) {
                int i = sz.$r8$clinit;
                long jM2911getZEROUwyO8pc = Duration.Companion.m2911getZEROUwyO8pc();
                Intrinsics.checkNotNullParameter("WebView", "poolName");
                fr3 threadFactory = new fr3("WebView", null);
                Intrinsics.checkNotNullParameter(threadFactory, "threadFactory");
                ThreadPoolExecutor delegate = new ThreadPoolExecutor(1, 1, Duration.m2883getInWholeSecondsimpl(jM2911getZEROUwyO8pc), TimeUnit.SECONDS, new LinkedBlockingQueue(), threadFactory);
                Intrinsics.checkNotNullParameter(delegate, "executorService");
                Intrinsics.checkNotNullParameter(threadFactory, "threadFactory");
                Intrinsics.checkNotNullParameter(delegate, "delegate");
                BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(ExecutorsKt.from((ExecutorService) new rz(delegate))), null, null, new yz0(applicationContext, null), 3, null);
            }
            c = false;
            js1 js1Var = b;
            xz0 block = new xz0(context, applicationContext);
            Intrinsics.checkNotNullParameter(block, "block");
            synchronized (js1Var) {
                try {
                    if (js1Var.a == null) {
                        js1Var.a = block.invoke();
                    }
                    obj = js1Var.a;
                    if (obj == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("backingField");
                        obj = Unit.INSTANCE;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            a01 a01Var = (a01) obj;
            ((ja1) ((vf0) a01Var).d.get()).a = initializationConfig;
            return a01Var;
        }
        throw new IllegalArgumentException("The provided application context is not an instance of Application. The Google Mobile Ads SDK should not be used from contexts like BroadcastReceivers, only Services and Activities.");
    }

    public static a01 a() {
        if (!c) {
            return (a01) b.a("MobileAds.initialize must be called before using the Google Mobile Ads SDK.");
        }
        throw new IllegalStateException("The Google Mobile Ads SDK is stopped. Please call MobileAds.initialize again.");
    }
}
