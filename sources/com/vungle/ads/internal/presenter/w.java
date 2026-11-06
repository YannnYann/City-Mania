package com.vungle.ads.internal.presenter;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.model.i0;
import com.vungle.ads.internal.o0;
import com.vungle.ads.internal.o1;
import com.vungle.ads.internal.privacy.PrivacyConsent;
import com.vungle.ads.internal.privacy.PrivacyManager;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class w {
    public final Context a;
    public final x b;
    public final i0 c;
    public final com.vungle.ads.internal.platform.f d;
    public Long e;
    public a f;
    public final Lazy g;
    public AlertDialog h;
    public final Lazy i;
    public final LinkedHashMap j;
    public final Map k;
    public final LinkedHashMap l;
    public final Map m;
    public com.vungle.ads.internal.omsdk.b n;
    public o0 o;

    public w(Context context, o1 delegate, i0 advertisement, com.vungle.ads.internal.platform.f platform) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Intrinsics.checkNotNullParameter(advertisement, "advertisement");
        Intrinsics.checkNotNullParameter(platform, "platform");
        this.a = context;
        this.b = delegate;
        this.c = advertisement;
        this.d = platform;
        this.g = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new v(context));
        this.i = LazyKt__LazyJVMKt.lazy(new t(this));
        this.j = new LinkedHashMap();
        Boolean bool = Boolean.TRUE;
        this.k = MapsKt__MapsKt.mapOf(TuplesKt.to("video.mute", bool), TuplesKt.to("video.unmute", bool));
        this.l = new LinkedHashMap();
        this.m = MapsKt__MapsKt.mapOf(TuplesKt.to(8, bool), TuplesKt.to(9, bool), TuplesKt.to(10, bool));
        this.o = new o0(context, advertisement);
    }

    public final com.vungle.ads.internal.util.t a() {
        return (com.vungle.ads.internal.util.t) this.i.getValue();
    }

    public final com.vungle.ads.internal.network.r b() {
        return (com.vungle.ads.internal.network.r) this.g.getValue();
    }

    public final void c() {
        ConfigManager.INSTANCE.getClass();
        if (ConfigManager.m()) {
            PrivacyManager.INSTANCE.getClass();
            if (Intrinsics.areEqual("unknown", PrivacyManager.b())) {
                d();
            }
        }
        a aVar = this.f;
        if (aVar != null) {
            aVar.a("start", null, ((o1) this.b).p());
        }
        this.e = Long.valueOf(System.currentTimeMillis());
    }

    public final void d() {
        PrivacyManager.INSTANCE.getClass();
        PrivacyManager.a("opted_out_by_timeout", "vungle_modal", null);
        if (!(this.a instanceof Activity)) {
            boolean z = com.vungle.ads.internal.util.v.a;
            com.vungle.ads.internal.util.u.c("NativeAdPresenter", "We can not show GDPR dialog with application context.");
            return;
        }
        DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: com.vungle.ads.internal.presenter.w$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                w.a(this.f$0, dialogInterface, i);
            }
        };
        ConfigManager.INSTANCE.getClass();
        String strL = ConfigManager.l();
        String strK = ConfigManager.k();
        String strI = ConfigManager.i();
        String strJ = ConfigManager.j();
        Context context = this.a;
        AlertDialog.Builder builder = new AlertDialog.Builder(new ContextThemeWrapper(context, ((Activity) context).getApplicationInfo().theme));
        if (strL != null && strL.length() != 0) {
            builder.setTitle(strL);
        }
        if (strK != null && strK.length() != 0) {
            builder.setMessage(strK);
        }
        builder.setPositiveButton(strI, onClickListener);
        builder.setNegativeButton(strJ, onClickListener);
        builder.setCancelable(false);
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.vungle.ads.internal.presenter.w$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                w.a(this.f$0, dialogInterface);
            }
        });
        this.h = alertDialogCreate;
        alertDialogCreate.show();
    }

    public final void a(a aVar) {
        this.f = aVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x011c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a(java.lang.String r11, java.lang.String r12, java.lang.String r13) {
        /*
            Method dump skipped, instruction units count: 589
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.ads.internal.presenter.w.a(java.lang.String, java.lang.String, java.lang.String):void");
    }

    public final void a(MotionEvent motionEvent) {
        if (motionEvent != null) {
            boolean z = com.vungle.ads.internal.util.v.a;
            com.vungle.ads.internal.util.u.a("NativeAdPresenter", "user interaction on Native ad");
            this.o.a(motionEvent);
        }
    }

    public static final void a(w this$0, DialogInterface dialogInterface, int i) {
        String value;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (i == -2) {
            value = PrivacyConsent.OPT_OUT.getValue();
        } else if (i != -1) {
            value = "opted_out_by_timeout";
        } else {
            value = PrivacyConsent.OPT_IN.getValue();
        }
        PrivacyManager.INSTANCE.getClass();
        PrivacyManager.a(value, "vungle_modal", null);
        this$0.getClass();
        ConfigManager.INSTANCE.getClass();
        if (ConfigManager.m() && Intrinsics.areEqual("unknown", PrivacyManager.b())) {
            this$0.d();
        }
    }

    public static final void a(w this$0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.h = null;
    }

    public final void a(View view, String omSdkData) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(omSdkData, "omSdkData");
        boolean z = this.c.z();
        if (omSdkData.length() <= 0 || !z) {
            return;
        }
        String strA = ((com.vungle.ads.internal.omsdk.c) LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new s(this.a)).getValue()).a();
        if (strA != null) {
            com.vungle.ads.internal.omsdk.b bVar = new com.vungle.ads.internal.omsdk.b(omSdkData, strA, ((o1) this.b).s());
            bVar.a(view);
            this.n = bVar;
        }
    }

    public final void a(int i, Map map) {
        boolean z = com.vungle.ads.internal.util.v.a;
        com.vungle.ads.internal.util.u.a("NativeAdPresenter", "onOMEvent: event=" + i + " value=" + map);
        Object obj = this.m.get(Integer.valueOf(i));
        Boolean bool = Boolean.TRUE;
        if (!Intrinsics.areEqual(obj, bool) && Intrinsics.areEqual(this.l.get(Integer.valueOf(i)), bool)) {
            com.vungle.ads.internal.util.u.a("NativeAdPresenter", "Ignore this already fired om event: " + i);
        }
        this.l.put(Integer.valueOf(i), bool);
        switch (i) {
            case 1:
                com.vungle.ads.internal.omsdk.b bVar = this.n;
                if (bVar != null) {
                    bVar.d();
                }
                break;
            case 2:
                com.vungle.ads.internal.omsdk.b bVar2 = this.n;
                if (bVar2 != null) {
                    bVar2.c();
                }
                break;
            case 3:
                com.vungle.ads.internal.omsdk.b bVar3 = this.n;
                if (bVar3 != null) {
                    bVar3.b();
                }
                break;
            case 4:
                Object obj2 = map != null ? map.get("OM_KEY_DURATION") : null;
                Number number = obj2 instanceof Number ? (Number) obj2 : null;
                float fFloatValue = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                float fFloatValue2 = number != null ? number.floatValue() : 0.0f;
                Object obj3 = map != null ? map.get("OM_KEY_VOLUME") : null;
                Number number2 = obj3 instanceof Number ? (Number) obj3 : null;
                if (number2 != null) {
                    fFloatValue = number2.floatValue();
                }
                com.vungle.ads.internal.omsdk.b bVar4 = this.n;
                if (bVar4 != null) {
                    bVar4.a(fFloatValue2, fFloatValue);
                }
                break;
            case 5:
            case 6:
            case 7:
                com.vungle.ads.internal.omsdk.b bVar5 = this.n;
                if (bVar5 != null) {
                    bVar5.a(i);
                }
                break;
            case 8:
                com.vungle.ads.internal.omsdk.b bVar6 = this.n;
                if (bVar6 != null) {
                    bVar6.e();
                }
                break;
            case 9:
                com.vungle.ads.internal.omsdk.b bVar7 = this.n;
                if (bVar7 != null) {
                    bVar7.a(true);
                }
                break;
            case 10:
                com.vungle.ads.internal.omsdk.b bVar8 = this.n;
                if (bVar8 != null) {
                    bVar8.a(false);
                }
                break;
            case 11:
                com.vungle.ads.internal.omsdk.b bVar9 = this.n;
                if (bVar9 != null) {
                    bVar9.a();
                }
                break;
        }
    }
}
