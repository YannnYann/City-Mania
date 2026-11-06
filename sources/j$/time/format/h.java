package j$.time.format;

import com.unity3d.services.UnityAdsConstants;
import j$.time.LocalDateTime;
import j$.time.ZoneOffset;

/* JADX INFO: loaded from: classes2.dex */
final class h implements f {
    @Override // j$.time.format.f
    public final boolean p(s sVar, StringBuilder sb) {
        boolean z;
        Long lE = sVar.e(j$.time.temporal.a.INSTANT_SECONDS);
        j$.time.temporal.n nVarD = sVar.d();
        j$.time.temporal.a aVar = j$.time.temporal.a.NANO_OF_SECOND;
        Long lValueOf = nVarD.f(aVar) ? Long.valueOf(sVar.d().g(aVar)) : null;
        int i = 0;
        if (lE == null) {
            return false;
        }
        long jLongValue = lE.longValue();
        int iZ = aVar.Z(lValueOf != null ? lValueOf.longValue() : 0L);
        if (jLongValue >= -62167219200L) {
            long j = jLongValue - 253402300800L;
            long jFloorDiv = Math.floorDiv(j, 315569520000L) + 1;
            LocalDateTime localDateTimeD0 = LocalDateTime.d0(Math.floorMod(j, 315569520000L) - 62167219200L, 0, ZoneOffset.UTC);
            if (jFloorDiv > 0) {
                sb.append('+');
                sb.append(jFloorDiv);
            }
            sb.append(localDateTimeD0);
            if (localDateTimeD0.S() == 0) {
                sb.append(":00");
            }
            z = true;
        } else {
            long j2 = jLongValue + 62167219200L;
            z = true;
            long j3 = j2 / 315569520000L;
            long j4 = j2 % 315569520000L;
            LocalDateTime localDateTimeD02 = LocalDateTime.d0(j4 - 62167219200L, 0, ZoneOffset.UTC);
            int length = sb.length();
            sb.append(localDateTimeD02);
            if (localDateTimeD02.S() == 0) {
                sb.append(":00");
            }
            if (j3 < 0) {
                if (localDateTimeD02.T() == -10000) {
                    sb.replace(length, length + 2, Long.toString(j3 - 1));
                } else if (j4 == 0) {
                    sb.insert(length, j3);
                } else {
                    sb.insert(length + 1, Math.abs(j3));
                }
            }
        }
        if (iZ > 0) {
            sb.append('.');
            int i2 = 100000000;
            while (true) {
                if (iZ <= 0 && i % 3 == 0 && i >= -2) {
                    break;
                }
                int i3 = iZ / i2;
                sb.append((char) (i3 + 48));
                iZ -= i3 * i2;
                i2 /= 10;
                i++;
            }
        }
        sb.append('Z');
        return z;
    }

    @Override // j$.time.format.f
    public final int r(q qVar, CharSequence charSequence, int i) {
        int i2;
        int i3;
        p pVar = new p();
        pVar.a(DateTimeFormatter.ISO_LOCAL_DATE);
        pVar.e('T');
        j$.time.temporal.a aVar = j$.time.temporal.a.HOUR_OF_DAY;
        pVar.k(aVar, 2);
        pVar.e(':');
        j$.time.temporal.a aVar2 = j$.time.temporal.a.MINUTE_OF_HOUR;
        pVar.k(aVar2, 2);
        pVar.e(':');
        j$.time.temporal.a aVar3 = j$.time.temporal.a.SECOND_OF_MINUTE;
        pVar.k(aVar3, 2);
        j$.time.temporal.a aVar4 = j$.time.temporal.a.NANO_OF_SECOND;
        pVar.b(aVar4);
        pVar.e('Z');
        e eVarG = pVar.t().g();
        q qVarC = qVar.c();
        int iR = eVarG.r(qVarC, charSequence, i);
        if (iR < 0) {
            return iR;
        }
        long jLongValue = qVarC.i(j$.time.temporal.a.YEAR).longValue();
        int iIntValue = qVarC.i(j$.time.temporal.a.MONTH_OF_YEAR).intValue();
        int iIntValue2 = qVarC.i(j$.time.temporal.a.DAY_OF_MONTH).intValue();
        int iIntValue3 = qVarC.i(aVar).intValue();
        int iIntValue4 = qVarC.i(aVar2).intValue();
        Long lI = qVarC.i(aVar3);
        Long lI2 = qVarC.i(aVar4);
        int i4 = 0;
        int iIntValue5 = lI != null ? lI.intValue() : 0;
        int iIntValue6 = lI2 != null ? lI2.intValue() : 0;
        if (iIntValue3 == 24 && iIntValue4 == 0 && iIntValue5 == 0 && iIntValue6 == 0) {
            i3 = iIntValue5;
            i2 = 0;
            i4 = 1;
        } else if (iIntValue3 == 23 && iIntValue4 == 59 && iIntValue5 == 60) {
            qVar.o();
            i2 = iIntValue3;
            i3 = 59;
        } else {
            i2 = iIntValue3;
            i3 = iIntValue5;
        }
        try {
            return qVar.n(aVar4, iIntValue6, i, qVar.n(j$.time.temporal.a.INSTANT_SECONDS, LocalDateTime.b0(((int) jLongValue) % UnityAdsConstants.AdOperations.SHOW_TIMEOUT_MS, iIntValue, iIntValue2, i2, iIntValue4, i3).f0(i4).Y(ZoneOffset.UTC) + Math.multiplyExact(jLongValue / 10000, 315569520000L), i, iR));
        } catch (RuntimeException unused) {
            return ~i;
        }
    }

    public final String toString() {
        return "Instant()";
    }
}
