package j$.time.chrono;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
public final class J implements m {
    public static final J BE;
    public static final J BEFORE_BE;
    private static final /* synthetic */ J[] a;

    public static J valueOf(String str) {
        return (J) Enum.valueOf(J.class, str);
    }

    public static J[] values() {
        return (J[]) a.clone();
    }

    static {
        J j = new J("BEFORE_BE", 0);
        BEFORE_BE = j;
        J j2 = new J("BE", 1);
        BE = j2;
        a = new J[]{j, j2};
    }

    @Override // j$.time.chrono.m
    public final int p() {
        return ordinal();
    }
}
