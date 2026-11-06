package com.ironsource.adqualitysdk.sdk.i;

import android.util.Log;
import com.ironsource.adqualitysdk.sdk.ISAdQualityLogLevel;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ח, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0286 {

    /* JADX INFO: renamed from: ﭴ, reason: contains not printable characters */
    public static final String f1632 = StringFog.decrypt("VzdH\n", "GRgGCmBVN4Q=\n");

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public boolean f1636;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public String f1639;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public String f1640;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public String f1641;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public String f1642;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public String f1643;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public String f1644;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public String f1645;

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public EnumC0299 f1638 = EnumC0299.f1680;

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public EnumC0307 f1637 = EnumC0307.f1832;

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public long f1635 = 0;

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public long f1634 = 0;

    /* JADX INFO: renamed from: ﭸ, reason: contains not printable characters */
    public long f1633 = 0;

    public C0286(String str) {
        this.f1645 = str;
        this.f1644 = str;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1218(EnumC0299 enumC0299) {
        String strM1159;
        String strDecrypt;
        this.f1638 = enumC0299;
        EnumC0299 enumC02992 = EnumC0299.f1675;
        if (enumC0299 != enumC02992) {
            this.f1637 = EnumC0307.f1832;
        }
        int iOrdinal = enumC0299.ordinal();
        if (iOrdinal == 1) {
            this.f1635 = System.currentTimeMillis();
            return;
        }
        if (iOrdinal == 2) {
            this.f1634 = System.currentTimeMillis();
            return;
        }
        if (iOrdinal == 3) {
            this.f1633 = System.currentTimeMillis();
        } else if (iOrdinal != 4 && iOrdinal != 5) {
            return;
        }
        if (this.f1644.equals(StringFog.decrypt("E7KFD5Imtw==\n", "RNfnWftDwEs=\n"))) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        StringBuilder sb3 = new StringBuilder();
        sb3.append(StringFog.decrypt("vODqdBT+8P684Op0FP79\n", "kc3HWTnT3dM=\n"));
        sb3.append(this.f1644);
        String strM1456 = AbstractC0829.m1456("KU10Uf9Gp8NmXDs=\n", "CS4bP5EjxLc=\n", sb3);
        if (this.f1643 != null) {
            strM1456 = strM1456 + this.f1643 + " ";
        }
        sb2.append(strM1456 + StringFog.decrypt("+HkR+flAXX/4eRH5+UA=\n", "1VQ81NRtcFI=\n"));
        sb2.append("\n");
        sb.append(sb2.toString());
        String str = null;
        if (this.f1644 == null || (strDecrypt = this.f1642) == null) {
            strM1159 = null;
        } else {
            if (strDecrypt.equals(f1632) && this.f1638 != EnumC0299.f1676) {
                strDecrypt = StringFog.decrypt("4VFFHsXUNNnHW1U=\n", "rz4xPqOxQLo=\n");
            }
            StringBuilder sb4 = new StringBuilder();
            sb4.append(this.f1644);
            strM1159 = AbstractC0202.m1159("f8OeljX8mpks+bWzL6o=\n", "X5Da3RWK/+s=\n", sb4, strDecrypt);
        }
        if (strM1159 != null) {
            sb.append(strM1159.concat("\n"));
        }
        if (this.f1641 != null && this.f1640 != null) {
            str = StringFog.decrypt("74wp8Dc1/g/VpwyjQSP5DMynEKQENLZc\n", "vMhi0GFQjHw=\n") + this.f1641 + StringFog.decrypt("dOCm\n", "VM2GijOY3lc=\n") + this.f1640;
        }
        if (str != null) {
            sb.append(str.concat("\n"));
        }
        StringBuilder sb5 = new StringBuilder();
        sb5.append(StringFog.decrypt("bNZte+vVnFM=\n", "P6IMD56mpnM=\n"));
        EnumC0299 enumC02993 = this.f1638;
        sb5.append(enumC02993 == enumC02992 ? StringFog.decrypt("GRejz5hXFQ==\n", "TlbxgdEZUpY=\n") : enumC02993.name());
        sb5.append("\n");
        sb.append(sb5.toString());
        EnumC0299 enumC02994 = this.f1638;
        if (enumC02994 == EnumC0299.f1677 || enumC02994 == EnumC0299.f1676) {
            String strDecrypt2 = StringFog.decrypt("SGG+5DJG5ytwVqva\n", "CQXvkVMqjl8=\n");
            AbstractC0182.m1157(strDecrypt2, strDecrypt2, sb.toString(), true);
            return;
        }
        String strM1217 = m1217(this.f1637);
        if (strM1217 != null) {
            sb.append(StringFog.decrypt("Lvie72mCInhD\n", "Y53tnAjlR0I=\n") + strM1217);
        }
        String string = sb.toString();
        String strDecrypt3 = StringFog.decrypt("4e//vnKVGmPZ2OqA\n", "oIuuyxP5cxc=\n");
        if (AbstractC0182.m1151()) {
            Log.w(AbstractC0182.m1153(strDecrypt3), string);
        } else if (AbstractC0182.m1152().shouldPrintLog(ISAdQualityLogLevel.WARNING)) {
            Log.w(AbstractC0182.m1153(strDecrypt3), string);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String m1217(EnumC0307 enumC0307) {
        if (enumC0307 == null) {
            return null;
        }
        switch (enumC0307.ordinal()) {
            case 1:
                return String.format(StringFog.decrypt("+8EbvFZ0/YG7wEimXXH90q2SSapDarSFu8EbhmFeuaar01emRmb9pJr5G7lXba6esdwb6kE/soX+\n3F64V20=\n", "3rI7zzIf3fc=\n"), this.f1644, this.f1642, this.f1639);
            case 2:
                return String.format(StringFog.decrypt("43yK65IXxqijfdnRuTLG+7Uvw8v2Momq5nbPzPYvk662YNjMszjGvL8v3tCzfIWxqGHP26IzlA==\n", "xg+quNZc5t4=\n"), this.f1644, this.f1642);
            case 3:
                return StringFog.decrypt("xOi1CfpD2QbtqbUL9lOQE+7gpgC/RJYc7Oy/EfBV\n", "goncZZ8n+XI=\n");
            case 4:
                return StringFog.decrypt("1g7lcHDtDA3/T+9ucOhYHLAM43J77E8N/x0=\n", "kG+MHBWJLHk=\n");
            case 5:
                return StringFog.decrypt("bd+2BHvWcqpEnrkNatE6/kjRsQZ70SaxWQ==\n", "K77faB6yUt4=\n");
            case 6:
                return StringFog.decrypt("rNAiGkUx1GCczDsbWGbVI5rLOwZPIg==\n", "+b5JdCpGukA=\n");
            default:
                return null;
        }
    }
}
