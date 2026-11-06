package com.ironsource;

import ads_mobile_sdk.hr$$ExternalSyntheticApiModelOutline1;
import android.app.ActivityManager;
import android.app.ApplicationExitInfo;
import android.content.Context;
import android.os.Build;
import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.logger.IronLog;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.vd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3896vd implements InterfaceC3956z1 {
    public static final C3896vd a = new C3896vd();
    private static final int b = 0;
    private static final int c = 0;

    private C3896vd() {
    }

    private final A1 b(final ApplicationExitInfo applicationExitInfo) {
        long timestamp = applicationExitInfo.getTimestamp();
        int importance = applicationExitInfo.getImportance();
        String description = applicationExitInfo.getDescription();
        if (description == null) {
            description = "";
        }
        int reason = applicationExitInfo.getReason();
        boolean z = applicationExitInfo.getReason() == 6;
        String processName = applicationExitInfo.getProcessName();
        Intrinsics.checkNotNullExpressionValue(processName, "getProcessName(...)");
        return new A1(timestamp, importance, description, reason, z, processName, new Function0() { // from class: com.ironsource.vd$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return C3896vd.c(applicationExitInfo);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final StackTraceElement[] c(ApplicationExitInfo applicationExitInfo) {
        return a.a(applicationExitInfo);
    }

    @Override // com.ironsource.InterfaceC3956z1
    public List<A1> a() {
        Context applicationContext;
        if (Build.VERSION.SDK_INT >= 30 && (applicationContext = ContextProvider.getInstance().getApplicationContext()) != null) {
            return a(applicationContext);
        }
        return CollectionsKt__CollectionsKt.emptyList();
    }

    private final List<A1> a(Context context) {
        Object systemService = context.getSystemService("activity");
        ActivityManager activityManager = systemService instanceof ActivityManager ? (ActivityManager) systemService : null;
        if (activityManager == null) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        try {
            List historicalProcessExitReasons = activityManager.getHistoricalProcessExitReasons(context.getPackageName(), 0, 0);
            Intrinsics.checkNotNullExpressionValue(historicalProcessExitReasons, "getHistoricalProcessExitReasons(...)");
            ArrayList arrayList = new ArrayList();
            for (Object obj : historicalProcessExitReasons) {
                if (hr$$ExternalSyntheticApiModelOutline1.m(obj).getReason() != 5) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ApplicationExitInfo applicationExitInfoM = hr$$ExternalSyntheticApiModelOutline1.m(it.next());
                C3896vd c3896vd = a;
                Intrinsics.checkNotNull(applicationExitInfoM);
                arrayList2.add(c3896vd.b(applicationExitInfoM));
            }
            return arrayList2;
        } catch (Throwable th) {
            IronLog.INTERNAL.error("anr reporter: failed to read exit reasons: " + th);
            return CollectionsKt__CollectionsKt.emptyList();
        }
    }

    private final StackTraceElement[] a(ApplicationExitInfo applicationExitInfo) {
        StackTraceElement[] stackTraceElementArrA;
        try {
            InputStream traceInputStream = applicationExitInfo.getTraceInputStream();
            if (traceInputStream != null && (stackTraceElementArrA = E1.a.a(traceInputStream)) != null) {
                return stackTraceElementArrA;
            }
            return new StackTraceElement[0];
        } catch (Throwable th) {
            IronLog.INTERNAL.error("anr reporter: failed to read trace: " + th);
            return new StackTraceElement[0];
        }
    }
}
