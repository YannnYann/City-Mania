package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﾕ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C1026 extends AbstractC1013 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public Context f3861;

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1013
    /* JADX INFO: renamed from: ﻛ */
    public final boolean mo1050() {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) this.f3861.getSystemService(StringFog.decrypt("b3OkW4B8nyI=\n", "DhDQMvYV61s=\n"))).getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return false;
        }
        String packageName = this.f3861.getPackageName();
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.importance == 100 && runningAppProcessInfo.processName.equals(packageName)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1013
    /* JADX INFO: renamed from: ﾒ */
    public final Activity mo1052() {
        return null;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1013
    /* JADX INFO: renamed from: ﾒ */
    public final synchronized void mo1054(Application application, Activity activity) {
        try {
            if (application != null) {
                this.f3861 = application.getApplicationContext();
            } else if (activity != null) {
                this.f3861 = activity.getApplicationContext();
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
