package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.os.Build;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᘆ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0616 implements InterfaceC0651 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final Context f2606;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static final String[] f2605 = {StringFog.decrypt("ZFqK\n", "Fz7hgf3BWJA=\n"), StringFog.decrypt("tJ5Pt5Fhfau3mg==\n", "0/Eg0P0EItg=\n"), StringFog.decrypt("KFUw7OkhMI81VA==\n", "WzFbs45RWOA=\n")};

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final String[] f2604 = {StringFog.decrypt("vf7p8XG0V2o=\n", "+JOcnRDAOBg=\n"), StringFog.decrypt("o2u58kC1rPWxQZY=\n", "4gXdgC/cyNU=\n")};

    public C0616(Context context) {
        this.f2606 = context;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static boolean m1378() {
        String lowerCase = Build.PRODUCT.toLowerCase();
        String str = Build.MODEL;
        for (String str2 : f2605) {
            if (lowerCase.contains(str2.toLowerCase())) {
                return true;
            }
        }
        for (String str3 : f2604) {
            if (str.toLowerCase().contains(str3.toLowerCase())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0651
    public final String getName() {
        return StringFog.decrypt("8LAPcmg0/YXZpAl+ejv7ifu4CW8=\n", "mNF9Fh9Vj+A=\n");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(49:0|2|(1:4)|(2:108|5)|(1:7)(43:8|11|(1:13)|14|114|15|(8:17|18|(2:21|19)|121|22|116|23|(1:25)(3:120|26|27))|119|29|(1:31)|122|32|(1:34)(4:35|(1:37)|123|38)|41|(1:48)|49|(1:51)|52|(1:56)|57|112|58|(1:60)(20:61|62|(1:65)|66|106|67|104|68|(1:70)(14:71|72|102|73|77|(1:79)|80|117|81|(3:83|(1:89)(1:88)|90)(0)|110|91|94|95)|76|77|(0)|80|117|81|(0)(0)|110|91|94|95)|63|62|(0)|66|106|67|104|68|(0)(0)|76|77|(0)|80|117|81|(0)(0)|110|91|94|95)|10|11|(0)|14|114|15|(0)|119|29|(0)|122|32|(0)(0)|41|(3:43|46|48)|49|(0)|52|(2:54|56)(0)|57|112|58|(0)(0)|63|62|(0)|66|106|67|104|68|(0)(0)|76|77|(0)|80|117|81|(0)(0)|110|91|94|95|(1:(0))) */
    /* JADX WARN: Can't wrap try/catch for region: R(50:0|2|(1:4)|108|5|(1:7)(43:8|11|(1:13)|14|114|15|(8:17|18|(2:21|19)|121|22|116|23|(1:25)(3:120|26|27))|119|29|(1:31)|122|32|(1:34)(4:35|(1:37)|123|38)|41|(1:48)|49|(1:51)|52|(1:56)|57|112|58|(1:60)(20:61|62|(1:65)|66|106|67|104|68|(1:70)(14:71|72|102|73|77|(1:79)|80|117|81|(3:83|(1:89)(1:88)|90)(0)|110|91|94|95)|76|77|(0)|80|117|81|(0)(0)|110|91|94|95)|63|62|(0)|66|106|67|104|68|(0)(0)|76|77|(0)|80|117|81|(0)(0)|110|91|94|95)|10|11|(0)|14|114|15|(0)|119|29|(0)|122|32|(0)(0)|41|(3:43|46|48)|49|(0)|52|(2:54|56)(0)|57|112|58|(0)(0)|63|62|(0)|66|106|67|104|68|(0)(0)|76|77|(0)|80|117|81|(0)(0)|110|91|94|95|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x008c, code lost:
    
        r18 = 1;
        r19 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x017f, code lost:
    
        r15 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x021c, code lost:
    
        r1 = com.ironsource.adqualitysdk.sdk.StringFog.decrypt("C20=\n", "cBAdHipgDIU=\n");
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0056 A[Catch: Exception -> 0x008c, TRY_LEAVE, TryCatch #6 {Exception -> 0x008c, blocks: (B:15:0x0051, B:17:0x0056), top: B:114:0x0051 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x009b A[Catch: Exception -> 0x00c9, LOOP:2: B:30:0x0099->B:31:0x009b, LOOP_END, TryCatch #7 {Exception -> 0x00c9, blocks: (B:23:0x006e, B:25:0x007b, B:26:0x007e, B:27:0x008b, B:31:0x009b, B:32:0x00a2, B:34:0x00a8, B:37:0x00b1, B:38:0x00bf), top: B:116:0x006e }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a8 A[Catch: Exception -> 0x00c9, TryCatch #7 {Exception -> 0x00c9, blocks: (B:23:0x006e, B:25:0x007b, B:26:0x007e, B:27:0x008b, B:31:0x009b, B:32:0x00a2, B:34:0x00a8, B:37:0x00b1, B:38:0x00bf), top: B:116:0x006e }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0142 A[Catch: Exception -> 0x014c, TRY_LEAVE, TryCatch #5 {Exception -> 0x014c, blocks: (B:58:0x012f, B:61:0x0142), top: B:112:0x012f }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0171 A[Catch: Exception -> 0x016f, TRY_LEAVE, TryCatch #1 {Exception -> 0x016f, blocks: (B:68:0x015e, B:71:0x0171), top: B:104:0x015e }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01a1 A[Catch: Exception -> 0x01c3, TryCatch #8 {Exception -> 0x01c3, blocks: (B:81:0x0193, B:83:0x01a1, B:85:0x01b1, B:90:0x01c0), top: B:117:0x0193 }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01be  */
    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0651
    /* JADX INFO: renamed from: ﾒ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.ironsource.adqualitysdk.sdk.i.C0873 mo1250() {
        /*
            Method dump skipped, instruction units count: 572
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.i.C0616.mo1250():com.ironsource.adqualitysdk.sdk.i.ﭕ");
    }
}
