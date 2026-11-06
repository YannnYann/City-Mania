package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.ISAdQualityCustomMediationRevenue;
import com.ironsource.adqualitysdk.sdk.ISAdQualityMediationNetwork;
import com.ironsource.adqualitysdk.sdk.StringFog;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ʈ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0125 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final String f1065 = StringFog.decrypt("ZauymW4ovgNPvJ6CTjOkHGG8uZ5cM6IeQou4gVgpvhQ=\n", "LNnd9z1Hy3E=\n");

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C0324 f1066;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public boolean f1067;

    static {
        StringFog.decrypt("Ik0IzlnWvH0hBgPJe9emZiBFPsJO\n", "Tyhspzii1RI=\n");
        StringFog.decrypt("YoG8Ugwi6DhhyrdVITP3MmO0tFoUBOQh\n", "D+TYO21WgVc=\n");
        StringFog.decrypt("dhewL7/lzZB1XLcqu/DKvG4BoCmzw8GJ\n", "G3LURt6RpP8=\n");
    }

    public C0125(C0324 c0324) {
        this.f1066 = c0324;
        C0187 c0187 = new C0187(this);
        AbstractC1013 abstractC1013M1594 = AbstractC1013.m1594();
        synchronized (abstractC1013M1594) {
            abstractC1013M1594.f3815.add(c0187);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static JSONObject m1102(C0125 c0125, ISAdQualityCustomMediationRevenue iSAdQualityCustomMediationRevenue) {
        c0125.getClass();
        C0949 c0949 = new C0949();
        c0949.f3613 = true;
        c0949.f3616 = iSAdQualityCustomMediationRevenue.getRevenue();
        c0949.f3618 = m1101(iSAdQualityCustomMediationRevenue.getMediationNetwork());
        c0949.f3614 = iSAdQualityCustomMediationRevenue.getPlacement();
        c0949.f3612 = iSAdQualityCustomMediationRevenue.getCustomData();
        return c0949.m1566();
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static String m1101(ISAdQualityMediationNetwork iSAdQualityMediationNetwork) {
        if (iSAdQualityMediationNetwork == ISAdQualityMediationNetwork.ADMOB) {
            return StringFog.decrypt("cyWtwYg=\n", "EkHArupPn48=\n");
        }
        if (iSAdQualityMediationNetwork == ISAdQualityMediationNetwork.DT_FAIR_BID) {
            return StringFog.decrypt("bfuQhj5BeQ==\n", "C5r59FwoHTM=\n");
        }
        if (iSAdQualityMediationNetwork == ISAdQualityMediationNetwork.HELIUM) {
            return StringFog.decrypt("q4UaP4qA\n", "w+B2Vv/tj6s=\n");
        }
        if (iSAdQualityMediationNetwork == ISAdQualityMediationNetwork.LEVEL_PLAY) {
            return StringFog.decrypt("1R3XlqvPFSnPCw==\n", "pmin89m8ekc=\n");
        }
        if (iSAdQualityMediationNetwork == ISAdQualityMediationNetwork.MAX) {
            return StringFog.decrypt("XKfSjxtZXxM=\n", "Pdei43QvNn0=\n");
        }
        if (iSAdQualityMediationNetwork == ISAdQualityMediationNetwork.UNITY) {
            return StringFog.decrypt("Fat4mUv95Fw=\n", "YMUR7TKcgC8=\n");
        }
        if (iSAdQualityMediationNetwork == ISAdQualityMediationNetwork.SELF_MEDIATED) {
            return StringFog.decrypt("vWeRKsdBNoKvdpgo\n", "zgL9TKokUus=\n");
        }
        if (iSAdQualityMediationNetwork == ISAdQualityMediationNetwork.OTHER) {
            return StringFog.decrypt("8pLep9Q=\n", "nea2wqYIoo4=\n");
        }
        return "";
    }
}
