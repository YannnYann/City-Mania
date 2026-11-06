package ads_mobile_sdk;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.LocaleList;
import android.os.StatFs;
import com.google.common.base.Splitter;
import com.ironsource.C3522b4;
import java.util.List;
import java.util.Locale;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class kl3 extends pl3 {
    public final Context d;
    public final an0 e;
    public final ex0 f;
    public final o21 g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kl3(Context context, an0 deviceProperties, ex0 flags, o21 gmaUtil) {
        super(s11.CUI_NAME_SDKINIT_INIT_DEVICE_SIGNAL);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(deviceProperties, "deviceProperties");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(gmaUtil, "gmaUtil");
        this.d = context;
        this.e = deviceProperties;
        this.f = flags;
        this.g = gmaUtil;
    }

    @Override // ads_mobile_sdk.rh3
    public final y11 f() {
        return y11.STATIC_DEVICE;
    }

    @Override // ads_mobile_sdk.rh3
    public final Object s(Continuation continuation) {
        String str;
        String str2;
        String str3 = Build.FINGERPRINT;
        PackageManager packageManager = this.e.c.getPackageManager();
        Intrinsics.checkNotNullExpressionValue(packageManager, "getPackageManager(...)");
        boolean z = packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse("geo:0,0?q=donuts")), 65536) != null;
        PackageManager packageManager2 = this.e.c.getPackageManager();
        Intrinsics.checkNotNullExpressionValue(packageManager2, "getPackageManager(...)");
        boolean z2 = packageManager2.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://www.google.com")), 65536) != null;
        String country = Locale.getDefault().getCountry();
        boolean zBooleanValue = ((Boolean) this.e.f.getValue()).booleanValue();
        boolean zBooleanValue2 = ((Boolean) this.e.k.getValue()).booleanValue();
        boolean zBooleanValue3 = ((Boolean) this.e.h.getValue()).booleanValue();
        boolean zBooleanValue4 = ((Boolean) this.e.g.getValue()).booleanValue();
        String language = Locale.getDefault().getLanguage();
        List listCreateListBuilder = CollectionsKt__CollectionsJVMKt.createListBuilder();
        LocaleList localeList = LocaleList.getDefault();
        Intrinsics.checkNotNullExpressionValue(localeList, "getDefault(...)");
        int size = localeList.size();
        for (int i = 0; i < size; i++) {
            String language2 = localeList.get(i).getLanguage();
            Intrinsics.checkNotNullExpressionValue(language2, "getLanguage(...)");
            listCreateListBuilder.add(language2);
        }
        List listBuild = CollectionsKt__CollectionsJVMKt.build(listCreateListBuilder);
        String str4 = (String) this.e.j.getValue();
        String str5 = (String) this.e.i.getValue();
        this.e.getClass();
        boolean z3 = z;
        long availableBytes = new StatFs(Environment.getDataDirectory().getAbsolutePath()).getAvailableBytes() / ((long) 1024);
        boolean zBooleanValue5 = ((Boolean) this.e.m.getValue()).booleanValue();
        ex0 ex0Var = this.f;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:add_system_default_locale", C3522b4.i.W);
        Boolean bool = Boolean.FALSE;
        ir irVar = yr.b;
        if (((Boolean) ex0Var.a("gads:add_system_default_locale", bool, irVar)).booleanValue()) {
            o21 o21Var = this.g;
            Context context = this.d;
            o21Var.getClass();
            n21 n21VarA = o21.a(context);
            str = n21VarA.b;
            str2 = n21VarA.a;
        } else {
            str = null;
            str2 = null;
        }
        ex0 ex0Var2 = this.f;
        ex0Var2.getClass();
        Intrinsics.checkNotNullParameter("gads:enable_os_version_in_decagon_ad_request:enabled", C3522b4.i.W);
        String str6 = ((Boolean) ex0Var2.a("gads:enable_os_version_in_decagon_ad_request:enabled", bool, irVar)).booleanValue() ? Build.VERSION.RELEASE : null;
        String str7 = Build.MODEL;
        int i2 = Build.VERSION.SDK_INT;
        boolean zG = g();
        Intrinsics.checkNotNull(country);
        Intrinsics.checkNotNull(language);
        Intrinsics.checkNotNull(str7);
        Intrinsics.checkNotNull(str3);
        return new q01(new jl3(z3, z2, country, str, zBooleanValue3, zBooleanValue4, language, listBuild, str2, str4, str7, str3, availableBytes, zBooleanValue2, str5, zBooleanValue, i2, str6, zG, zBooleanValue5));
    }

    public final boolean g() {
        int identifier = this.d.getResources().getIdentifier("Theme.Translucent", "style", "android");
        int identifier2 = this.d.getResources().getIdentifier("Theme.GoogleMobileAds", "style", this.d.getPackageName());
        if (identifier == 0 && identifier2 == 0) {
            f01.b("Please set theme of AdActivity to @style/Theme.GoogleMobileAds to enable\n      transparent background interstitial ads.", null);
            return false;
        }
        try {
            int i = this.d.getPackageManager().getActivityInfo(new ComponentName(this.d.getPackageName(), "com.google.android.libraries.ads.mobile.sdk.common.AdActivity"), 0).theme;
            if (i != identifier && i != identifier2) {
                f01.b("Please set theme of AdActivity to @style/Theme.GoogleMobileAds to enable\n      transparent background interstitial ads.", null);
                return false;
            }
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            Splitter splitter = f01.a;
            f01.c("Failed to fetch AdActivity theme: " + e, null);
            f01.b("Please set theme of AdActivity to @style/Theme.GoogleMobileAds to enable\n      transparent background interstitial ads.", null);
            return false;
        }
    }
}
