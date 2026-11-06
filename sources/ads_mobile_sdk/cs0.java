package ads_mobile_sdk;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import com.amazon.privacypass.PrivacyPass;
import com.amazon.privacypass.VerificationContext;
import com.amazon.privacypass.callback.AttestAPICallback;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class cs0 implements co {
    public final Context a;
    public final ds0 b;

    public cs0(Context context) {
        if (context != null) {
            this.a = context;
            this.b = ds0.a(context);
            return;
        }
        throw new IllegalArgumentException("Application context cannot be null");
    }

    public final void a(bo boVar) {
        boolean zHasSystemFeature;
        boolean zBooleanValue;
        Map map;
        ds0 ds0Var = this.b;
        if (ds0Var.b != null) {
            zBooleanValue = ds0Var.b.booleanValue();
        } else {
            synchronized (ds0Var) {
                try {
                    if (ds0Var.b != null) {
                        zHasSystemFeature = ds0Var.b.booleanValue();
                    } else {
                        if (!ds0Var.a()) {
                            ds0Var.b = Boolean.FALSE;
                            return;
                        }
                        try {
                            PackageManager packageManager = ds0Var.c.getPackageManager();
                            if (packageManager == null) {
                                ds0Var.b = Boolean.FALSE;
                                return;
                            } else {
                                zHasSystemFeature = packageManager.hasSystemFeature("com.amazon.privacypass");
                                ds0Var.b = Boolean.valueOf(zHasSystemFeature);
                            }
                        } catch (SecurityException e) {
                            Log.e("OMIDLIB", "Security exception when checking attestation capability", e);
                            ds0Var.b = Boolean.FALSE;
                            return;
                        } catch (Exception e2) {
                            Log.e("OMIDLIB", "Unexpected error when checking attestation capability", e2);
                            ds0Var.b = Boolean.FALSE;
                            return;
                        }
                    }
                    zBooleanValue = zHasSystemFeature;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        if (zBooleanValue && (map = boVar.a) != null) {
            String str = (String) map.get("verifierurl");
            String str2 = (String) boVar.a.get("version");
            if (str2 == null || str2.trim().isEmpty()) {
                str2 = "1.0";
            }
            if (str == null || str.trim().isEmpty()) {
                return;
            }
            try {
                new URL(str);
                if (!str.startsWith("https://")) {
                    if (!str.startsWith("http://")) {
                        return;
                    }
                }
                try {
                    if (this.a == null) {
                        return;
                    }
                    PrivacyPass.getInstance(this.a).attest(new VerificationContext(Collections.singletonList(str)), (AttestAPICallback) null, str2);
                } catch (IllegalArgumentException e3) {
                    Log.e("OMIDLIB", "Attestation failed: Invalid input parameters", e3);
                } catch (Exception e4) {
                    Log.e("OMIDLIB", "Attestation failed: unexpected error", e4);
                }
            } catch (MalformedURLException unused) {
            }
        }
    }
}
