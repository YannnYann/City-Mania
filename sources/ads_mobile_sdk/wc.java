package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.PrecisionType;
import com.google.gson.JsonObject;
import com.ironsource.C3522b4;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class wc {
    public static xc a(JsonObject json) {
        Intrinsics.checkNotNullParameter(json, "json");
        ds1 ds1Var = ds1.a;
        try {
            yc ycVar = zc.b;
            Intrinsics.checkNotNullParameter(json, "<this>");
            Intrinsics.checkNotNullParameter("type_num", C3522b4.i.W);
            int asInt = json.get("type_num").getAsInt();
            ycVar.getClass();
            zc zcVarA = yc.a(asInt);
            Intrinsics.checkNotNullParameter(json, "<this>");
            Intrinsics.checkNotNullParameter(C3522b4.i.X, C3522b4.i.W);
            long asLong = json.get(C3522b4.i.X).getAsLong();
            Intrinsics.checkNotNullParameter(json, "<this>");
            Intrinsics.checkNotNullParameter("precision_num", C3522b4.i.W);
            int asInt2 = json.get("precision_num").getAsInt();
            PrecisionType precisionType = asInt2 != 1 ? asInt2 != 2 ? asInt2 != 3 ? PrecisionType.UNKNOWN : PrecisionType.PRECISE : PrecisionType.PUBLISHER_PROVIDED : PrecisionType.ESTIMATED;
            Intrinsics.checkNotNullParameter(json, "<this>");
            Intrinsics.checkNotNullParameter(InAppPurchaseMetaData.KEY_CURRENCY, C3522b4.i.W);
            String asString = json.get(InAppPurchaseMetaData.KEY_CURRENCY).getAsString();
            Intrinsics.checkNotNullExpressionValue(asString, "getAsString(...)");
            return new xc(zcVarA, asLong, precisionType, asString);
        } catch (Exception e) {
            List list = a2.a(e, "t", e).s;
            String message = e.getMessage();
            if (message == null) {
                message = e.getClass().getName();
            }
            Intrinsics.checkNotNull(message);
            list.add(message);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0094  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static ads_mobile_sdk.xc b(com.google.gson.JsonObject r10) {
        /*
            java.lang.String r0 = "json"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            java.lang.String r0 = "type"
            java.lang.String r1 = ""
            java.lang.String r0 = ads_mobile_sdk.ds1.a(r10, r0, r1)
            java.lang.String r2 = "precision"
            java.lang.String r2 = ads_mobile_sdk.ds1.a(r10, r2, r1)
            java.lang.String r3 = "currency"
            java.lang.String r9 = ads_mobile_sdk.ds1.a(r10, r3, r1)
            java.lang.String r1 = "value"
            long r3 = ads_mobile_sdk.ds1.g(r10, r1)
            int r10 = r0.hashCode()
            r1 = 66934(0x10576, float:9.3795E-41)
            if (r10 == r1) goto L51
            r1 = 66944(0x10580, float:9.3809E-41)
            if (r10 == r1) goto L45
            r1 = 1349395245(0x506e232d, float:1.5981131E10)
            if (r10 == r1) goto L33
            goto L59
        L33:
            java.lang.String r10 = "ONE_PIXEL"
            boolean r10 = r0.equals(r10)
            if (r10 != 0) goto L3c
            goto L59
        L3c:
            r10 = 1000(0x3e8, float:1.401E-42)
            long r0 = (long) r10
            long r3 = r3 / r0
            ads_mobile_sdk.zc r10 = ads_mobile_sdk.zc.g
        L42:
            r5 = r10
            r6 = r3
            goto L5f
        L45:
            java.lang.String r10 = "CPM"
            boolean r10 = r0.equals(r10)
            if (r10 != 0) goto L4e
            goto L59
        L4e:
            ads_mobile_sdk.zc r10 = ads_mobile_sdk.zc.e
            goto L42
        L51:
            java.lang.String r10 = "CPC"
            boolean r10 = r0.equals(r10)
            if (r10 != 0) goto L5c
        L59:
            ads_mobile_sdk.zc r10 = ads_mobile_sdk.zc.d
            goto L42
        L5c:
            ads_mobile_sdk.zc r10 = ads_mobile_sdk.zc.f
            goto L42
        L5f:
            int r10 = r2.hashCode()
            r0 = -2131980260(0xffffffff80ec901c, float:-2.1724874E-38)
            if (r10 == r0) goto L8c
            r0 = 399232571(0x17cbce3b, float:1.3170627E-24)
            if (r10 == r0) goto L80
            r0 = 1271254246(0x4bc5cce6, float:2.5926092E7)
            if (r10 == r0) goto L73
            goto L94
        L73:
            java.lang.String r10 = "PUBLISHER_PROVIDED"
            boolean r10 = r2.equals(r10)
            if (r10 != 0) goto L7c
            goto L94
        L7c:
            com.google.android.libraries.ads.mobile.sdk.common.PrecisionType r10 = com.google.android.libraries.ads.mobile.sdk.common.PrecisionType.PUBLISHER_PROVIDED
        L7e:
            r8 = r10
            goto L9a
        L80:
            java.lang.String r10 = "PRECISE"
            boolean r10 = r2.equals(r10)
            if (r10 != 0) goto L89
            goto L94
        L89:
            com.google.android.libraries.ads.mobile.sdk.common.PrecisionType r10 = com.google.android.libraries.ads.mobile.sdk.common.PrecisionType.PRECISE
            goto L7e
        L8c:
            java.lang.String r10 = "ESTIMATED"
            boolean r10 = r2.equals(r10)
            if (r10 != 0) goto L97
        L94:
            com.google.android.libraries.ads.mobile.sdk.common.PrecisionType r10 = com.google.android.libraries.ads.mobile.sdk.common.PrecisionType.UNKNOWN
            goto L7e
        L97:
            com.google.android.libraries.ads.mobile.sdk.common.PrecisionType r10 = com.google.android.libraries.ads.mobile.sdk.common.PrecisionType.ESTIMATED
            goto L7e
        L9a:
            ads_mobile_sdk.xc r4 = new ads_mobile_sdk.xc
            r4.<init>(r5, r6, r8, r9)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.wc.b(com.google.gson.JsonObject):ads_mobile_sdk.xc");
    }
}
