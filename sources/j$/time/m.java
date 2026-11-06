package j$.time;

import com.vungle.ads.internal.protos.Sdk;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
public final class m implements j$.time.temporal.n, j$.time.temporal.o {
    public static final m APRIL;
    public static final m AUGUST;
    public static final m DECEMBER;
    public static final m FEBRUARY;
    public static final m JANUARY;
    public static final m JULY;
    public static final m JUNE;
    public static final m MARCH;
    public static final m MAY;
    public static final m NOVEMBER;
    public static final m OCTOBER;
    public static final m SEPTEMBER;
    private static final m[] a;
    private static final /* synthetic */ m[] b;

    public static m valueOf(String str) {
        return (m) Enum.valueOf(m.class, str);
    }

    public static m[] values() {
        return (m[]) b.clone();
    }

    static {
        m mVar = new m("JANUARY", 0);
        JANUARY = mVar;
        m mVar2 = new m("FEBRUARY", 1);
        FEBRUARY = mVar2;
        m mVar3 = new m("MARCH", 2);
        MARCH = mVar3;
        m mVar4 = new m("APRIL", 3);
        APRIL = mVar4;
        m mVar5 = new m("MAY", 4);
        MAY = mVar5;
        m mVar6 = new m("JUNE", 5);
        JUNE = mVar6;
        m mVar7 = new m("JULY", 6);
        JULY = mVar7;
        m mVar8 = new m("AUGUST", 7);
        AUGUST = mVar8;
        m mVar9 = new m("SEPTEMBER", 8);
        SEPTEMBER = mVar9;
        m mVar10 = new m("OCTOBER", 9);
        OCTOBER = mVar10;
        m mVar11 = new m("NOVEMBER", 10);
        NOVEMBER = mVar11;
        m mVar12 = new m("DECEMBER", 11);
        DECEMBER = mVar12;
        b = new m[]{mVar, mVar2, mVar3, mVar4, mVar5, mVar6, mVar7, mVar8, mVar9, mVar10, mVar11, mVar12};
        a = values();
    }

    public static m S(int i) {
        if (i < 1 || i > 12) {
            throw new c("Invalid value for MonthOfYear: " + i);
        }
        return a[i - 1];
    }

    public final int p() {
        return ordinal() + 1;
    }

    @Override // j$.time.temporal.n
    public final boolean f(j$.time.temporal.s sVar) {
        return sVar instanceof j$.time.temporal.a ? sVar == j$.time.temporal.a.MONTH_OF_YEAR : sVar != null && sVar.W(this);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.x l(j$.time.temporal.s sVar) {
        if (sVar == j$.time.temporal.a.MONTH_OF_YEAR) {
            return sVar.C();
        }
        return super.l(sVar);
    }

    @Override // j$.time.temporal.n
    public final int i(j$.time.temporal.s sVar) {
        if (sVar == j$.time.temporal.a.MONTH_OF_YEAR) {
            return p();
        }
        return super.i(sVar);
    }

    @Override // j$.time.temporal.n
    public final long g(j$.time.temporal.s sVar) {
        if (sVar == j$.time.temporal.a.MONTH_OF_YEAR) {
            return p();
        }
        if (sVar instanceof j$.time.temporal.a) {
            throw new j$.time.temporal.w(d.a("Unsupported field: ", sVar));
        }
        return sVar.r(this);
    }

    public final m T() {
        return a[((((int) 1) + 12) + ordinal()) % 12];
    }

    public final int C(boolean z) {
        int i = l.a[ordinal()];
        return i != 1 ? (i == 2 || i == 3 || i == 4 || i == 5) ? 30 : 31 : z ? 29 : 28;
    }

    public final int J() {
        int i = l.a[ordinal()];
        if (i != 1) {
            return (i == 2 || i == 3 || i == 4 || i == 5) ? 30 : 31;
        }
        return 29;
    }

    public final int r(boolean z) {
        switch (l.a[ordinal()]) {
            case 1:
                return 32;
            case 2:
                return (z ? 1 : 0) + 91;
            case 3:
                return (z ? 1 : 0) + 152;
            case 4:
                return (z ? 1 : 0) + 244;
            case 5:
                return (z ? 1 : 0) + Sdk.SDKError.Reason.MRAID_BRIDGE_ERROR_VALUE;
            case 6:
                return 1;
            case 7:
                return (z ? 1 : 0) + 60;
            case 8:
                return (z ? 1 : 0) + Sdk.SDKError.Reason.TPAT_ERROR_VALUE;
            case 9:
                return (z ? 1 : 0) + 182;
            case 10:
                return (z ? 1 : 0) + Sdk.SDKError.Reason.INVALID_ADUNIT_BID_PAYLOAD_VALUE;
            case 11:
                return (z ? 1 : 0) + 274;
            default:
                return (z ? 1 : 0) + 335;
        }
    }

    @Override // j$.time.temporal.n
    public final Object a(j$.time.temporal.u uVar) {
        if (uVar == j$.time.temporal.t.a()) {
            return j$.time.chrono.s.d;
        }
        if (uVar == j$.time.temporal.t.e()) {
            return j$.time.temporal.b.MONTHS;
        }
        return super.a(uVar);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.m c(j$.time.temporal.m mVar) {
        if (!j$.time.chrono.l.F(mVar).equals(j$.time.chrono.s.d)) {
            throw new c("Adjustment only supported on ISO date-time");
        }
        return mVar.b(p(), j$.time.temporal.a.MONTH_OF_YEAR);
    }
}
