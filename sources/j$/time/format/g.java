package j$.time.format;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;

/* JADX INFO: loaded from: classes2.dex */
final class g extends i {
    private final boolean g;

    g(j$.time.temporal.s sVar, int i, int i2, boolean z, int i3) {
        super(sVar, i, i2, y.NOT_NEGATIVE, i3);
        this.g = z;
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [j$.time.temporal.s, java.lang.Enum] */
    @Override // j$.time.format.i
    final i c() {
        if (this.e == -1) {
            return this;
        }
        return new g(this.a, this.b, this.c, this.g, -1);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [j$.time.temporal.s, java.lang.Enum] */
    @Override // j$.time.format.i
    final i d(int i) {
        return new g(this.a, this.b, this.c, this.g, this.e + i);
    }

    @Override // j$.time.format.i
    final boolean b(q qVar) {
        return qVar.k() && this.b == this.c && !this.g;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [j$.time.temporal.s, java.lang.Enum] */
    @Override // j$.time.format.i, j$.time.format.f
    public final boolean p(s sVar, StringBuilder sb) {
        ?? r0 = this.a;
        Long lE = sVar.e(r0);
        if (lE == null) {
            return false;
        }
        v vVarB = sVar.b();
        long jLongValue = lE.longValue();
        j$.time.temporal.x xVarC = r0.C();
        xVarC.b(jLongValue, r0);
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(xVarC.e());
        BigDecimal bigDecimalAdd = BigDecimal.valueOf(xVarC.d()).subtract(bigDecimalValueOf).add(BigDecimal.ONE);
        BigDecimal bigDecimalSubtract = BigDecimal.valueOf(jLongValue).subtract(bigDecimalValueOf);
        RoundingMode roundingMode = RoundingMode.FLOOR;
        BigDecimal bigDecimalDivide = bigDecimalSubtract.divide(bigDecimalAdd, 9, roundingMode);
        BigDecimal bigDecimal = BigDecimal.ZERO;
        if (bigDecimalDivide.compareTo(bigDecimal) != 0) {
            bigDecimal = bigDecimalDivide.signum() == 0 ? new BigDecimal(BigInteger.ZERO, 0) : bigDecimalDivide.stripTrailingZeros();
        }
        int iScale = bigDecimal.scale();
        boolean z = this.g;
        int i = this.b;
        if (iScale != 0) {
            String strSubstring = bigDecimal.setScale(Math.min(Math.max(bigDecimal.scale(), i), this.c), roundingMode).toPlainString().substring(2);
            vVarB.getClass();
            if (z) {
                sb.append('.');
            }
            sb.append(strSubstring);
            return true;
        }
        if (i <= 0) {
            return true;
        }
        if (z) {
            vVarB.getClass();
            sb.append('.');
        }
        for (int i2 = 0; i2 < i; i2++) {
            vVarB.getClass();
            sb.append('0');
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [j$.time.temporal.s, java.lang.Enum] */
    @Override // j$.time.format.i, j$.time.format.f
    public final int r(q qVar, CharSequence charSequence, int i) {
        int i2 = (qVar.k() || b(qVar)) ? this.b : 0;
        int i3 = (qVar.k() || b(qVar)) ? this.c : 9;
        int length = charSequence.length();
        if (i != length) {
            if (this.g) {
                char cCharAt = charSequence.charAt(i);
                qVar.f().getClass();
                if (cCharAt == '.') {
                    i++;
                } else if (i2 > 0) {
                    return ~i;
                }
            }
            int i4 = i;
            int i5 = i2 + i4;
            if (i5 > length) {
                return ~i4;
            }
            int iMin = Math.min(i3 + i4, length);
            int i6 = 0;
            int i7 = i4;
            while (true) {
                if (i7 >= iMin) {
                    break;
                }
                int i8 = i7 + 1;
                int iA = qVar.f().a(charSequence.charAt(i7));
                if (iA >= 0) {
                    i6 = (i6 * 10) + iA;
                    i7 = i8;
                } else if (i8 < i5) {
                    return ~i4;
                }
            }
            BigDecimal bigDecimalMovePointLeft = new BigDecimal(i6).movePointLeft(i7 - i4);
            ?? r5 = this.a;
            j$.time.temporal.x xVarC = r5.C();
            BigDecimal bigDecimalValueOf = BigDecimal.valueOf(xVarC.e());
            return qVar.n(r5, bigDecimalMovePointLeft.multiply(BigDecimal.valueOf(xVarC.d()).subtract(bigDecimalValueOf).add(BigDecimal.ONE)).setScale(0, RoundingMode.FLOOR).add(bigDecimalValueOf).longValueExact(), i4, i7);
        }
        if (i2 > 0) {
            return ~i;
        }
        return i;
    }

    @Override // j$.time.format.i
    public final String toString() {
        return "Fraction(" + this.a + "," + this.b + "," + this.c + (this.g ? ",DecimalPoint" : "") + ")";
    }
}
