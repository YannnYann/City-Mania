package j$.time.format;

import java.math.BigInteger;

/* JADX INFO: loaded from: classes2.dex */
class i implements f {
    static final long[] f = {0, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, 1000000000, 10000000000L};
    final Enum a;
    final int b;
    final int c;
    private final y d;
    final int e;

    /* JADX WARN: Multi-variable type inference failed */
    i(j$.time.temporal.s sVar, int i, int i2, y yVar) {
        this.a = (Enum) sVar;
        this.b = i;
        this.c = i2;
        this.d = yVar;
        this.e = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected i(j$.time.temporal.s sVar, int i, int i2, y yVar, int i3) {
        this.a = (Enum) sVar;
        this.b = i;
        this.c = i2;
        this.d = yVar;
        this.e = i3;
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [j$.time.temporal.s, java.lang.Enum] */
    i c() {
        return this.e == -1 ? this : new i(this.a, this.b, this.c, this.d, -1);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [j$.time.temporal.s, java.lang.Enum] */
    i d(int i) {
        int i2 = this.e + i;
        return new i(this.a, this.b, this.c, this.d, i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [j$.time.temporal.s, java.lang.Enum, java.lang.Object] */
    @Override // j$.time.format.f
    public boolean p(s sVar, StringBuilder sb) {
        ?? r0 = this.a;
        Long lE = sVar.e(r0);
        if (lE == null) {
            return false;
        }
        long jLongValue = lE.longValue();
        v vVarB = sVar.b();
        String string = jLongValue == Long.MIN_VALUE ? "9223372036854775808" : Long.toString(Math.abs(jLongValue));
        int length = string.length();
        int i = this.c;
        if (length > i) {
            throw new j$.time.c("Field " + ((Object) r0) + " cannot be printed as the value " + jLongValue + " exceeds the maximum print width of " + i);
        }
        vVarB.getClass();
        int i2 = this.b;
        y yVar = this.d;
        if (jLongValue >= 0) {
            int i3 = c.a[yVar.ordinal()];
            if (i3 != 1) {
                if (i3 == 2) {
                    sb.append('+');
                }
            } else if (i2 < 19 && jLongValue >= f[i2]) {
                sb.append('+');
            }
        } else {
            int i4 = c.a[yVar.ordinal()];
            if (i4 == 1 || i4 == 2 || i4 == 3) {
                sb.append('-');
            } else if (i4 == 4) {
                throw new j$.time.c("Field " + ((Object) r0) + " cannot be printed as the value " + jLongValue + " cannot be negative according to the SignStyle");
            }
        }
        for (int i5 = 0; i5 < i2 - string.length(); i5++) {
            sb.append('0');
        }
        sb.append(string);
        return true;
    }

    boolean b(q qVar) {
        int i = this.e;
        if (i != -1) {
            return i > 0 && this.b == this.c && this.d == y.NOT_NEGATIVE;
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v7, types: [j$.time.temporal.s, java.lang.Enum] */
    @Override // j$.time.format.f
    public int r(q qVar, CharSequence charSequence, int i) {
        int i2;
        boolean z;
        boolean z2;
        BigInteger bigIntegerAdd;
        long j;
        int i3;
        long j2;
        int i4;
        long j3;
        boolean z3;
        int length = charSequence.length();
        if (i == length) {
            return ~i;
        }
        char cCharAt = charSequence.charAt(i);
        qVar.f().getClass();
        boolean z4 = true;
        int i5 = this.c;
        y yVar = this.d;
        int i6 = this.b;
        int i7 = 0;
        if (cCharAt == '+') {
            boolean zK = qVar.k();
            boolean z5 = i6 == i5;
            int iOrdinal = yVar.ordinal();
            if (iOrdinal == 0 ? zK : !(iOrdinal == 1 || iOrdinal == 4 || (!zK && !z5))) {
                return ~i;
            }
            i2 = i + 1;
            z2 = true;
            z = false;
        } else {
            qVar.f().getClass();
            if (cCharAt == '-') {
                boolean zK2 = qVar.k();
                boolean z6 = i6 == i5;
                int iOrdinal2 = yVar.ordinal();
                if (iOrdinal2 != 0 && iOrdinal2 != 1 && iOrdinal2 != 4 && (zK2 || z6)) {
                    return ~i;
                }
                i2 = i + 1;
                z = true;
                z2 = false;
            } else {
                if (yVar == y.ALWAYS && qVar.k()) {
                    return ~i;
                }
                i2 = i;
                z = false;
                z2 = false;
            }
        }
        int i8 = (qVar.k() || b(qVar)) ? i6 : 1;
        int i9 = i2 + i8;
        if (i9 > length) {
            return ~i2;
        }
        if (!qVar.k() && !b(qVar)) {
            i5 = 9;
        }
        int i10 = this.e;
        int iMax = Math.max(i10, 0) + i5;
        while (true) {
            bigIntegerAdd = null;
            if (i7 >= 2) {
                j = 0;
                i3 = i2;
                j2 = 0;
                break;
            }
            int iMin = Math.min(iMax + i2, length);
            i4 = i2;
            j3 = 0;
            while (true) {
                if (i4 >= iMin) {
                    z3 = z4;
                    j = 0;
                    break;
                }
                int i11 = i4 + 1;
                z3 = z4;
                j = 0;
                int iA = qVar.f().a(charSequence.charAt(i4));
                if (iA >= 0) {
                    if (i11 - i2 > 18) {
                        if (bigIntegerAdd == null) {
                            bigIntegerAdd = BigInteger.valueOf(j3);
                        }
                        bigIntegerAdd = bigIntegerAdd.multiply(BigInteger.TEN).add(BigInteger.valueOf(iA));
                    } else {
                        j3 = (j3 * 10) + ((long) iA);
                    }
                    i4 = i11;
                    z4 = z3;
                } else if (i4 < i9) {
                    return ~i2;
                }
            }
            if (i10 <= 0 || i7 != 0) {
                break;
            }
            iMax = Math.max(i8, (i4 - i2) - i10);
            i7++;
            z4 = z3;
        }
        i3 = i4;
        j2 = j3;
        BigInteger bigIntegerDivide = bigIntegerAdd;
        if (z) {
            if (bigIntegerDivide != null) {
                if (bigIntegerDivide.equals(BigInteger.ZERO) && qVar.k()) {
                    return ~(i2 - 1);
                }
                bigIntegerDivide = bigIntegerDivide.negate();
            } else {
                if (j2 == j && qVar.k()) {
                    return ~(i2 - 1);
                }
                j2 = -j2;
            }
        } else if (yVar == y.EXCEEDS_PAD && qVar.k()) {
            int i12 = i3 - i2;
            if (z2) {
                if (i12 <= i6) {
                    return ~(i2 - 1);
                }
            } else if (i12 > i6) {
                return ~i2;
            }
        }
        ?? r3 = this.a;
        if (bigIntegerDivide != null) {
            if (bigIntegerDivide.bitLength() > 63) {
                bigIntegerDivide = bigIntegerDivide.divide(BigInteger.TEN);
                i3--;
            }
            return qVar.n(r3, bigIntegerDivide.longValue(), i2, i3);
        }
        return qVar.n(r3, j2, i2, i3);
    }

    public String toString() {
        Enum r0 = this.a;
        int i = this.c;
        y yVar = this.d;
        int i2 = this.b;
        if (i2 == 1 && i == 19 && yVar == y.NORMAL) {
            return "Value(" + r0 + ")";
        }
        if (i2 == i && yVar == y.NOT_NEGATIVE) {
            return "Value(" + r0 + "," + i2 + ")";
        }
        return "Value(" + r0 + "," + i2 + "," + i + "," + yVar + ")";
    }
}
