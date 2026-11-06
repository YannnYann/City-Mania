package io.bidmachine.internal;

import android.content.Context;
import io.bidmachine.BidMachineSharedPreferenceKt;
import io.bidmachine.SessionManager;
import io.bidmachine.util.MathUtilsKt;
import io.bidmachine.util.UtilsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.bidmachine.internal.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C4219c implements SessionManager.Observer {
    public static final a d = new a(null);
    public Context a;
    public int b;
    public String c;

    /* JADX INFO: renamed from: io.bidmachine.internal.c$a */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public final void a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.a = context.getApplicationContext();
        this.b = BidMachineSharedPreferenceKt.INSTANCE.getLastBMIFVTtlSessionCount(context);
    }

    public final void b(Context context, int i) {
        Intrinsics.checkNotNullParameter(context, "context");
        int i2 = this.b;
        int iNonNegative = MathUtilsKt.nonNegative(i);
        if (iNonNegative == i2) {
            return;
        }
        this.b = iNonNegative;
        if (iNonNegative <= 0) {
            BidMachineSharedPreferenceKt.INSTANCE.setBMIFVTtlSessionCountRemaining(context, 0);
        } else if (i2 == 0) {
            BidMachineSharedPreferenceKt.INSTANCE.setBMIFVTtlSessionCountRemaining(context, iNonNegative);
        } else if (iNonNegative < i2) {
            BidMachineSharedPreferenceKt.INSTANCE.decreaseBMIFVTtlSessionCountRemaining(context, i2 - iNonNegative);
            a(context, iNonNegative);
        } else {
            BidMachineSharedPreferenceKt.INSTANCE.increaseBMIFVTtlSessionCountRemaining(context, iNonNegative - i2);
        }
        BidMachineSharedPreferenceKt.INSTANCE.setLastBMIFVTtlSessionCount(context, iNonNegative);
    }

    @Override // io.bidmachine.SessionManager.Observer
    public void onSessionEvent(SessionManager.Status status) {
        Intrinsics.checkNotNullParameter(status, "status");
        if (status != SessionManager.Status.START) {
            return;
        }
        a();
    }

    public final void a() {
        Context context = this.a;
        if (context == null) {
            return;
        }
        BidMachineSharedPreferenceKt.decreaseBMIFVTtlSessionCountRemaining$default(BidMachineSharedPreferenceKt.INSTANCE, context, 0, 2, null);
        a(context, this.b);
    }

    public final void a(Context context, int i) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (i > 0) {
            BidMachineSharedPreferenceKt bidMachineSharedPreferenceKt = BidMachineSharedPreferenceKt.INSTANCE;
            if (bidMachineSharedPreferenceKt.getBMIFVTtlSessionCountRemaining(context) > 0) {
                return;
            }
            this.c = bidMachineSharedPreferenceKt.generateBMIFV(context, i);
        }
    }

    public final String b(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        String strNotEmptyOrNull = UtilsKt.notEmptyOrNull(this.c);
        if (strNotEmptyOrNull != null) {
            return strNotEmptyOrNull;
        }
        String strObtainBMIFV = BidMachineSharedPreferenceKt.INSTANCE.obtainBMIFV(context, this.b);
        this.c = strObtainBMIFV;
        return strObtainBMIFV;
    }
}
