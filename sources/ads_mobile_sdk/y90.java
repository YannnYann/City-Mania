package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class y90 extends vz0 implements uw1 {
    private static final y90 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 4;
    public static final int g = 5;
    public static final int h = 6;
    public static final int i = 7;
    public static final int j = 8;
    public static final int k = 9;
    private int adResourceType_;
    private int bitField0_;
    private int id_;
    private int parentId_;
    private a90 request_;
    private e90 response_;
    private byte memoizedIsInitialized = 2;
    private String url_ = "";
    private yh1.c childIds_ = vz0.i();
    private String tagName_ = "";
    private yh1.f<String> matchedBlacklist_ = vz0.k();

    static {
        y90 y90Var = new y90();
        DEFAULT_INSTANCE = y90Var;
        vz0.a((Class<y90>) y90.class, y90Var);
    }

    public static x90 v() {
        return (x90) DEFAULT_INSTANCE.h();
    }

    public final void b(String str) {
        Objects.requireNonNull(str);
        this.bitField0_ |= 2;
        this.url_ = str;
    }

    public final void a(a90 a90Var) {
        Objects.requireNonNull(a90Var);
        this.request_ = a90Var;
        this.bitField0_ |= 4;
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        switch (r70.a[dVar.ordinal()]) {
            case 3:
                break;
            case 7:
                this.memoizedIsInitialized = (byte) (obj == null ? 0 : 1);
                break;
        }
        return null;
    }
}
