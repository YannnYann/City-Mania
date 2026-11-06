package com.vungle.ads.internal.privacy;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.ironsource.C3529bb;
import com.ironsource.C3647i2;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.ServiceLocator;
import com.vungle.ads.internal.model.o2;
import com.vungle.ads.internal.persistence.FilePreferences;
import com.vungle.ads.internal.u;
import com.vungle.ads.internal.util.v;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class PrivacyManager {
    public static final PrivacyManager INSTANCE = new PrivacyManager();
    public static final AtomicReference a = new AtomicReference();
    public static final AtomicReference b = new AtomicReference();
    public static final AtomicBoolean c = new AtomicBoolean(false);
    public static String d;
    public static String e;
    public static String f;
    public static Long g;
    public static PrivacyConsent h;
    public static FilePreferences i;
    public static SharedPreferences j;

    public static String b() {
        String str = d;
        return str == null ? "unknown" : str;
    }

    public static COPPA c() {
        AtomicReference atomicReference = b;
        return atomicReference.get() == null ? COPPA.COPPA_NOTSET : Intrinsics.areEqual(atomicReference.get(), Boolean.TRUE) ? COPPA.COPPA_ENABLED : Intrinsics.areEqual(atomicReference.get(), Boolean.FALSE) ? COPPA.COPPA_DISABLED : COPPA.COPPA_NOTSET;
    }

    public static Boolean d() {
        Object objM2760constructorimpl;
        Integer numValueOf;
        String string;
        try {
            Result.Companion companion = Result.Companion;
            SharedPreferences sharedPreferences = j;
            objM2760constructorimpl = Result.m2760constructorimpl(sharedPreferences != null ? Integer.valueOf(sharedPreferences.getInt("IABTCF_gdprApplies", -1)) : null);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m2763exceptionOrNullimpl(objM2760constructorimpl) != null) {
            try {
                SharedPreferences sharedPreferences2 = j;
                if (sharedPreferences2 == null || (string = sharedPreferences2.getString("IABTCF_gdprApplies", C3647i2.f)) == null) {
                    numValueOf = null;
                } else {
                    Intrinsics.checkNotNullExpressionValue(string, "getString(IABTCF_GDPR_APPLIES, \"-1\")");
                    numValueOf = Integer.valueOf(Integer.parseInt(string));
                }
                objM2760constructorimpl = Result.m2760constructorimpl(numValueOf);
            } catch (Throwable th2) {
                Result.Companion companion3 = Result.Companion;
                objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th2));
            }
        }
        if (Result.m2765isFailureimpl(objM2760constructorimpl)) {
            objM2760constructorimpl = null;
        }
        Integer num = (Integer) objM2760constructorimpl;
        if (num != null && num.intValue() == 1) {
            return Boolean.TRUE;
        }
        if (num != null && num.intValue() == 0) {
            return Boolean.FALSE;
        }
        return null;
    }

    public static boolean e() {
        int iA = u.a(a());
        if (iA != 0) {
            if (iA == 1) {
                return false;
            }
            if (iA != 2) {
                throw new NoWhenBranchMatchedException();
            }
        }
        Boolean bool = (Boolean) a.get();
        return (bool == null || bool.booleanValue()) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:39:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean f() {
        /*
            java.lang.Boolean r0 = d()
            java.lang.Boolean r1 = java.lang.Boolean.TRUE
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r1)
            if (r0 == 0) goto L6a
            com.vungle.ads.internal.ConfigManager r0 = com.vungle.ads.internal.ConfigManager.INSTANCE
            r0.getClass()
            com.vungle.ads.internal.model.o2 r0 = com.vungle.ads.internal.ConfigManager.p()
            r1 = -1
            if (r0 != 0) goto L1a
            r0 = r1
            goto L22
        L1a:
            int[] r2 = com.vungle.ads.internal.privacy.a.a
            int r0 = r0.ordinal()
            r0 = r2[r0]
        L22:
            r2 = 1
            if (r0 == r1) goto L34
            if (r0 == r2) goto L69
            r1 = 2
            if (r0 == r1) goto L69
            r1 = 3
            if (r0 != r1) goto L2e
            goto L34
        L2e:
            kotlin.NoWhenBranchMatchedException r0 = new kotlin.NoWhenBranchMatchedException
            r0.<init>()
            throw r0
        L34:
            android.content.SharedPreferences r0 = com.vungle.ads.internal.privacy.PrivacyManager.j
            r1 = 0
            java.lang.String r3 = ""
            if (r0 == 0) goto L42
            java.lang.String r4 = "IABTCF_TCString"
            java.lang.String r0 = r0.getString(r4, r3)
            goto L43
        L42:
            r0 = r1
        L43:
            if (r0 != 0) goto L46
            goto L47
        L46:
            r3 = r0
        L47:
            com.vungle.ads.internal.persistence.FilePreferences r0 = com.vungle.ads.internal.privacy.PrivacyManager.i
            if (r0 == 0) goto L4f
            java.lang.String r1 = r0.c()
        L4f:
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r3)
            if (r0 != 0) goto L6a
            int r0 = r3.length()
            if (r0 != 0) goto L5c
            goto L69
        L5c:
            com.vungle.ads.internal.persistence.FilePreferences r0 = com.vungle.ads.internal.privacy.PrivacyManager.i
            if (r0 == 0) goto L69
            java.lang.String r1 = "previous_tcf_token"
            com.vungle.ads.internal.persistence.FilePreferences r0 = r0.a(r1, r3)
            r0.b()
        L69:
            return r2
        L6a:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.ads.internal.privacy.PrivacyManager.f():boolean");
    }

    public final synchronized void a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        AtomicBoolean atomicBoolean = c;
        if (atomicBoolean.get()) {
            boolean z = v.a;
            com.vungle.ads.internal.util.u.c("PrivacyManager", "PrivacyManager already initialized");
            return;
        }
        j = PreferenceManager.getDefaultSharedPreferences(context);
        FilePreferences filePreferences = (FilePreferences) ServiceLocator.d.a(context).getService(FilePreferences.class);
        i = filePreferences;
        AtomicReference atomicReference = a;
        Boolean bool = (Boolean) atomicReference.get();
        if (bool != null) {
            boolean zBooleanValue = bool.booleanValue();
            FilePreferences filePreferences2 = i;
            if (filePreferences2 != null) {
                filePreferences2.a(zBooleanValue, "disable_ad_id").b();
            }
        } else {
            Boolean boolA = filePreferences.a("disable_ad_id");
            if (boolA != null) {
                atomicReference.set(boolA);
            }
        }
        String str = d;
        if (str != null) {
            String str2 = e;
            if (str2 == null) {
                str2 = "";
            }
            String str3 = f;
            if (str3 == null) {
                str3 = "";
            }
            Long l = g;
            long jLongValue = l != null ? l.longValue() : 0L;
            FilePreferences filePreferences3 = i;
            if (filePreferences3 != null) {
                filePreferences3.a("gdpr_status", str).a("gdpr_source", str2).a("gdpr_message_version", str3).b("gdpr_timestamp", jLongValue).b();
            }
        } else {
            String string = filePreferences.getString("gdpr_status");
            PrivacyConsent privacyConsent = PrivacyConsent.OPT_IN;
            if (Intrinsics.areEqual(string, privacyConsent.getValue())) {
                string = privacyConsent.getValue();
            } else {
                PrivacyConsent privacyConsent2 = PrivacyConsent.OPT_OUT;
                if (Intrinsics.areEqual(string, privacyConsent2.getValue())) {
                    string = privacyConsent2.getValue();
                }
            }
            d = string;
            e = filePreferences.getString("gdpr_source");
            f = filePreferences.getString("gdpr_message_version");
            g = Long.valueOf(filePreferences.a("gdpr_timestamp", 0L));
        }
        PrivacyConsent privacyConsent3 = h;
        if (privacyConsent3 != null) {
            FilePreferences filePreferences4 = i;
            if (filePreferences4 != null) {
                filePreferences4.a("ccpa_status", privacyConsent3.getValue()).b();
            }
        } else {
            String string2 = filePreferences.getString("ccpa_status");
            PrivacyConsent privacyConsent4 = PrivacyConsent.OPT_OUT;
            if (!Intrinsics.areEqual(privacyConsent4.getValue(), string2)) {
                privacyConsent4 = PrivacyConsent.OPT_IN;
            }
            h = privacyConsent4;
        }
        AtomicReference atomicReference2 = b;
        Boolean bool2 = (Boolean) atomicReference2.get();
        if (bool2 != null) {
            boolean zBooleanValue2 = bool2.booleanValue();
            FilePreferences filePreferences5 = i;
            if (filePreferences5 != null) {
                filePreferences5.a(zBooleanValue2, C3529bb.G).b();
            }
        } else {
            Boolean boolA2 = filePreferences.a(C3529bb.G);
            if (boolA2 != null) {
                atomicReference2.set(boolA2);
            }
        }
        atomicBoolean.set(true);
    }

    public final void updateCcpaConsent(PrivacyConsent consent) {
        Intrinsics.checkNotNullParameter(consent, "consent");
        h = consent;
        FilePreferences filePreferences = i;
        if (filePreferences != null) {
            filePreferences.a("ccpa_status", consent.getValue()).b();
        }
    }

    public static void a(String consent, String source, String str) {
        Intrinsics.checkNotNullParameter(consent, "consent");
        Intrinsics.checkNotNullParameter(source, "source");
        d = consent;
        e = source;
        f = str;
        long jCurrentTimeMillis = System.currentTimeMillis() / ((long) 1000);
        g = Long.valueOf(jCurrentTimeMillis);
        String str2 = f;
        if (str2 == null) {
            str2 = "";
        }
        FilePreferences filePreferences = i;
        if (filePreferences != null) {
            filePreferences.a("gdpr_status", consent).a("gdpr_source", source).a("gdpr_message_version", str2).b("gdpr_timestamp", jCurrentTimeMillis).b();
        }
    }

    public static void a(boolean z) {
        a.set(Boolean.valueOf(z));
        FilePreferences filePreferences = i;
        if (filePreferences != null) {
            filePreferences.a(z, "disable_ad_id").b();
        }
    }

    public static int a() {
        Boolean boolD = d();
        if (!Intrinsics.areEqual(boolD, Boolean.TRUE)) {
            return boolD == null ? 3 : 1;
        }
        ConfigManager.INSTANCE.getClass();
        o2 o2VarP = ConfigManager.p();
        int i2 = o2VarP == null ? -1 : a.a[o2VarP.ordinal()];
        if (i2 != -1) {
            if (i2 == 1) {
                return 2;
            }
            if (i2 != 2) {
                if (i2 != 3) {
                    throw new NoWhenBranchMatchedException();
                }
            }
        }
    }
}
