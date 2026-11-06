package ads_mobile_sdk;

import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public enum lx implements yh1.a {
    /* JADX INFO: Fake field, exist only in values array */
    HYPERACTIVE_BUCKET(0),
    /* JADX INFO: Fake field, exist only in values array */
    REAL_USER_MONITORING(1),
    /* JADX INFO: Fake field, exist only in values array */
    ADSENSE(2),
    /* JADX INFO: Fake field, exist only in values array */
    GPT_PROD_IMPL_CONTEXT(4),
    /* JADX INFO: Fake field, exist only in values array */
    GENOTYPE_OBSERVER(6),
    /* JADX INFO: Fake field, exist only in values array */
    CLIENT_AGE(7),
    /* JADX INFO: Fake field, exist only in values array */
    UNITY_GMA_SDK(8),
    /* JADX INFO: Fake field, exist only in values array */
    GENERATE_BID_LOSS(9),
    /* JADX INFO: Fake field, exist only in values array */
    SCORE_ADS(10),
    /* JADX INFO: Fake field, exist only in values array */
    GPT_LOADER(11),
    /* JADX INFO: Fake field, exist only in values array */
    GPT_LOADER_FOR_NON_GPT_TESTS(18),
    GMA_SDK(12),
    /* JADX INFO: Fake field, exist only in values array */
    GPT_PUB_CONSOLE(14),
    /* JADX INFO: Fake field, exist only in values array */
    ADSHIELD(15),
    /* JADX INFO: Fake field, exist only in values array */
    IMA(16),
    /* JADX INFO: Fake field, exist only in values array */
    HYPERACTIVE_BUCKET(17),
    /* JADX INFO: Fake field, exist only in values array */
    REAL_USER_MONITORING(19),
    /* JADX INFO: Fake field, exist only in values array */
    HYPERACTIVE_BUCKET(20),
    /* JADX INFO: Fake field, exist only in values array */
    UNITY_GMA_SDK(21),
    UNRECOGNIZED(-1);

    public final int a;

    @Override // ads_mobile_sdk.yh1.a
    public final int getNumber() {
        if (this == UNRECOGNIZED) {
            return yh1.a();
        }
        return this.a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        StringBuilder sb = new StringBuilder("<");
        sf.a(lx.class, sb, '@').append(Integer.toHexString(System.identityHashCode(this)));
        if (this != UNRECOGNIZED) {
            sb.append(" number=");
            sb.append(getNumber());
        }
        sb.append(" name=");
        sb.append(name());
        sb.append('>');
        return sb.toString();
    }

    lx(int i) {
        this.a = i;
    }
}
