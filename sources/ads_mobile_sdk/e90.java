package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public final class e90 extends vz0 implements uw1 {
    private static final e90 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 4;
    public static final int g = 5;
    public static final int h = 6;
    private int bitField0_;
    private du body_;
    private du bodydigest_;
    private int bodylength_;
    private d90 firstline_;
    private du remoteIp_;
    private byte memoizedIsInitialized = 2;
    private yh1.f<w80> headers_ = vz0.k();

    static {
        e90 e90Var = new e90();
        DEFAULT_INSTANCE = e90Var;
        vz0.a((Class<e90>) e90.class, e90Var);
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

    public e90() {
        du duVar = du.b;
        this.body_ = duVar;
        this.bodydigest_ = duVar;
        this.remoteIp_ = duVar;
    }
}
