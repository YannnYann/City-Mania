package com.ironsource.adqualitysdk.sdk.i;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ὶ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0767 extends BroadcastReceiver {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static final String f3095 = StringFog.decrypt("5nGcL6xDpDncdZw9kVSsD8FijSo=\n", "qBToWMMxz2o=\n");

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final Context f3098;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public boolean f3097 = false;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final HashSet f3096 = new HashSet();

    public C0767(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f3098 = applicationContext;
        AbstractC0182.m1148(f3095, StringFog.decrypt("vv58ru8YCFyY6yi49BkOGI76e66mBAofiPJ+v/RY\n", "7ZsI2oZ2b3w=\n"));
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(StringFog.decrypt("SY7KxY3mZHhGhdqZgeBuOAaj4fmsykMCYbbn47vQQx5pruny\n", "KOCut+KPAFY=\n"));
        applicationContext.registerReceiver(this, intentFilter);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1442(C0767 c0767, boolean z) {
        synchronized (c0767) {
            c0767.f3097 = z;
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        AbstractC0272.m1214(new C0768(this, intent, context));
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final void m1444() {
        HashSet hashSet;
        synchronized (this) {
            hashSet = new HashSet(this.f3096);
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            ((InterfaceC0418) it.next()).getClass();
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static boolean m1443(C0767 c0767, Context context) {
        c0767.getClass();
        NetworkInfo activeNetworkInfo = context != null ? ((ConnectivityManager) context.getSystemService(StringFog.decrypt("OhkDGLrwpZUvHxkP\n", "WXZtdt+T0fw=\n"))).getActiveNetworkInfo() : null;
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return false;
        }
        AbstractC0182.m1154(f3095, StringFog.decrypt("hTCKzBXHKFw=\n", "y1X+u3q1Q3w=\n") + activeNetworkInfo.getTypeName() + StringFog.decrypt("fwn6e5VRFCI6Drs=\n", "X2qVFfs0d1Y=\n"));
        return true;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized boolean m1445() {
        return this.f3097;
    }
}
