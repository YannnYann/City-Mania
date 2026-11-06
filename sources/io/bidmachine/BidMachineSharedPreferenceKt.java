package io.bidmachine;

import android.content.Context;
import io.bidmachine.internal.S;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class BidMachineSharedPreferenceKt {
    public static final BidMachineSharedPreferenceKt INSTANCE = new BidMachineSharedPreferenceKt();

    private BidMachineSharedPreferenceKt() {
    }

    public static /* synthetic */ void decreaseBMIFVTtlSessionCountRemaining$default(BidMachineSharedPreferenceKt bidMachineSharedPreferenceKt, Context context, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 1;
        }
        bidMachineSharedPreferenceKt.decreaseBMIFVTtlSessionCountRemaining(context, i);
    }

    public static /* synthetic */ void increaseBMIFVTtlSessionCountRemaining$default(BidMachineSharedPreferenceKt bidMachineSharedPreferenceKt, Context context, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 1;
        }
        bidMachineSharedPreferenceKt.increaseBMIFVTtlSessionCountRemaining(context, i);
    }

    public final /* synthetic */ void clear(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        n.b(context);
    }

    public final /* synthetic */ void decreaseBMIFVTtlSessionCountRemaining(Context context, int i) {
        Intrinsics.checkNotNullParameter(context, "context");
        n.a(context, i);
    }

    public final /* synthetic */ String generateBMIFV(Context context, int i) {
        Intrinsics.checkNotNullParameter(context, "context");
        String strB = n.b(context, i);
        Intrinsics.checkNotNullExpressionValue(strB, "generateBMIFV(context, ttlSessionCount)");
        return strB;
    }

    public final /* synthetic */ int getBMIFVTtlSessionCountRemaining(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return n.e(context);
    }

    public final /* synthetic */ S getCurrentVersionMilestone(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return n.g(context);
    }

    public final /* synthetic */ List getHistoryVersionMilestoneList(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        List listH = n.h(context);
        Intrinsics.checkNotNullExpressionValue(listH, "getHistoryVersionMilestoneList(context)");
        return listH;
    }

    public final /* synthetic */ int getLastBMIFVTtlSessionCount(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return n.r(context);
    }

    public final /* synthetic */ long getSdkInstallTime(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return n.u(context);
    }

    public final /* synthetic */ boolean hasBMIFV(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return n.A(context);
    }

    public final /* synthetic */ void increaseBMIFVTtlSessionCountRemaining(Context context, int i) {
        Intrinsics.checkNotNullParameter(context, "context");
        n.c(context, i);
    }

    public final /* synthetic */ String obtainBMIFV(Context context, int i) {
        Intrinsics.checkNotNullParameter(context, "context");
        String strD = n.d(context, i);
        Intrinsics.checkNotNullExpressionValue(strD, "obtainBMIFV(context, ttlSessionCount)");
        return strD;
    }

    public final /* synthetic */ void setBMIFVTtlSessionCountRemaining(Context context, int i) {
        Intrinsics.checkNotNullParameter(context, "context");
        n.e(context, i);
    }

    public final /* synthetic */ void setCurrentVersionMilestone(Context context, S s) {
        Intrinsics.checkNotNullParameter(context, "context");
        n.a(context, s);
    }

    public final /* synthetic */ void setHistoryVersionMilestoneList(Context context, List historyVersionMilestoneList) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(historyVersionMilestoneList, "historyVersionMilestoneList");
        n.a(context, historyVersionMilestoneList);
    }

    public final /* synthetic */ void setLastBMIFVTtlSessionCount(Context context, int i) {
        Intrinsics.checkNotNullParameter(context, "context");
        n.f(context, i);
    }

    public final /* synthetic */ void setSdkInstallTime(Context context, long j) {
        Intrinsics.checkNotNullParameter(context, "context");
        n.b(context, j);
    }
}
