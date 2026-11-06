package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
public final class lu2 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;

    public lu2(dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3, dw2 dw2Var4, dw2 dw2Var5, vh1 vh1Var) {
        this.a = dw2Var;
        this.b = dw2Var2;
        this.c = dw2Var3;
        this.d = dw2Var4;
        this.e = dw2Var5;
        this.f = vh1Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        vv2 vv2Var = (vv2) this.a.get();
        xu2 xu2Var = (xu2) this.b.get();
        wl3 wl3Var = (wl3) this.c.get();
        ts3 ts3Var = (ts3) this.d.get();
        ja3 ja3Var = (ja3) this.e.get();
        na naVar = (na) this.f.get();
        return new rw3(vv2Var, xu2Var, wl3Var, ts3Var, ja3Var, naVar.S().x(), naVar.S().y(), naVar.S().B());
    }
}
