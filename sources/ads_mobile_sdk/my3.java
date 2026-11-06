package ads_mobile_sdk;

import java.util.Locale;
import java.util.Optional;

/* JADX INFO: loaded from: classes.dex */
public final class my3 extends Exception {
    /* JADX WARN: Illegal instructions before constructor call */
    public my3(ky3 ky3Var, wu2 wu2Var, long j) {
        int iA = p30.a(((~2143124030) & 85005376) | 430547086, (2143124030 & 878451808) | 1894615585, -1294155075, 737454769) ^ (1747844822 % 1617876982);
        Locale locale = Locale.US;
        Object[] objArr = new Object[iA];
        objArr[0] = Long.valueOf(ky3Var.d());
        objArr[1] = Long.valueOf(wu2Var.e());
        Long lValueOf = Long.valueOf(j);
        objArr[2] = lValueOf;
        super(String.format(locale, n34.a("bk3t6gFTc30="), objArr));
        Optional.of(wu2Var);
        Optional.of(lValueOf);
    }

    public my3(ky3 ky3Var, Exception exc) {
        super(String.format(Locale.US, n34.a("bk0="), Long.valueOf(ky3Var.d())), exc);
        Optional.empty();
        Optional.empty();
    }
}
