package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import com.ironsource.adqualitysdk.sdk.ISAdQualityAdListener;
import com.ironsource.adqualitysdk.sdk.ISAdQualityAdType;
import com.ironsource.adqualitysdk.sdk.ISAdQualityConfig;
import com.ironsource.adqualitysdk.sdk.ISAdQualityCustomMediationRevenue;
import com.ironsource.adqualitysdk.sdk.ISAdQualityInitError;
import com.ironsource.adqualitysdk.sdk.ISAdQualityLogLevel;
import com.ironsource.adqualitysdk.sdk.ISAdQualityMediationNetwork;
import com.ironsource.adqualitysdk.sdk.ISAdQualitySegment;
import com.ironsource.adqualitysdk.sdk.IronSourceAdQuality;
import com.ironsource.adqualitysdk.sdk.StringFog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ϛ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0204 extends IronSourceAdQuality {

    /* JADX INFO: renamed from: 丫, reason: contains not printable characters */
    public static C0204 f1345;

    /* JADX INFO: renamed from: ﬤ, reason: contains not printable characters */
    public C0672 f1348;

    /* JADX INFO: renamed from: טּ, reason: contains not printable characters */
    public C0125 f1349;

    /* JADX INFO: renamed from: ףּ, reason: contains not printable characters */
    public C0872 f1351;

    /* JADX INFO: renamed from: ﭖ, reason: contains not printable characters */
    public C0773 f1352;

    /* JADX INFO: renamed from: ﭴ, reason: contains not printable characters */
    public C0622 f1353;

    /* JADX INFO: renamed from: ﭸ, reason: contains not printable characters */
    public C0785 f1354;

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public ISAdQualityAdListener f1355;

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public C0324 f1356;

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public Context f1358;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public ISAdQualityConfig f1365;

    /* JADX INFO: renamed from: 爫, reason: contains not printable characters */
    public static final String f1347 = StringFog.decrypt("0nJnSYM1gJfqRXJ3\n", "kxY2POJZ6eM=\n");

    /* JADX INFO: renamed from: 乁, reason: contains not printable characters */
    public static final String f1346 = StringFog.decrypt("qSwQunU0\n", "2kN/1xlVIsY=\n");

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final r f1366 = new r();

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public boolean f1364 = false;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public boolean f1363 = false;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public boolean f1362 = false;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public boolean f1361 = false;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public boolean f1360 = false;

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public ISAdQualityLogLevel f1359 = ISAdQualityLogLevel.INFO;

    /* JADX INFO: renamed from: סּ, reason: contains not printable characters */
    public final CopyOnWriteArraySet f1350 = new CopyOnWriteArraySet();

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public final C0143 f1357 = new C0143();

    static {
        StringFog.decrypt("yw10grvSjBbKHmPCoM+oCN4+Z4mh1dM=\n", "rnsR7M+h6Xg=\n");
        f1345 = null;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static boolean m1163(C0204 c0204) {
        boolean z;
        synchronized (c0204) {
            z = c0204.f1361;
        }
        return z;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static void m1164(C0204 c0204) {
        synchronized (c0204) {
            c0204.f1363 = false;
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static void m1167(C0204 c0204, Context context) {
        c0204.getClass();
        try {
            context.registerReceiver(new C0303(), new IntentFilter(StringFog.decrypt("us0ay3PZLCSyzQrccsRma7jXF9ZyngpLj/c760XvC0Ka7Tn8WA==\n", "26N+uRywSAo=\n")), null, AbstractC0272.f1609);
        } catch (Throwable th) {
            String str = f1347;
            AbstractC0182.m1156(str, str, StringFog.decrypt("jti8lwHAssmnmaeeA83hya3L9ZkF0ObYusD1iQHH99S+3Kc=\n", "yLnV+2Skkr0=\n"), th, null, true);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1170(C0204 c0204, boolean z) {
        synchronized (c0204) {
            c0204.f1361 = z;
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.IronSourceAdQuality
    public final void changeUserId(String str) {
        r rVar;
        try {
            if (m1183(str)) {
                synchronized (this) {
                    try {
                        rVar = this.f1366;
                    } catch (Exception e) {
                        e = e;
                    }
                }
                boolean zEquals = str.equals(rVar.m1028());
                boolean z = !zEquals;
                boolean zMo1050 = AbstractC1013.m1594().mo1050();
                if (!zEquals && zMo1050) {
                    C0622 c0622 = this.f1353;
                    c0622.getClass();
                    AbstractC0272.m1211(new C0739(c0622));
                }
                m1181(this.f1358, str, z, true, zMo1050);
                return;
            }
            return;
        } catch (Exception e2) {
            e = e2;
        }
        AbstractC1003.m1593(f1347, AbstractC0202.m1159("TazZ+zQdoJd8qsL6IR2mgW2s4vBm\n", "CN6rlEY90/I=\n", new StringBuilder(), str), e, true, false, true);
    }

    @Override // com.ironsource.adqualitysdk.sdk.IronSourceAdQuality
    public final void initialize(Context context, String str) throws Throwable {
        initialize(context, str, null);
    }

    @Override // com.ironsource.adqualitysdk.sdk.IronSourceAdQuality
    public final void initializeWithGameId(Context context, String str) throws Throwable {
        initializeWithGameId(context, str, null);
    }

    @Override // com.ironsource.adqualitysdk.sdk.IronSourceAdQuality
    public final void sendCustomMediationRevenue(ISAdQualityCustomMediationRevenue iSAdQualityCustomMediationRevenue) {
        boolean z;
        synchronized (this) {
            z = this.f1362;
        }
        if (z) {
            AbstractC0182.m1149(f1347, StringFog.decrypt("1hJVoNtEhnD7Fxvk2heBevhTVuLLDZRh/BxVp90Bg3D7Bl6ngkS8RtQXavLOCJxh7FNow+REgnTm\nU0jv2hCReuIdFQ==\n", "lXM7h69k9RU=\n"));
            return;
        }
        if (!m1175()) {
            AbstractC0182.m1149(f1347, StringFog.decrypt("VzIAcT3yUbF6N041PKFWu3lzAzMtu0OgfTwAdju3VLF6Jgt2ZPJrh1U3PyMovkugbXM9EgLyS6c0\nPQEiabtMvWA6DzogqEewOg==\n", "FFNuVknSItQ=\n"));
            return;
        }
        this.f1349.getClass();
        if (iSAdQualityCustomMediationRevenue != null && iSAdQualityCustomMediationRevenue.getMediationNetwork() == ISAdQualityMediationNetwork.LEVEL_PLAY && iSAdQualityCustomMediationRevenue.getCustomData() != null && iSAdQualityCustomMediationRevenue.getCustomData().length() > 0) {
            C0125 c0125 = this.f1349;
            c0125.getClass();
            AbstractC0272.m1214(new C0136(c0125, iSAdQualityCustomMediationRevenue));
            return;
        }
        C0125 c01252 = this.f1349;
        c01252.getClass();
        if (iSAdQualityCustomMediationRevenue != null) {
            if (iSAdQualityCustomMediationRevenue.getRevenue() < 0.0d) {
                AbstractC0182.m1149(C0125.f1065, StringFog.decrypt("JewvqJBtRDcI6WHskT5DPQutLOqAJFYmD+Ivr5YoQTcI+CS1xD9SJAPjNOrEPl89E+Elr4YoFzwJ\n42zhgSpWJg/7JA==\n", "Zo1Bj+RNN1I=\n"));
                return;
            }
            ISAdQualityMediationNetwork mediationNetwork = iSAdQualityCustomMediationRevenue.getMediationNetwork();
            if (mediationNetwork == null || TextUtils.isEmpty(C0125.m1101(mediationNetwork))) {
                AbstractC0182.m1149(C0125.f1065, StringFog.decrypt("wecELzsEyaLs4kprOlfOqO+mB20rTduz6+kEKD1BzKLs8w8yb0nTtPHvBG9vSd+j6+ceYSBKmqnn\n8h1nPU8=\n", "goZqCE8kusc=\n"));
                return;
            }
            ISAdQualityAdType adType = iSAdQualityCustomMediationRevenue.getAdType();
            if (adType != ISAdQualityAdType.INTERSTITIAL && adType != ISAdQualityAdType.VIDEO && adType != ISAdQualityAdType.REWARDED_VIDEO && adType != ISAdQualityAdType.REWARDED && (iSAdQualityCustomMediationRevenue.getMediationNetwork() != ISAdQualityMediationNetwork.LEVEL_PLAY || iSAdQualityCustomMediationRevenue.getCustomData() == null || iSAdQualityCustomMediationRevenue.getCustomData().length() <= 0)) {
                AbstractC0182.m1149(C0125.f1065, StringFog.decrypt("6hYtxzY2svPHE2ODN2W1+cRXLoUmf6DiwBgtwDBzt/PHAibaYmW05tkYMZQncuH3zVc3mTJzsrbI\nBSbAK3i189sEN4k2f6D6hVc1iSZzrrqJBSaXI2Sl881XNYkmc662yBknwDBztvfbEyaE\n", "qXdD4EIWwZY=\n"));
                return;
            }
            C0137 c0137 = new C0137(c01252, iSAdQualityCustomMediationRevenue);
            C0975 c0975 = ((C0893) AbstractC0885.m1491()).f2611;
            int iOptInt = IronSourceError.ERROR_CAPPING_VALIDATION_FAILED;
            if (c0975 != null) {
                iOptInt = c0975.f3676.optInt(StringFog.decrypt("JpZB5A==\n", "RfszgJsvkZI=\n"), IronSourceError.ERROR_CAPPING_VALIDATION_FAILED);
            }
            AbstractC0272.m1215(c0137, iOptInt);
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.IronSourceAdQuality
    public final void setAdListener(ISAdQualityAdListener iSAdQualityAdListener) {
        boolean z;
        synchronized (this) {
            z = this.f1362;
        }
        if (z) {
            AbstractC0182.m1149(f1347, StringFog.decrypt("Ye1pfILUUz9WrGY/1phJKVbpaT6E1A16a99GP6eBQTZL+H57pbBrelXtdHuFnFUuRuNwNdg=\n", "IowHW/b0IFo=\n"));
        } else {
            this.f1355 = iSAdQualityAdListener;
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.IronSourceAdQuality
    public final void setConfig(ISAdQualityConfig iSAdQualityConfig) {
        boolean z;
        synchronized (this) {
            z = this.f1362;
        }
        if (z) {
            AbstractC0182.m1149(f1347, StringFog.decrypt("LMe72Y1upJwbhraRlyi+nk+L9beqD7OoGse5l40396or7fWJmD33igfToZqWObnX\n", "b6bV/vlO1/k=\n"));
        } else if (m1177()) {
            AbstractC0182.m1149(f1347, StringFog.decrypt("MI1/abbJfbQHzHIhrI9ntlPBMQeRqGqABo19J7aQLoI3pzEnsclvvQGJcCq7yWe/Gph4L66AdLQX\nwg==\n", "c+wRTsLpDtE=\n"));
        } else {
            this.f1365 = iSAdQualityConfig;
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.IronSourceAdQuality
    public final void setMetaData(String str, String str2) {
        boolean z;
        try {
            synchronized (this) {
                z = this.f1362;
            }
            if (z) {
                AbstractC0182.m1149(f1347, StringFog.decrypt("HpOqClSFmZwp0qlIVMTKnTyGpQ0NhaOqHJaVWEHJg40k0pdpa4WdmC7St0VV0Y6WKpzq\n", "XfLELSCl6vk=\n"));
                return;
            }
            if (!m1175()) {
                String str3 = f1347;
                String strDecrypt = StringFog.decrypt("ynBjjmj9rN6zdnjHceG+xvplc45M257Owmp3wmz8porAW12OZ+25xeF6Ns1k5LPD/Xg2iXbtq+f2\na3fqZPy+jQ==\n", "kx8WrgWI36o=\n");
                if (AbstractC0182.m1151()) {
                    Log.w(AbstractC0182.m1153(str3), strDecrypt);
                    return;
                } else {
                    if (AbstractC0182.m1152().shouldPrintLog(ISAdQualityLogLevel.WARNING)) {
                        Log.w(AbstractC0182.m1153(str3), strDecrypt);
                        return;
                    }
                    return;
                }
            }
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                if (!AbstractC0206.f1368.contains(str)) {
                    if (AbstractC0206.m1184(m1178().f371, str)) {
                        AbstractC0182.m1149(f1347, StringFog.decrypt("uv2HokrDHYKo7JLHDw==\n", "yZjz7y+3fMY=\n") + str + StringFog.decrypt("eEYD9qZxQxQ7Hkau6jQOVTQDTqOgcUNVLAUD\n", "WGojytQUJ3U=\n") + 5 + StringFog.decrypt("dVtmcH3NG6whVyNyfYEKqCYYI017gxC/PFhkJHGIC6x1UmJwfc0JrDlDZio=\n", "VTYDBBztf80=\n"));
                        return;
                    }
                    if (!AbstractC0611.m1377(str, 64) || !AbstractC0611.m1377(str2, 64)) {
                        AbstractC0182.m1149(f1347, StringFog.decrypt("aG8j4NnNSKd6fjaFnA==\n", "GwpXrby5KeM=\n") + str + StringFog.decrypt("RFFiZGVh5AoHCSc8KSSpSxAVJ3h7Ye4MEBViN3Ek4gQQFWIsf2GgAAEEYjl5YKAfDBhiLnZo9Q5E\nDio3YmjkSwYYYjpycPcOARNi\n", "ZH1CWBcEgGs=\n") + 1 + StringFog.decrypt("/6h067k=\n", "38kaj5kWjhI=\n") + 64 + StringFog.decrypt("zWJP7ri0Ky2Ic1Sh\n", "7QEnj8rVSFk=\n"));
                        return;
                    }
                }
                r rVarM1178 = m1178();
                if (str == null) {
                    rVarM1178.getClass();
                } else if (str2 == null) {
                    rVarM1178.f371.remove(str);
                } else {
                    rVarM1178.f371.put(str, str2);
                }
                if (StringFog.decrypt("RPCPB3QSkThC+IQadBWbIFT/\n", "MZHrdCth9Es=\n").equals(str)) {
                    m1178().f369 = str2;
                }
            }
        } catch (Exception e) {
            AbstractC1003.m1593(f1347, AbstractC0202.m1159("HccZpjDb7E8swQKnJdvyTyzUS60jj/4K\n", "WLVryUL7nyo=\n", new StringBuilder(), str), e, true, false, true);
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.IronSourceAdQuality
    public final void setSegment(ISAdQualitySegment iSAdQualitySegment) {
        boolean z;
        synchronized (this) {
            z = this.f1362;
        }
        if (z) {
            AbstractC0182.m1149(f1347, StringFog.decrypt("OGWrtAQ0WYYPJLb2F3lPjQ8k6LM5R2uHKnGk/xlgU8MoQI6zB3VZwwhssOcUe12NVQ==\n", "ewTFk3AUKuM=\n"));
        } else {
            AbstractC0272.m1214(new C0280(this, iSAdQualitySegment));
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.IronSourceAdQuality
    public final void setUserConsent(boolean z) {
        r rVar;
        synchronized (this) {
            rVar = this.f1366;
        }
        rVar.f375 = z;
    }

    @Override // com.ironsource.adqualitysdk.sdk.IronSourceAdQuality
    public final synchronized void shutdown() {
        m1182(false);
    }

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public final synchronized void m1172() {
    }

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public final synchronized void m1173() {
        if (m1174()) {
            AbstractC0182.m1149(f1347, StringFog.decrypt("pk5j1Yi7bxeRD2SciP5uHIRDLYaZ6GhSiEBpl9y2PDu2bmmjifpwG5FWLaG40DwFhFwtgZTuaBaK\nWGPc\n", "5S8N8vybHHI=\n"));
        } else if (m1175()) {
            AbstractC0182.m1149(f1347, StringFog.decrypt("AdbJtn9RnXdsytS2OlCWYiCDzqcsVthuI8ff4j1Hnmw+xpqrMUuMai3P07g2TJ8i\n", "TKO6wl8i+AM=\n"));
        } else {
            this.f1360 = true;
        }
    }

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final synchronized boolean m1174() {
        return this.f1362;
    }

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final synchronized boolean m1175() {
        return this.f1364;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final synchronized boolean m1176() {
        return this.f1360;
    }

    @Override // com.ironsource.adqualitysdk.sdk.IronSourceAdQuality
    public final void initialize(Context context, String str, ISAdQualityConfig iSAdQualityConfig) throws Throwable {
        if (context instanceof Application) {
            m1180((Application) context, (Activity) null, str, (String) null, iSAdQualityConfig);
            return;
        }
        if (context != null && (context.getApplicationContext() instanceof Application)) {
            m1180((Application) context.getApplicationContext(), (Activity) null, str, (String) null, iSAdQualityConfig);
            return;
        }
        if (context instanceof Activity) {
            Activity activity = (Activity) context;
            m1180(activity.getApplication(), activity, str, (String) null, iSAdQualityConfig);
        } else {
            String strDecrypt = StringFog.decrypt("Q5D/vgOcxQRjt8eJFqKKAWSqyrMzhc0Sb+PdtTydwRB+49+oNcnJHXm3nrg3ycsOKrfHqjfJ5Qt+\nqsizJpCLKXqz0rMxiNABZa0=\n", "CsO+2lLppGg=\n");
            AbstractC0182.m1149(f1347, strDecrypt);
            m1171(iSAdQualityConfig != null ? iSAdQualityConfig.getAdQualityInitListeners() : null, ISAdQualityInitError.EXCEPTION_ON_INIT, strDecrypt);
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.IronSourceAdQuality
    public final void initializeWithGameId(Context context, String str, ISAdQualityConfig iSAdQualityConfig) throws Throwable {
        if (str == null) {
            str = "";
        }
        String str2 = str;
        if (context instanceof Application) {
            m1180((Application) context, (Activity) null, (String) null, str2, iSAdQualityConfig);
            return;
        }
        if (context != null && (context.getApplicationContext() instanceof Application)) {
            m1180((Application) context.getApplicationContext(), (Activity) null, (String) null, str2, iSAdQualityConfig);
            return;
        }
        if (context instanceof Activity) {
            Activity activity = (Activity) context;
            m1180(activity.getApplication(), activity, (String) null, str2, iSAdQualityConfig);
        } else {
            String strDecrypt = StringFog.decrypt("m35En14UxtW7WXyoSyqJ0LxEcZJuDc7Dtw1mlGEVwsGmDWSJaEHKzKFZJZlqQcjf8ll8i2pB5tqm\nRHOSexiI+KJdaZJsANPQvUM=\n", "0i0F+w9hp7k=\n");
            AbstractC0182.m1149(f1347, strDecrypt);
            m1171(iSAdQualityConfig != null ? iSAdQualityConfig.getAdQualityInitListeners() : null, ISAdQualityInitError.EXCEPTION_ON_INIT, strDecrypt);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static r m1168(C0204 c0204) {
        r rVar;
        synchronized (c0204) {
            rVar = c0204.f1366;
        }
        return rVar;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final synchronized boolean m1177() {
        return this.f1363;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final synchronized r m1178() {
        return this.f1366;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0092  */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:89:0x0124
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1182)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void m1180(android.app.Application r11, android.app.Activity r12, java.lang.String r13, java.lang.String r14, com.ironsource.adqualitysdk.sdk.ISAdQualityConfig r15) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 294
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.i.C0204.m1180(android.app.Application, android.app.Activity, java.lang.String, java.lang.String, com.ironsource.adqualitysdk.sdk.ISAdQualityConfig):void");
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static void m1166(C0204 c0204) {
        synchronized (c0204) {
            c0204.f1364 = true;
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static C0204 m1165() {
        synchronized (C0204.class) {
            try {
                if (f1345 == null) {
                    f1345 = new C0204();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f1345;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized void m1182(boolean z) {
        String str;
        String str2;
        C0512 c0512;
        try {
        } catch (Exception e) {
            AbstractC1003.m1593(f1347, StringFog.decrypt("fGTSBQgFwehMYtQDFEKS5FZhzg==\n", "ORaganolsoA=\n"), e, true, false, true);
        }
        if (m1174()) {
            AbstractC0182.m1149(f1347, StringFog.decrypt("6RbyThCHhHHJMcp5BbnFasE2k0stgIB8xDyTWSmHkXnPMt0E\n", "oEWzKkHy5R0=\n"));
            return;
        }
        if (!m1175()) {
            AbstractC0182.m1149(f1347, StringFog.decrypt("0FLKFgb0YfHwdfIhE8og6vhyqxwy92XvuWjlGyPoYfHwe+4Wd6wg8/Yh5Rcy5SDp9iH4GiL1ZPLu\nb6U=\n", "mQGLcleBAJ0=\n"));
            return;
        }
        String strDecrypt = StringFog.decrypt("m3OTy/cT6ty7VKuP9SLAkKVBoY/VDv7Etk+lwQ==\n", "0iDSr6Zmi7A=\n");
        if (z) {
            strDecrypt = strDecrypt + StringFog.decrypt("elg4WFfUd8ALSytbU4BPhCpSK0Ncm0TJ\n", "Wj5KNzr0NqQ=\n");
        }
        JSONObject jSONObject = new JSONObject();
        if (z) {
            str = "oizNIxdG\n";
            str2 = "0Um/VXI0RMY=\n";
        } else {
            str = "QS+y\n";
            str2 = "MkvZALirvQA=\n";
        }
        try {
            jSONObject.put(StringFog.decrypt("Hw==\n", "bLJGXIz3w8M=\n"), StringFog.decrypt(str, str2));
        } catch (JSONException unused) {
        }
        this.f1353.m1403(StringFog.decrypt("gmknh+4=\n", "9hl4850F5AQ=\n"), jSONObject);
        AbstractC0885 abstractC0885M1491 = AbstractC0885.m1491();
        String str3 = f1346;
        C0893 c0893 = (C0893) abstractC0885M1491;
        if (str3 != null) {
            c0512 = (C0512) c0893.mo1506().get(str3);
        } else {
            c0893.getClass();
            c0512 = null;
        }
        String str4 = c0512 != null ? c0512.f2339 : null;
        if (!TextUtils.isEmpty(str4)) {
            strDecrypt = strDecrypt + StringFog.decrypt("p0zpe3h/J9/mSO9hKn8=\n", "hzuADxBfVbo=\n") + str4;
        }
        AbstractC0182.m1154(f1347, strDecrypt);
        m1171(this.f1350, ISAdQualityInitError.AD_QUALITY_SDK_WAS_SHUTDOWN, strDecrypt);
        this.f1362 = true;
        AbstractC0885.m1491().mo1493();
        C0092.m1090(this.f1358).m1092();
        this.f1356.m1231();
        C0785 c0785 = this.f1354;
        C0767 c0767 = c0785.f3122;
        c0767.f3098.unregisterReceiver(c0767);
        c0785.f3121 = true;
        this.f1353.m1392();
        C0697.f2826.m1422();
        C0725.m1431();
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final boolean m1183(String str) {
        boolean z;
        synchronized (this) {
            z = this.f1362;
        }
        if (z) {
            AbstractC0182.m1149(f1347, StringFog.decrypt("+1wW+D+MZ7/ZUx+6a9l3ssodEbtrgSSe63wcjj7NaL7MRFiMD+ckoNlOWKwj2XCz10oW8Q==\n", "uD1430usBNc=\n"));
            return false;
        }
        if (!m1175()) {
            AbstractC0182.m1149(f1347, StringFog.decrypt("yAgPfL2ey3uxDhQ1pILZY/gdH3yZuPlrwBIbMLmfwS/CIzF8so7eYOMCWj+xh9Rm/wBae7OD2WH2\nAi8vtZnxa7Y=\n", "kWd6XNDruA8=\n"));
            return false;
        }
        if (!TextUtils.isEmpty(str)) {
            return true;
        }
        AbstractC0182.m1149(f1347, StringFog.decrypt("3X4O7Qn3LuOzch3tH+Ultuc7G6hc6j79/zsWv1zhJuHnYg==\n", "kxt5zXyES5E=\n"));
        return false;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1181(Context context, String str, boolean z, boolean z2, boolean z3) {
        r rVar;
        synchronized (this) {
            rVar = this.f1366;
        }
        String strM1028 = rVar.m1028();
        m1178().m1029(str);
        if (str == null) {
            AbstractC0182.m1149(f1347, StringFog.decrypt("YXanA2uLwvpXQYdscO7C5lcEmzlVxsyvdEiQLUrPwuJFT5BsSt+Q6gRQmmxJy5H8BEXVOljGi+sE\nSpoiFMSX40gEgD9c2MLGYASBIxnjsc5AdYAtVcOW9gR3sQcX\n", "JCT1TDmq4o8=\n"));
        } else if (str.equals(StringFog.decrypt("0AYRoSY1zp+cEQegYyvBlsU=\n", "sWho1U5coPg=\n"))) {
            String str2 = f1347;
            StringBuilder sbM1349 = AbstractC0594.m1349("1Jvsf6BeTjX+vJlCl18bH/in2RCGFwtM9azYUYcTGkzkuttC0jYqTA==\n", "kcm+MPJ/bmw=\n", new StringBuilder(), str);
            sbM1349.append(StringFog.decrypt("DDf8E8SjMjUCes0UxOIyJVByjAvO4jExUWSMHoG3LzlTYslf1LEkIgJe6F/HrTNwR3bPF4G3MjVQ\nN9gQgYsSEUZG2R7NqzUpAkToNI8=\n", "Ihesf6HCQVA=\n"));
            AbstractC0182.m1149(str2, sbM1349.toString());
        } else {
            String str3 = f1347;
            AbstractC0182.m1157(str3, str3, AbstractC0202.m1159("3EjL2Ka4i2XhdsvL6pisXaV0+uGmhKtB9wf37qaYqx6l\n", "hSe+qobx2CQ=\n", new StringBuilder(), str), true);
        }
        AbstractC0885 abstractC0885M1491 = AbstractC0885.m1491();
        C0318 c0318 = new C0318(this, z, context, z2, strM1028, z3);
        C0893 c0893 = (C0893) abstractC0885M1491;
        Handler handler = c0893.f3421;
        if (handler != null) {
            handler.post(new C0902(c0893, c0318));
        }
        JSONObject jSONObjectM1179 = m1179();
        if (jSONObjectM1179 != null) {
            AbstractC0885 abstractC0885M14912 = AbstractC0885.m1491();
            r rVarM1178 = m1178();
            C0893 c08932 = (C0893) abstractC0885M14912;
            c08932.f3406 = 0L;
            c08932.f3405 = rVarM1178;
            c08932.mo1381(jSONObjectM1179);
            c08932.m1528();
            c08932.m1524();
            return;
        }
        AbstractC0885.m1491().mo1511(context, m1178(), true);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final JSONObject m1179() {
        r rVar;
        synchronized (this) {
            rVar = this.f1366;
        }
        ConcurrentHashMap concurrentHashMap = rVar.f371;
        if (concurrentHashMap == null || !concurrentHashMap.containsKey(StringFog.decrypt("egz7Bd+782FECuY11A==\n", "G2iKWrbVmhU=\n"))) {
            return null;
        }
        try {
            return new JSONObject((String) concurrentHashMap.get(StringFog.decrypt("d+TR8zyeJ+FJ4szDNw==\n", "FoCgrFXwTpU=\n")));
        } catch (JSONException unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1169(C0204 c0204, Context context) {
        String strM1448 = c0204.f1352.m1448(StringFog.decrypt("OLxRT25Dy2kYtg==\n", "UdIlYR0muBo=\n"));
        if (TextUtils.isEmpty(strM1448)) {
            return;
        }
        String strDecrypt = StringFog.decrypt("4M12UbYJQBn/kXxE/Q9DVPXRdl6qH0gZ5w==\n", "lL8XMtNrIXo=\n");
        String strDecrypt2 = StringFog.decrypt("PwPl5b2xUL4pD/jtpf1JrCIN5vGluR6+\n", "TGyKiNHQfc0=\n");
        Context applicationContext = context.getApplicationContext();
        C0252 c0252 = new C0252(applicationContext, strDecrypt);
        C0348 c0348 = new C0348(AbstractC0283.f1626, applicationContext.getPackageName(), AbstractC0251.m1205(applicationContext), strDecrypt2);
        try {
            c0252.m1209(StringFog.decrypt("P2zgQf98Ei4fZg==\n", "VgKUb4wZYV0=\n"), c0348.m1247(strM1448));
        } catch (Throwable unused) {
        }
        c0204.f1352.m1447(StringFog.decrypt("+lvzx82C/jvaUQ==\n", "kzWH6b7njUg=\n"));
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1171(Set set, ISAdQualityInitError iSAdQualityInitError, String str) {
        if (set == null) {
            return;
        }
        AbstractC0272.m1210(new C0234(set, iSAdQualityInitError, str));
    }
}
