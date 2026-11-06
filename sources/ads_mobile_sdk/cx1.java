package ads_mobile_sdk;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.util.Base64;
import com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
public final class cx1 implements bx1 {
    public final Context a;
    public final ts3 b;
    public final a c;
    public final String d;
    public final boolean e;

    public final String a(long j) {
        String strEncodeToString;
        boolean z;
        sh shVarB = th.v().a(this.d).h().b(this.a.getPackageName()).a(System.currentTimeMillis() / 1000).b((System.currentTimeMillis() - j) / 1000);
        if (this.e) {
            try {
                Signature[] signatureArr = this.a.getPackageManager().getPackageInfo(this.a.getPackageName(), 64).signatures;
                if (signatureArr == null || signatureArr.length <= 0) {
                    strEncodeToString = "E";
                } else {
                    byte[] bArrDigest = MessageDigest.getInstance(AndroidStaticDeviceInfoDataSource.ALGORITHM_SHA1).digest(signatureArr[0].toByteArray());
                    StringBuilder sb = new StringBuilder();
                    for (byte b : bArrDigest) {
                        String hexString = Integer.toHexString(b & 255);
                        if (hexString.length() == 1) {
                            sb.append('0');
                        }
                        sb.append(hexString);
                    }
                    strEncodeToString = Base64.encodeToString(sb.toString().getBytes(StandardCharsets.UTF_8), 11);
                }
            } catch (Exception unused) {
                strEncodeToString = "E";
            }
            shVarB.c(strEncodeToString);
        }
        try {
            shVarB.c(this.a.getPackageManager().getPackageInfo(this.a.getPackageName(), 0).versionCode);
        } catch (PackageManager.NameNotFoundException unused2) {
            shVarB.c(-1L);
        }
        a aVar = this.c;
        synchronized (aVar) {
            z = aVar.d;
        }
        if (!z) {
            this.c.a();
        }
        return hi.a(true).encode(((bi) this.c.a((String) null, ((th) shVarB.b()).c()).h().a(ph.BITSLICER).b()).c());
    }

    public cx1(Context context, ts3 ts3Var, a aVar, na naVar) {
        this.a = context;
        this.b = ts3Var;
        this.c = aVar;
        this.d = naVar.M();
        this.e = naVar.G();
    }
}
