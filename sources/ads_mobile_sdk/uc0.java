package ads_mobile_sdk;

import android.net.Uri;
import android.os.Bundle;
import androidx.browser.customtabs.CustomTabsCallback;
import androidx.browser.customtabs.CustomTabsSession;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.ironsource.C3522b4;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes.dex */
public final class uc0 extends CustomTabsCallback {
    public final CoroutineScope a;
    public final tx b;
    public final ex0 c;
    public final xe3 d;
    public final Object e;
    public boolean f;
    public Job g;
    public long h;
    public long i;
    public String j;
    public CustomTabsSession k;
    public CustomTabsCallback l;
    public final JsonArray m;
    public final List n;

    public uc0(CoroutineScope backgroundScope, tx clock, ex0 flags, xe3 signalCache) {
        JsonArray jsonArray;
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(signalCache, "signalCache");
        this.a = backgroundScope;
        this.b = clock;
        this.c = flags;
        this.d = signalCache;
        this.e = new Object();
        Duration.Companion companion = Duration.Companion;
        this.h = companion.m2911getZEROUwyO8pc();
        this.i = companion.m2911getZEROUwyO8pc();
        ds1 ds1Var = ds1.a;
        try {
            jsonArray = (JsonArray) new Gson().fromJson(flags.l0(), JsonArray.class);
        } catch (Exception e) {
            xs3.a(e);
            jsonArray = null;
        }
        this.m = jsonArray == null ? new JsonArray() : jsonArray;
        this.n = this.c.A();
    }

    @Override // androidx.browser.customtabs.CustomTabsCallback
    public final void extraCallback(String callbackName, Bundle bundle) {
        CustomTabsCallback customTabsCallback;
        Intrinsics.checkNotNullParameter(callbackName, "callbackName");
        synchronized (this.e) {
            customTabsCallback = this.l;
        }
        if (customTabsCallback != null) {
            customTabsCallback.extraCallback(callbackName, bundle);
        }
    }

    @Override // androidx.browser.customtabs.CustomTabsCallback
    public final Bundle extraCallbackWithResult(String callbackName, Bundle bundle) {
        CustomTabsCallback customTabsCallback;
        Intrinsics.checkNotNullParameter(callbackName, "callbackName");
        synchronized (this.e) {
            customTabsCallback = this.l;
        }
        if (customTabsCallback != null) {
            return customTabsCallback.extraCallbackWithResult(callbackName, bundle);
        }
        return null;
    }

