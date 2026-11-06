package com.vungle.ads.internal;

import android.content.Context;
import android.os.Handler;
import androidx.core.content.ContextCompat;
import com.vungle.ads.InitializationListener;
import com.vungle.ads.InvalidAppId;
import com.vungle.ads.OutOfMemory;
import com.vungle.ads.SdkVersionTooLow;
import com.vungle.ads.VungleError;
import com.vungle.ads.internal.network.VungleApiClient;
import com.vungle.ads.internal.persistence.FilePreferences;
import com.vungle.ads.internal.privacy.PrivacyManager;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.util.PathProvider;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes4.dex */
public final class u2 {
    public AtomicBoolean a = new AtomicBoolean(false);
    public AtomicBoolean b = new AtomicBoolean(false);
    public final CopyOnWriteArrayList c = new CopyOnWriteArrayList();
    public final k2 d = new k2(Sdk.SDKMetric.SDKMetricType.INIT_TO_SUCCESS_CALLBACK_DURATION_MS);

    public final void a(final Context context, final String appId, InitializationListener initializationCallback) {
        Intrinsics.checkNotNullParameter(appId, "appId");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(initializationCallback, "initializationCallback");
        AnalyticsClient.a(AnalyticsClient.INSTANCE, new j2(Sdk.SDKMetric.SDKMetricType.SDK_INIT_API), (com.vungle.ads.internal.util.t) null, 6);
        this.d.e();
        this.c.add(initializationCallback);
        if (!StringsKt__StringsKt.isBlank(appId)) {
            for (int i = 0; i < appId.length(); i++) {
                char cCharAt = appId.charAt(i);
                if (Character.isLetterOrDigit(cCharAt) || cCharAt == '.') {
                }
            }
            if (com.vungle.ads.internal.util.a0.a()) {
                boolean z = com.vungle.ads.internal.util.v.a;
                com.vungle.ads.internal.util.u.b("VungleInitializer", "Init: SDK is supported only for API versions 25 and above.");
                a(new SdkVersionTooLow("Init: SDK is supported only for API versions 25 and above.").logError$vungle_ads_release());
                return;
            }
            ConfigManager.INSTANCE.getClass();
            ConfigManager.b(appId);
            if (this.a.get()) {
                boolean z2 = com.vungle.ads.internal.util.v.a;
                com.vungle.ads.internal.util.u.a("VungleInitializer", "init already complete");
                b();
                return;
            } else if (this.b.getAndSet(true)) {
                boolean z3 = com.vungle.ads.internal.util.v.a;
                com.vungle.ads.internal.util.u.a("VungleInitializer", "init already in progress");
                return;
            } else {
                LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
                Lazy lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new p2(context));
                final Lazy lazy2 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new q2(context));
                ((com.vungle.ads.internal.executor.d) ((com.vungle.ads.internal.executor.a) lazy.getValue())).b().a(new Runnable() { // from class: com.vungle.ads.internal.u2$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        u2.a(this.f$0, context, appId, lazy2);
                    }
                }, new Runnable() { // from class: com.vungle.ads.internal.u2$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        u2.a(this.f$0);
                    }
                });
                return;
            }
        }
        a(new InvalidAppId("App id invalid: " + appId + ", package name: " + context.getPackageName()).logError$vungle_ads_release());
    }

    public final void b() throws Throwable {
        this.b.set(false);
        this.d.a(Sdk.SDKMetric.SDKMetricType.INIT_TO_SUCCESS_CALLBACK_DURATION_MS);
        this.d.d();
        AnalyticsClient.a(AnalyticsClient.INSTANCE, this.d, (com.vungle.ads.internal.util.t) null, 6);
        boolean z = com.vungle.ads.internal.util.v.a;
        StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("onSuccess ");
        sbA.append(Thread.currentThread().getId());
        com.vungle.ads.internal.util.u.a("VungleInitializer", sbA.toString());
        Handler handler = com.vungle.ads.internal.util.z.a;
        com.vungle.ads.internal.util.z.a(new t2(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v10, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r10v14, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r10v9, types: [java.util.List] */
    public static final void a(u2 this$0, Context context, String appId, Lazy vungleApiClient$delegate) {
        boolean z;
        ?? EmptyList;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(context, "$context");
        Intrinsics.checkNotNullParameter(appId, "$appId");
        Intrinsics.checkNotNullParameter(vungleApiClient$delegate, "$vungleApiClient$delegate");
        this$0.getClass();
        boolean z2 = ContextCompat.checkSelfPermission(context, "android.permission.ACCESS_NETWORK_STATE") == 0;
        boolean z3 = ContextCompat.checkSelfPermission(context, "android.permission.INTERNET") == 0;
        if (!z2 || !z3) {
            boolean z4 = com.vungle.ads.internal.util.v.a;
            com.vungle.ads.internal.util.u.b("VungleInitializer", "Network permissions not granted");
            Handler handler = com.vungle.ads.internal.util.z.a;
            com.vungle.ads.internal.util.z.a(new r2(this$0));
            return;
        }
        PrivacyManager.INSTANCE.a(context);
        ((VungleApiClient) vungleApiClient$delegate.getValue()).c(appId);
        try {
            LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
            Lazy lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new l2(context));
            ConfigManager configManager = ConfigManager.INSTANCE;
            FilePreferences filePreferences = (FilePreferences) lazy.getValue();
            configManager.getClass();
            com.vungle.ads.internal.model.w2 w2VarA = ConfigManager.a(filePreferences, appId);
            if (w2VarA != null) {
                configManager.a(context, w2VarA, p0.INIT_CACHED, null);
                ConfigManager.c();
                z = true;
            } else {
                z = false;
            }
            File[] fileArrListFiles = ((PathProvider) LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new m2(context)).getValue()).getVmDir().listFiles();
            if (fileArrListFiles != null) {
                ArrayList arrayList = new ArrayList();
                for (File file : fileArrListFiles) {
                    if (file.isDirectory()) {
                        arrayList.add(file);
                    }
                }
                EmptyList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    EmptyList.add(((File) it.next()).getName());
                }
            } else {
                EmptyList = CollectionsKt__CollectionsKt.emptyList();
            }
            Lazy lazy2 = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new n2(context));
            boolean z5 = com.vungle.ads.internal.util.v.a;
            com.vungle.ads.internal.util.u.a("VungleInitializer", "Running cleanup jobs.");
            ((com.vungle.ads.internal.task.r) ((com.vungle.ads.internal.task.g) lazy2.getValue())).a(com.vungle.ads.internal.task.a.a(null, EmptyList, 1));
            this$0.a.set(true);
            this$0.b();
            a(context);
            if (z) {
                return;
            }
            ConfigManager configManager2 = ConfigManager.INSTANCE;
            o2 o2Var = new o2(this$0, context);
            configManager2.getClass();
            ConfigManager.a(context, o2Var);
        } catch (Throwable th) {
            boolean z6 = com.vungle.ads.internal.util.v.a;
            com.vungle.ads.internal.util.u.a("VungleInitializer", "Cannot get config", th);
        }
    }

    public static final void a(u2 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.a(new OutOfMemory("Config: Out of Memory").logError$vungle_ads_release());
    }

    public final void a(VungleError vungleError) {
        this.b.set(false);
        String localizedMessage = vungleError.getLocalizedMessage();
        if (localizedMessage == null) {
            StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("Exception code is ");
            sbA.append(vungleError.getCode());
            localizedMessage = sbA.toString();
        }
        this.d.a(Sdk.SDKMetric.SDKMetricType.INIT_TO_FAIL_CALLBACK_DURATION_MS);
        this.d.d();
        AnalyticsClient.INSTANCE.a(this.d, (com.vungle.ads.internal.util.t) null, localizedMessage);
        Handler handler = com.vungle.ads.internal.util.z.a;
        com.vungle.ads.internal.util.z.a(new s2(this, vungleError));
        boolean z = com.vungle.ads.internal.util.v.a;
        com.vungle.ads.internal.util.u.b("VungleInitializer", localizedMessage);
    }

    public final void a() {
        r1 r1Var = ServiceLocator.d;
        ServiceLocator serviceLocator = ServiceLocator.INSTANCE;
        if (serviceLocator != null && serviceLocator.c()) {
            ((com.vungle.ads.internal.downloader.u) serviceLocator.getService(com.vungle.ads.internal.downloader.u.class)).a();
        }
        synchronized (r1Var) {
            ServiceLocator.INSTANCE = null;
        }
        Json json = VungleApiClient.n;
        com.vungle.ads.internal.network.f0.a = com.vungle.ads.internal.network.f0.a();
        com.vungle.ads.internal.presenter.f0.c.set(false);
        ConfigManager.INSTANCE.a();
        this.a.set(false);
        this.b.set(false);
        this.c.clear();
    }

    public static void a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        ConfigManager.INSTANCE.getClass();
        if (ConfigManager.q()) {
            com.vungle.ads.internal.presenter.f0.a(context);
        }
    }

    public final void a(String integrationName, String version) {
        String str;
        Intrinsics.checkNotNullParameter(integrationName, "integrationName");
        Intrinsics.checkNotNullParameter(version, "version");
        if (StringsKt__StringsKt.isBlank(integrationName)) {
            boolean z = com.vungle.ads.internal.util.v.a;
            com.vungle.ads.internal.util.u.b("VungleInitializer", "integrationName is empty");
            return;
        }
        String strD = com.vungle.ads.internal.network.f0.d();
        if (StringsKt__StringsKt.isBlank(version)) {
            str = "";
        } else {
            str = '/' + version;
        }
        String strA = com.iab.omid.library.vungle.d.a(integrationName, str);
        if (StringsKt__StringsKt.contains$default((CharSequence) strD, (CharSequence) strA, false, 2, (Object) null)) {
            boolean z2 = com.vungle.ads.internal.util.v.a;
            com.vungle.ads.internal.util.u.c("VungleInitializer", "Wrapper info already set");
            return;
        }
        com.vungle.ads.internal.network.f0.c(strD + ';' + strA);
        if (this.a.get()) {
            boolean z3 = com.vungle.ads.internal.util.v.a;
            com.vungle.ads.internal.util.u.c("VungleInitializer", "VUNGLE WARNING: SDK already initialized, you should've set wrapper info before");
        }
    }
}
