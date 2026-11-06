package ads_mobile_sdk;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.webkit.CookieManager;
import com.ironsource.C3522b4;
import com.ironsource.G5;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes.dex */
public final class o21 {
    public static final m21 f = new m21();
    public static final AtomicReference g = new AtomicReference(null);
    public static final Regex h = new Regex("^(ca-app-pub-[0-9]{16})~([0-9]{10})$");
    public static final Regex i = new Regex("^(ca-app-pub-[a-zA-Z0-9\\-]+)/([a-zA-Z0-9_\\-]+)(/.*)?$");
    public static final Regex j = new Regex("^/([0-9]+(?:,[0-9]+)*)(?:/.*)?$");
    public final Context a;
    public final f0 b;
    public final ex0 c;
    public final k0 d;
    public final Class e;

    public o21(Context applicationContext, f0 activityTracker, ex0 flags, k0 adActivityDelegateMap, Class adActivityClass) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(adActivityDelegateMap, "adActivityDelegateMap");
        Intrinsics.checkNotNullParameter(adActivityClass, "adActivityClass");
        this.a = applicationContext;
        this.b = activityTracker;
        this.c = flags;
        this.d = adActivityDelegateMap;
        this.e = adActivityClass;
    }

    public final Intent a(Context context, h0 delegate) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(delegate, "adActivityDelegate");
        Intent intent = new Intent(context, (Class<?>) this.e);
        Bundle bundle = new Bundle();
        k0 k0Var = this.d;
        k0Var.getClass();
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        int andIncrement = k0Var.c.getAndIncrement();
        CoroutineScope coroutineScope = k0Var.a;
        j0 block = new j0(k0Var, andIncrement, null);
        EmptyCoroutineContext context2 = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context2, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        Job jobLaunch$default = BuildersKt__Builders_commonKt.launch$default(coroutineScope, context2, null, new ws3(block, null), 2, null);
        k0Var.d.put(Integer.valueOf(andIncrement), new i0(delegate, jobLaunch$default));
        bundle.putInt("ad_activity_delegate", andIncrement);
        intent.putExtra("ad_activity_delegate_bundle", bundle);
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        return intent;
    }

    public final boolean b(Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        String host = uri.getHost();
        if (host != null) {
            ex0 ex0Var = this.c;
            ex0Var.getClass();
            List defaultValue = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"});
            Intrinsics.checkNotNullParameter("gads:google_ad_domain_suffixes", C3522b4.i.W);
            Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
            List list = (List) ex0Var.a("gads:google_ad_domain_suffixes", defaultValue, yr.g);
            if (!(list instanceof Collection) || !list.isEmpty()) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    if (StringsKt__StringsJVMKt.endsWith$default(host, (String) it.next(), false, 2, null)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final boolean c(Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        if (!b(uri)) {
            return false;
        }
        String string = uri.toString();
        ex0 ex0Var = this.c;
        ex0Var.getClass();
        List defaultValue = CollectionsKt__CollectionsJVMKt.listOf("^[^?]*(/adview|/pcs/view).*");
        Intrinsics.checkNotNullParameter("gads:impression_url_pattern_match", C3522b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        List list = (List) ex0Var.a("gads:impression_url_pattern_match", defaultValue, yr.g);
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Regex regex = new Regex((String) it.next());
            Intrinsics.checkNotNull(string);
            if (regex.containsMatchIn(string)) {
                return true;
            }
        }
        return false;
    }

    public static CookieManager b() {
        int iMyUid = Process.myUid();
        if (iMyUid == 0 || iMyUid == 1000 || iMyUid == 1001 || iMyUid == 1002 || iMyUid == 1027) {
            return null;
        }
        return CookieManager.getInstance();
    }

    public final boolean c() {
        if (Build.VERSION.SDK_INT >= 26) {
            PackageManager packageManager = this.a.getPackageManager();
            if (packageManager != null) {
                return packageManager.isInstantApp();
            }
            return false;
        }
        try {
            this.a.getClassLoader().loadClass("com.google.android.instantapps.supervisor.InstantAppsRuntime");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public final boolean d() {
        String str = a(this.a).b;
        if (str == null) {
            return false;
        }
        String lowerCase = str.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        if (lowerCase != null) {
            return lowerCase.equals("ru");
        }
        return false;
    }

    public final Map d(Uri uri) {
        String encodedQuery;
        String strDecode;
        Intrinsics.checkNotNullParameter(uri, "uri");
        ex0 ex0Var = this.c;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:uri_query_to_map:enabled", C3522b4.i.W);
        if (((Boolean) ex0Var.a("gads:uri_query_to_map:enabled", Boolean.TRUE, yr.b)).booleanValue()) {
            Intrinsics.checkNotNullParameter(uri, "uri");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            if (!uri.isOpaque() && (encodedQuery = uri.getEncodedQuery()) != null) {
                int length = encodedQuery.length();
                int i2 = 0;
                while (true) {
                    int iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) encodedQuery, '&', i2, false, 4, (Object) null);
                    int i3 = iIndexOf$default != -1 ? iIndexOf$default : length;
                    int iIndexOf$default2 = StringsKt__StringsKt.indexOf$default((CharSequence) encodedQuery, G5.U, i2, false, 4, (Object) null);
                    if (iIndexOf$default2 > i3 || iIndexOf$default2 == -1) {
                        iIndexOf$default2 = i3;
                    }
                    String strSubstring = encodedQuery.substring(i2, iIndexOf$default2);
                    Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                    String strDecode2 = Uri.decode(strSubstring);
                    if (iIndexOf$default2 == i3) {
                        strDecode = "";
                    } else {
                        String strSubstring2 = encodedQuery.substring(iIndexOf$default2 + 1, i3);
                        Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
                        strDecode = Uri.decode(strSubstring2);
                    }
                    Intrinsics.checkNotNull(strDecode2);
                    Intrinsics.checkNotNull(strDecode);
                    linkedHashMap.put(strDecode2, strDecode);
                    if (iIndexOf$default == -1) {
                        break;
                    }
                    i2 = iIndexOf$default + 1;
                }
            }
            return linkedHashMap;
        }
        return m21.a(uri);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static ads_mobile_sdk.n21 a(android.content.Context r3) {
        /*
            java.lang.String r0 = "context"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            ads_mobile_sdk.n21 r0 = new ads_mobile_sdk.n21
            java.util.Locale r1 = java.util.Locale.getDefault()
            java.lang.String r1 = r1.getLanguage()
            java.util.Locale r2 = java.util.Locale.getDefault()
            java.lang.String r2 = r2.getCountry()
            r0.<init>(r1, r2)
            int r1 = android.os.Build.VERSION.SDK_INT
            r2 = 33
            if (r1 < r2) goto L33
            java.lang.Class r1 = ads_mobile_sdk.o21$$ExternalSyntheticApiModelOutline1.m()
            java.lang.Object r3 = r3.getSystemService(r1)
            android.app.LocaleManager r3 = ads_mobile_sdk.o21$$ExternalSyntheticApiModelOutline2.m(r3)
            if (r3 == 0) goto L44
            android.os.LocaleList r3 = ads_mobile_sdk.o21$$ExternalSyntheticApiModelOutline3.m(r3)
            goto L45
        L33:
            android.content.res.Resources r3 = r3.getResources()
            if (r3 == 0) goto L44
            android.content.res.Configuration r3 = r3.getConfiguration()
            if (r3 == 0) goto L44
            android.os.LocaleList r3 = r3.getLocales()
            goto L45
        L44:
            r3 = 0
        L45:
            if (r3 == 0) goto L5f
            boolean r1 = r3.isEmpty()
            if (r1 != 0) goto L5f
            r0 = 0
            java.util.Locale r3 = r3.get(r0)
            ads_mobile_sdk.n21 r0 = new ads_mobile_sdk.n21
            java.lang.String r1 = r3.getLanguage()
            java.lang.String r3 = r3.getCountry()
            r0.<init>(r1, r3)
        L5f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.o21.a(android.content.Context):ads_mobile_sdk.n21");
    }

    public final boolean a(Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        if (!b(uri)) {
            return false;
        }
        String string = uri.toString();
        ex0 ex0Var = this.c;
        ex0Var.getClass();
        List defaultValue = CollectionsKt__CollectionsJVMKt.listOf("^[^?]*(/aclk|/pcs/click|/dbm/clk).*");
        Intrinsics.checkNotNullParameter("gads:click_url_pattern_match", C3522b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        List list = (List) ex0Var.a("gads:click_url_pattern_match", defaultValue, yr.g);
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Regex regex = new Regex((String) it.next());
            Intrinsics.checkNotNull(string);
            if (regex.containsMatchIn(string)) {
                return true;
            }
        }
        return false;
    }

    public final boolean a(Intent intent) {
        if (intent == null) {
            return false;
        }
        Context contextG = this.b.g();
        if (contextG == null) {
            contextG = this.a;
        }
        if (!(contextG instanceof Activity)) {
            intent.addFlags(268435456);
        }
        try {
            contextG.startActivity(intent);
            return true;
        } catch (Throwable th) {
            xs3.a("Exception starting Activity: " + th.getMessage(), th, 4);
            return false;
        }
    }

    public final long a() {
        PackageInfo packageInfo;
        PackageInfo packageInfo2;
        if (Build.VERSION.SDK_INT >= 33) {
            PackageManager packageManager = this.a.getPackageManager();
            if (packageManager == null || (packageInfo2 = packageManager.getPackageInfo(this.a.getPackageName(), PackageManager.PackageInfoFlags.of(128L))) == null) {
                return 0L;
            }
            return packageInfo2.getLongVersionCode();
        }
        PackageManager packageManager2 = this.a.getPackageManager();
        return (packageManager2 == null || (packageInfo = packageManager2.getPackageInfo(this.a.getPackageName(), Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE)) == null) ? 0 : packageInfo.versionCode;
    }
}
