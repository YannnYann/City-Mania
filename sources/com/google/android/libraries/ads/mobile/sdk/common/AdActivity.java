package com.google.android.libraries.ads.mobile.sdk.common;

import ads_mobile_sdk.a01;
import ads_mobile_sdk.as3;
import ads_mobile_sdk.f01;
import ads_mobile_sdk.h0;
import ads_mobile_sdk.i0;
import ads_mobile_sdk.k0;
import ads_mobile_sdk.ur3;
import ads_mobile_sdk.vf0;
import ads_mobile_sdk.ws3;
import ads_mobile_sdk.zz0;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.ComponentActivity;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes3.dex */
public final class AdActivity extends ComponentActivity {
    public h0 a;

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        h0 h0Var = this.a;
        if (h0Var != null) {
            h0Var.onConfigurationChanged(newConfig);
        }
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        Job job;
        Bundle bundle2;
        super.onCreate(bundle);
        a01.a.getClass();
        if (!zz0.b.b()) {
            finish();
            return;
        }
        Bundle extras = getIntent().getExtras();
        Integer numValueOf = (extras == null || (bundle2 = extras.getBundle("ad_activity_delegate_bundle")) == null) ? null : Integer.valueOf(bundle2.getInt("ad_activity_delegate"));
        if (numValueOf == null) {
            ((as3) ((ur3) ((vf0) zz0.a()).F.get())).a("AdActivityMissingDelegateKey", (Throwable) new Exception("AdActivityMissingDelegateKey"));
            f01.a("Could not retrieve AdActivityDelegate key", (Throwable) null);
            finish();
            return;
        }
        i0 i0Var = (i0) ((k0) ((vf0) zz0.a()).S.get()).d.remove(numValueOf);
        if (i0Var != null && (job = i0Var.b) != null) {
            Job.DefaultImpls.cancel$default(job, null, 1, null);
        }
        h0 h0Var = i0Var != null ? i0Var.a : null;
        if (h0Var == null) {
            ((as3) ((ur3) ((vf0) zz0.a()).F.get())).a("AdActivityMissingDelegate", (Throwable) new Exception("AdActivityMissingDelegate"));
            f01.a("No AdActivityDelegate associated with key", (Throwable) null);
            finish();
            return;
        }
        this.a = h0Var;
        requestWindowFeature(1);
        try {
            Intrinsics.checkNotNullExpressionValue(getWindow().getDecorView(), "getDecorView(...)");
            h0Var.a(this);
        } catch (Exception e) {
            a01.a.getClass();
            ((as3) ((ur3) ((vf0) zz0.a()).F.get())).a("AdActivityDecorViewWorkaround", (Throwable) e);
            f01.a("Failed to get DecorView", e);
            CoroutineScope coroutineScope = (CoroutineScope) ((vf0) zz0.a()).u.get();
            a block = new a(h0Var, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        h0 h0Var = this.a;
        if (h0Var != null) {
            h0Var.onDestroy();
        }
        this.a = null;
        super.onDestroy();
    }

    @Override // android.app.Activity
    public final void onPause() {
        h0 h0Var = this.a;
        if (h0Var != null) {
            h0Var.onPause();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    public final void onRestart() {
        super.onRestart();
        h0 h0Var = this.a;
        if (h0Var != null) {
            h0Var.c();
        }
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        h0 h0Var = this.a;
        if (h0Var != null) {
            h0Var.onResume();
        }
    }

    @Override // android.app.Activity
    public final void onStart() {
        super.onStart();
        h0 h0Var = this.a;
        if (h0Var != null) {
            h0Var.a();
        }
    }

    @Override // android.app.Activity
    public final void onStop() {
        h0 h0Var = this.a;
        if (h0Var != null) {
            h0Var.onStop();
        }
        super.onStop();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onUserLeaveHint() {
        super.onUserLeaveHint();
        h0 h0Var = this.a;
        if (h0Var != null) {
            h0Var.b();
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void setContentView(int i) {
        super.setContentView(i);
        h0 h0Var = this.a;
        if (h0Var != null) {
            h0Var.e();
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void setContentView(View view) {
        super.setContentView(view);
        h0 h0Var = this.a;
        if (h0Var != null) {
            h0Var.e();
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        h0 h0Var = this.a;
        if (h0Var != null) {
            h0Var.e();
        }
    }
}