    @Override // androidx.browser.customtabs.CustomTabsCallback
    public final void onActivityResized(int i, int i2, Bundle extras) {
        CustomTabsCallback customTabsCallback;
        Intrinsics.checkNotNullParameter(extras, "extras");
        try {
            synchronized (this.e) {
                customTabsCallback = this.l;
            }
            if (customTabsCallback != null) {
                customTabsCallback.onActivityResized(i, i2, extras);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // androidx.browser.customtabs.CustomTabsCallback
    public final void onPostMessage(String message, Bundle bundle) {
        JsonObject jsonObject;
        CustomTabsCallback customTabsCallback;
        Intrinsics.checkNotNullParameter(message, "message");
        ds1 ds1Var = ds1.a;
        try {
            jsonObject = (JsonObject) new Gson().fromJson(message, JsonObject.class);
        } catch (Exception e) {
            List list = a2.a(e, "t", e).s;
            String message2 = e.getMessage();
            if (message2 == null) {
                message2 = e.getClass().getName();
            }
            Intrinsics.checkNotNull(message2);
            list.add(message2);
            jsonObject = null;
        }
        if (jsonObject != null && ds1.a(jsonObject, "gpa", -1) == 0) {
            synchronized (this.e) {
                this.f = true;
                Unit unit = Unit.INSTANCE;
            }
            a(ds1.a(jsonObject, "paw_id", ""));
        }
        synchronized (this.e) {
            customTabsCallback = this.l;
        }
        if (customTabsCallback != null) {
            customTabsCallback.onPostMessage(message, bundle);
        }
    }

    @Override // androidx.browser.customtabs.CustomTabsCallback
    public final void onRelationshipValidationResult(int i, Uri requestedOrigin, boolean z, Bundle bundle) {
        CustomTabsCallback customTabsCallback;
        Intrinsics.checkNotNullParameter(requestedOrigin, "requestedOrigin");
        synchronized (this.e) {
            customTabsCallback = this.l;
        }
        if (customTabsCallback != null) {
            customTabsCallback.onRelationshipValidationResult(i, requestedOrigin, z, bundle);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object a(ads_mobile_sdk.uc0 r11, kotlin.coroutines.Continuation r12) {
        /*
            Method dump skipped, instruction units count: 214
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.uc0.a(ads_mobile_sdk.uc0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // androidx.browser.customtabs.CustomTabsCallback
    public final void onNavigationEvent(int i, Bundle bundle) {
        long jM2906unboximpl;
        synchronized (this.e) {
            try {
                this.f = false;
                CustomTabsCallback customTabsCallback = this.l;
                if (customTabsCallback != null) {
                    customTabsCallback.onNavigationEvent(i, bundle);
                }
                Duration.Companion companion = Duration.Companion;
                this.b.getClass();
                this.h = DurationKt.toDuration(System.currentTimeMillis(), DurationUnit.MILLISECONDS);
                if (this.n.contains(String.valueOf(i))) {
                    long j = this.h;
                    ex0 ex0Var = this.c;
                    ex0Var.getClass();
                    Intrinsics.checkNotNullParameter("gads:pact_polling_forever:enabled", C3522b4.i.W);
                    if (((Boolean) ex0Var.a("gads:pact_polling_forever:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
                        jM2906unboximpl = companion.m2908getINFINITEUwyO8pc();
                    } else {
                        ex0 ex0Var2 = this.c;
                        ex0Var2.getClass();
                        long duration = DurationKt.toDuration(60, DurationUnit.SECONDS);
                        Intrinsics.checkNotNullParameter("gads:pact_polling_duration_ms", C3522b4.i.W);
                        jM2906unboximpl = ((Duration) ex0Var2.a("gads:pact_polling_duration_ms", Duration.m2870boximpl(duration), yr.j)).m2906unboximpl();
                    }
                    this.i = Duration.m2897plusLRDsOJo(j, jM2906unboximpl);
                    Job job = this.g;
                    if (job == null || job.isCompleted()) {
                        CoroutineScope coroutineScope = this.a;
                        rc0 block = new rc0(this, null);
                        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
                        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
                        Intrinsics.checkNotNullParameter(context, "context");
                        Intrinsics.checkNotNullParameter(block, "block");
                        this.g = BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
                    }
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.browser.customtabs.CustomTabsCallback
    public final void onMessageChannelReady(Bundle bundle) {
        synchronized (this.e) {
            try {
                this.f = false;
                CustomTabsCallback customTabsCallback = this.l;
                if (customTabsCallback != null) {
                    customTabsCallback.onMessageChannelReady(bundle);
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object a(ads_mobile_sdk.uc0 r6, java.lang.String r7, kotlin.coroutines.Continuation r8) {
        /*
            Method dump skipped, instruction units count: 260
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.uc0.a(ads_mobile_sdk.uc0, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void a(String str) {
        synchronized (this.e) {
            try {
                JsonObject jsonObject = new JsonObject();
                jsonObject.add("eids", this.m);
                jsonObject.addProperty("gsppack", Boolean.TRUE);
                jsonObject.addProperty("fpt", String.valueOf(Duration.m2881getInWholeMillisecondsimpl(this.h)));
                CustomTabsSession customTabsSession = this.k;
                if (customTabsSession == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("session");
                    customTabsSession = null;
                }
                customTabsSession.postMessage(jsonObject.toString(), null);
                CoroutineScope coroutineScope = this.a;
                tc0 block = new tc0(this, str, null);
                EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
                Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(block, "block");
                BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
