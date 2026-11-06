package j$.time.chrono;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
public final class D implements m {
    public static final D BEFORE_ROC;
    public static final D ROC;
    private static final /* synthetic */ D[] a;

    public static D valueOf(String str) {
        return (D) Enum.valueOf(D.class, str);
    }

    public static D[] values() {
        return (D[]) a.clone();
    }

    static {
        D d = new D("BEFORE_ROC", 0);
        BEFORE_ROC = d;
        D d2 = new D("ROC", 1);
        ROC = d2;
        a = new D[]{d, d2};
    }

    @Override // j$.time.chrono.m
    public final int p() {
        return ordinal();
    }
}
