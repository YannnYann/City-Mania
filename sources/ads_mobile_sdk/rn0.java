package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
public final class rn0 implements vv2 {
    public final ks1 a;
    public final ts3 b;
    public final tx c;
    public final long d;

    public rn0(ks1 ks1Var, ts3 ts3Var, tx txVar, long j) {
        this.a = ks1Var;
        this.b = ts3Var;
        this.c = txVar;
        this.d = j;
    }

    @Override // ads_mobile_sdk.vv2
    public final boolean a(iv2 iv2Var) {
        if (iv2Var != null && !iv2Var.equals(iv2.x())) {
            if (iv2Var.w() != this.a.get()) {
                this.b.b(lq0.EVENT_ID_DG_VALIDATOR_UPDATE_METADATA_ARCH_MISMATCH);
                return true;
            }
            long jX = iv2Var.y().x() * 1000;
            this.c.getClass();
            boolean z = jX - System.currentTimeMillis() <= this.d;
            if (z) {
                this.b.b(lq0.EVENT_ID_DG_VALIDATOR_UPDATE_PROGRAM_ALMOST_EXPIRED);
            }
            return z;
        }
        this.b.b(lq0.EVENT_ID_DG_VALIDATOR_UPDATE_METADATA_NOT_FOUND);
        return true;
    }

    @Override // ads_mobile_sdk.vv2
    public final boolean b(iv2 iv2Var) {
        if (iv2Var != null && !iv2Var.equals(iv2.x())) {
            if (iv2Var.w() == this.a.get()) {
                return true;
            }
            this.b.b(lq0.EVENT_ID_DG_VALIDATOR_INIT_METADATA_ARCH_MISMATCH);
            return false;
        }
        this.b.b(lq0.EVENT_ID_DG_VALIDATOR_INIT_METADATA_NOT_FOUND);
        return false;
    }
}
