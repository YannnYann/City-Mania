package com.ironsource.adqualitysdk.sdk.i;

import android.R;
import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.webkit.WebView;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ףּ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0865 extends AbstractC0238 implements InterfaceC0443 {

    /* JADX INFO: renamed from: ﭴ, reason: contains not printable characters */
    public C0874 f3330;

    /* JADX INFO: renamed from: ﭸ, reason: contains not printable characters */
    public boolean f3331;

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public boolean f3332;

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public boolean f3333;

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public boolean f3334;

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public Class f3335;

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public C0966 f3336;

    /* JADX INFO: renamed from: ﭖ, reason: contains not printable characters */
    public static final String f3329 = StringFog.decrypt("UtSM9CGb1O1S07D8OZbM8WE=\n", "E7f4nVfyoJQ=\n");

    /* JADX INFO: renamed from: ףּ, reason: contains not printable characters */
    public static final String f3328 = StringFog.decrypt("MaC9tatLjCQhoKXpoVzNKza+pfquUJczIau7tbFdiGQTq4PzrU6N\n", "Us/Qm8I540o=\n");

    public C0865(JSONObject jSONObject, C0624 c0624) {
        super(c0624);
        this.f3334 = false;
        this.f3333 = false;
        this.f3332 = false;
        this.f3331 = false;
        C0874 c0874 = new C0874(jSONObject);
        this.f1542 = c0874;
        this.f3330 = c0874;
        AbstractC0272.m1211(new C0957(this));
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static boolean m1460(C0865 c0865, Activity activity) {
        c0865.getClass();
        Class<?> cls = activity.getClass();
        Class cls2 = c0865.f3335;
        if (cls2 != null) {
            return c0865.f3330.f3355 ? cls2.equals(cls) : cls2.isAssignableFrom(cls);
        }
        return false;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        C0939 c0939 = new C0939(this, activity, bundle);
        if (this.f3330.f3354) {
            AbstractC0272.m1210(c0939);
        } else {
            AbstractC0272.m1212(c0939);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        C0980 c0980 = new C0980(this, activity);
        if (this.f3330.f3354) {
            AbstractC0272.m1210(c0980);
        } else {
            AbstractC0272.m1212(c0980);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        AbstractC0272.m1214(new C0895(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        C0899 c0899 = new C0899(this, activity);
        if (this.f3330.f3354) {
            AbstractC0272.m1210(c0899);
        } else {
            AbstractC0272.m1212(c0899);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        C0898 c0898 = new C0898(this, activity, bundle);
        if (this.f3330.f3354) {
            AbstractC0272.m1210(c0898);
        } else {
            AbstractC0272.m1212(c0898);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        AbstractC0272.m1214(new C0911(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        C0886 c0886 = new C0886(this, activity);
        if (this.f3330.f3354) {
            AbstractC0272.m1210(c0886);
        } else {
            AbstractC0272.m1212(c0886);
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0238
    /* JADX INFO: renamed from: ﾇ */
    public final void mo973(Object obj, ArrayList arrayList) {
        Activity activity = (Activity) obj;
        C0874 c0874 = this.f3330;
        C.m980(activity, WebView.class, c0874.f3356, c0874.f3357, false, false, null, c0874.f1582, arrayList);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0238
    /* JADX INFO: renamed from: ﾒ */
    public final InterfaceC0454 mo974() {
        return this;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0238
    /* JADX INFO: renamed from: ﾇ */
    public final View mo970(Object obj) {
        return ((Activity) obj).findViewById(R.id.content);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0443
    /* JADX INFO: renamed from: ﾇ */
    public final void mo1190(Activity activity) {
        AbstractC0272.m1214(new C0955(this, activity));
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0238
    /* JADX INFO: renamed from: ﾇ */
    public final AbstractViewOnLayoutChangeListenerC3474b0 mo971() {
        return new C3476c0();
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0443
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1191(Activity activity) {
        AbstractC0272.m1214(new C0956(this, activity));
    }
}
