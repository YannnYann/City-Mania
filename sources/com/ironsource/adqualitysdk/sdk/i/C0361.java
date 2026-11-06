package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.ISAdQualityConfig;
import com.ironsource.adqualitysdk.sdk.ISAdQualityInitError;
import com.ironsource.adqualitysdk.sdk.ISAdQualityLogLevel;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ܕ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0361 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final /* synthetic */ C0204 f1971;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final /* synthetic */ Activity f1972;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ Application f1973;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ String f1974;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ String f1975;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ ISAdQualityConfig f1976;

    public C0361(C0204 c0204, ISAdQualityConfig iSAdQualityConfig, String str, String str2, Application application, Activity activity) {
        this.f1971 = c0204;
        this.f1976 = iSAdQualityConfig;
        this.f1975 = str;
        this.f1974 = str2;
        this.f1973 = application;
        this.f1972 = activity;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        try {
            String userId = this.f1976.getUserId();
            C0204 c0204 = this.f1971;
            ISAdQualityLogLevel logLevel = this.f1976.getLogLevel();
            synchronized (c0204) {
                c0204.f1359 = logLevel;
            }
            this.f1971.m1172();
            boolean zIsEmpty = TextUtils.isEmpty(this.f1975);
            if (zIsEmpty) {
                String strDecrypt = StringFog.decrypt("KdMOzK7XefER5Bvy\n", "aLdfuc+7EIU=\n");
                AbstractC0182.m1157(strDecrypt, strDecrypt, StringFog.decrypt("wN+vzVKxpYzz2KjeG6egkeGRodhWtemM7ZE=\n", "ibHGuTvQyeU=\n") + this.f1974, true);
            } else {
                String strDecrypt2 = StringFog.decrypt("2eKHV+MfZs3h1ZJp\n", "mIbWIoJzD7k=\n");
                AbstractC0182.m1157(strDecrypt2, strDecrypt2, StringFog.decrypt("mid+KM1PfpipIHk7hFl7hbtpdizUDnmUqmk=\n", "00kXXKQuEvE=\n") + this.f1975, true);
            }
            C0092.m1090(this.f1973.getApplicationContext()).m1093();
            C0204.m1170(this.f1971, this.f1976.isTestMode());
            if (this.f1976.isTestMode()) {
                AbstractC0182.m1149(StringFog.decrypt("3FTMkNtfx5TkY9mu\n", "nTCd5bozruA=\n"), StringFog.decrypt("2etHnWoVmzKvizWXTHuyfPqKcrwDN7Vl64piulcz/Gfr2WGeTD+5LvrYYLYCev0zy9xwvVco/GTn\n3n3zVz6vZ8PFcbYeL65m64piuk83/HHrinG6UDi9YerPcfICeg==\n", "jqoV0yNb3BM=\n"));
            }
            try {
                Class.forName(StringFog.decrypt("oZjjjSbmQFqvham+OvZKF5SX9JQ=\n", "wPaH/0mPJHQ=\n"));
            } catch (Throwable unused) {
            }
            Activity activity = this.f1972;
            if (activity != null) {
                AbstractC0077.m1085(activity);
            } else {
                Application application = this.f1973;
                String str = AbstractC0077.f850;
                if (application != null) {
                    AbstractC0077.m1079(application.getApplicationContext());
                }
            }
            if (zIsEmpty) {
                C0204.m1168(this.f1971).f377 = this.f1974;
            } else {
                C0204.m1168(this.f1971).f378 = this.f1975;
            }
            C0204.m1168(this.f1971).f374 = this.f1976.getInitializationSource();
            C0204.m1168(this.f1971).f373 = this.f1976.getCoppa();
            C0204.m1168(this.f1971).f372 = this.f1976.getDeviceIdType();
            if (this.f1976.getMetaData() != null) {
                r rVarM1168 = C0204.m1168(this.f1971);
                Map<String, String> metaData = this.f1976.getMetaData();
                rVarM1168.f371.clear();
                if (metaData != null) {
                    rVarM1168.f371.putAll(metaData);
                }
                if (this.f1976.getMetaData().containsKey(StringFog.decrypt("hm8JkcwknvqAZwKMzCOU4pZg\n", "8w5t4pNX+4k=\n"))) {
                    C0204.m1168(this.f1971).f369 = this.f1976.getMetaData().get(StringFog.decrypt("rFtbf3SYUVqqU1BidJ9bQrxU\n", "2To/DCvrNCk=\n"));
                }
            }
            Context applicationContext = this.f1973.getApplicationContext();
            this.f1971.f1358 = applicationContext;
            C0697.f2826.m1423(applicationContext, !zIsEmpty ? this.f1975 : this.f1974);
            this.f1971.f1354 = new C0785(applicationContext);
            C0204 c02042 = this.f1971;
            c02042.f1352 = new C0773(applicationContext, c02042.f1357.f1093, "B0r1sW@sH3re");
            AbstractC0885 abstractC0885M1491 = AbstractC0885.m1491();
            C0204 c02043 = this.f1971;
            abstractC0885M1491.mo1512(applicationContext, c02043.f1354, c02043.f1357, new C0500(this), C0204.m1163(c02043));
            C0204 c02044 = this.f1971;
            C0204 c02045 = this.f1971;
            c02044.f1351 = new C0872(applicationContext, c02045.f1354, c02045.f1357.f1094);
            String strM1265 = AbstractC0392.m1265(applicationContext);
            AbstractC0885 abstractC0885M14912 = AbstractC0885.m1491();
            C0497 c0497 = new C0497(this, strM1265);
            C0893 c0893 = (C0893) abstractC0885M14912;
            Handler handler = c0893.f3421;
            if (handler != null) {
                handler.post(new C0896(c0893, c0497));
            }
            AbstractC0885 abstractC0885M14913 = AbstractC0885.m1491();
            C0495 c0495 = new C0495(this);
            C0893 c08932 = (C0893) abstractC0885M14913;
            Handler handler2 = c08932.f3421;
            if (handler2 != null) {
                handler2.post(new C0900(c08932, c0495));
            }
            C0204.m1169(this.f1971, applicationContext);
            this.f1971.f1353 = new C0622(applicationContext, C0204.m1168(this.f1971), this.f1971.f1357, this.f1972 != null, strM1265, new C0448(this));
            if (!this.f1976.isUserIdSet()) {
                C0204.m1168(this.f1971).f370 = true;
                C0773 c0773 = new C0773(this.f1971.f1353.f2627, C0622.f2619, C0622.f2618);
                String str2 = C0622.f2616;
                String strM1448 = c0773.m1448(str2);
                if (TextUtils.isEmpty(strM1448)) {
                    strM1448 = UUID.randomUUID().toString();
                    c0773.m1449(str2, strM1448);
                }
                userId = strM1448;
            }
            if (this.f1971.m1176()) {
                this.f1971.f1353.m1402(new C0446(this));
            }
            this.f1971.f1353.m1401(new C0432(this));
            C0235 c0235 = new C0235(new C0427(this));
            C0204 c02046 = this.f1971;
            C0204 c02047 = this.f1971;
            c02046.f1356 = new C0324(c02047.f1351, c02047.f1353, strM1265, c0235, new C0406(this));
            C0204 c02048 = this.f1971;
            c02048.f1356.f1894.f3646 = new C0385(this);
            c02048.f1349 = new C0125(this.f1971.f1356);
            C0204 c02049 = this.f1971;
            c02049.f1348 = new C0672(c02049.f1353);
            AbstractC0182.m1154(StringFog.decrypt("mE0X1kS2ZxygegLo\n", "2SlGoyXaDmg=\n"), StringFog.decrypt("yUKssXc2GuzpZZSGYghb8/Rwn6FPLRyg5n6f9VMxF7qg\n", "gBHt1SZDe4A=\n") + this.f1971.f1357.f1096);
            C0204 c020410 = this.f1971;
            Activity activity2 = this.f1972;
            c020410.m1181(activity2 != null ? activity2 : applicationContext, userId, true, false, true);
            C0204.m1167(this.f1971, applicationContext);
            C0204.m1166(this.f1971);
            C0204.m1164(this.f1971);
        } catch (Throwable th) {
            String strDecrypt3 = StringFog.decrypt("3eF83x2+0Fvx52fRA/fDXPb0Lvk8391k7fJi2RvnmWbc2A==\n", "mJMOsG+euTU=\n");
            AbstractC1003.m1593(StringFog.decrypt("CpmBAj5rv+syrpQ8\n", "S/3Qd18H1p8=\n"), strDecrypt3, th, true, false, true);
            C0204.m1171(this.f1971.f1350, ISAdQualityInitError.EXCEPTION_ON_INIT, strDecrypt3);
        }
    }
}
