package com.facebook.ads.redexgen.X;

import com.google.android.gms.ads.AdSize;
import com.vungle.ads.internal.protos.Sdk;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Xk, reason: case insensitive filesystem */
/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    java.lang.IllegalArgumentException: Provided Metadata instance does not have metadataVersion in it and therefore is malformed and cannot be read.
    	at kotlin.metadata.jvm.internal.JvmReadUtils.checkMetadataVersionForRead(JvmReadUtils.kt:79)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:46)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
    */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@Metadata
public final class C2034Xk {
    public static byte[] A00;
    public static final C2034Xk A01;

    static {
        A02();
        A01 = new C2034Xk();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 77);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{-39, -61, -64, -45, -64, -78, -60, -58, -52, -60, -51, -45, -46, -26, -29, -10, -29, -42, -12, -29, -27, -19, 4, 13, 3, -13, 8, 12, 4, -27, -23, -30, -59, -22, -24, -27, -22, -31, -49, -20, -31, -33, 25, 12, 19, 8, 27, 16, 29, 12, -17, 12, 16, 14, 15, 27, -32, -45, -38, -49, -30, -41, -28, -45, -59, -41, -46, -30, -42, 2, -11, -4, -15, 4, -7, 6, -11, -24, -26, -39, -32, -43, -24, -35, -22, -39, -51, 51, 48, 53, 34, 53, 42, 48, 47, 5, 38, 40, 51, 38, 38, 52, -7, -21, -19, -13, -21, -12, -6, -54, -25, -6, -25, -48, -7, -11, -12, -18, -17, -36, -19, -17, -49, -28, -24, -32, 47, 48, 37, 31, 39, 33, 46, -3, 47, 47, 33, 48, 5, 32, 54, 55, 44, 38, 46, 40, 53, 23, 60, 51, 40, -63, -74, -70, -78, -97, -82, -69, -76, -78, 52, 41, 45, 37, 22, 33, 44, 53, 37, -10, -12, -29, -27, -19, -59, -15, -17, -14, -15, -11, -21, -10, -21, -15, -16, -11, -15, -17, -34, -32, -24, -63, -34, -15, -34, -57, -16, -20, -21, 4, 2, -15, -13, -5, -34, -15, -3, -11};
    }

    @JvmStatic
    public static final List<C2035Xl> A01(String str) throws JSONException {
        C1h.A09(str, A00(29, 13, 47));
        ArrayList arrayList = new ArrayList();
        JSONArray jSONArray = new JSONObject(str).getJSONObject(A00(169, 17, 53)).getJSONArray(A00(0, 1, 88));
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            JSONObject imfTrack = jSONArray.getJSONObject(i).getJSONObject(A00(13, 9, 53));
            String string = imfTrack.getString(A00(199, 9, 67));
            JSONObject jSONObject = new JSONObject(imfTrack.getString(A00(186, 13, 48)));
            String string2 = jSONObject.getString(A00(140, 11, Sdk.SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE));
            String string3 = jSONObject.getString(A00(Sdk.SDKError.Reason.ASSET_FAILED_INSUFFICIENT_SPACE_VALUE, 14, 111));
            C1h.A06(string2);
            C1h.A06(string3);
            C2036Xm c2036Xm = new C2036Xm(string2, string3);
            JSONArray jSONArray2 = imfTrack.getJSONArray(A00(1, 12, 18));
            int length2 = jSONArray2.length();
            for (int i2 = 0; i2 < length2; i2++) {
                JSONObject dataTrack = jSONArray2.getJSONObject(i2);
                String strA00 = A00(151, 9, 0);
                JSONObject jSONObject2 = dataTrack.getJSONObject(strA00).getJSONObject(A00(Sdk.SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE, 9, 46));
                String strA002 = A00(AdSize.WIDE_SKYSCRAPER_WIDTH, 9, Sdk.SDKError.Reason.INVALID_INDEX_URL_VALUE);
                long j = jSONObject2.getLong(strA002);
                long j2 = dataTrack.getJSONObject(strA00).getJSONObject(A00(22, 7, 82)).getLong(strA002);
                JSONObject jSONObject3 = new JSONObject(dataTrack.getString(A00(102, 15, 57)));
                C1h.A06(string);
                arrayList.add(new C2035Xl(string, j, j2, c2036Xm, new C2037Xn(jSONObject3.getDouble(A00(69, 9, 67)), jSONObject3.getDouble(A00(78, 9, 39)), jSONObject3.getDouble(A00(56, 13, 33)), jSONObject3.getDouble(A00(42, 14, 90)), jSONObject3.getDouble(A00(87, 15, Sdk.SDKError.Reason.GZIP_ENCODE_ERROR_VALUE)))));
            }
        }
        return arrayList;
    }
}
