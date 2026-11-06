package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Pair;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import com.vungle.ads.internal.protos.Sdk;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.e1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2346e1 {
    public static byte[] A00;
    public static String[] A01 = {"Xk1kfMm1vqid3nXGcMABBxIYdKXbDo3B", "Tba49h0j1DSqTKK5AZeMHCixjNSvNzC8", "tUw1vJOBnlNHWQpnwJpSUOvNN6rHufed", "MNv3cAivDgcv7LDkpHDZbr6ID5svYoE2", "bpitahLPIV1cyga99qmdGNHRvutJJD57", "WjDmZ9QFMIoPWrPjMhTZzTZlD9IeDf6c", "Ay8snxOVcxDEDKoHcRjXuKsAG8X7C1Ma", "Hie4DHlmJa88KDCvfDwYVWlCV2Ts1"};

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static WebResourceResponse A00(C1643Hi c1643Hi, WebResourceRequest webResourceRequest, Uri uri, String str, HashMap<String, String> map) throws IOException {
        String strA02;
        String strA022 = A02(85, 5, 83);
        NN nnA0H = C2247cP.A06(c1643Hi.A02()).A0H(c1643Hi);
        C2771kz.A0H(c1643Hi, uri.toString());
        try {
            C2345e0 c2345e0 = new C2345e0(c1643Hi.A02(), uri, nnA0H);
            int iAvailable = c2345e0.available();
            if (iAvailable <= 0) {
                A05(c1643Hi, 1, new Pair[]{new Pair(A02(61, 9, Sdk.SDKError.Reason.INVALID_INDEX_URL_VALUE), String.valueOf(iAvailable))});
                return null;
            }
            String strA03 = A03(webResourceRequest.getRequestHeaders());
            if (strA03 == null) {
                c1643Hi.A0F().A6m();
                A06(map, iAvailable);
                return new WebResourceResponse(str, null, 200, A02(44, 2, 33), map, c2345e0);
            }
            try {
                C2347e2 c2347e2A01 = A01(strA03);
                if (c2347e2A01.A03) {
                    int i = c2347e2A01.A01;
                    int i2 = c2347e2A01.A00 == -1 ? iAvailable - 1 : c2347e2A01.A00;
                    A06(map, iAvailable);
                    map.put(A02(31, 13, 62), A02(75, 6, 100) + i + A02(1, 1, 0) + i2 + A02(2, 1, 88) + iAvailable);
                    c1643Hi.A0F().A6m();
                    return new WebResourceResponse(str, null, 206, A02(46, 15, 10), map, c2345e0);
                }
                if (c2347e2A01.A02 != null) {
                    strA02 = c2347e2A01.A02;
                } else {
                    if (A01[1].charAt(3) == 'U') {
                        throw new RuntimeException();
                    }
                    A01[4] = "uHkXDZAZlpB5P3uzvkbRDbIcwaFBDsfL";
                    strA02 = A02(90, 4, 70);
                }
                A05(c1643Hi, 0, new Pair[]{new Pair(A02(94, 5, 79), strA02)});
                return null;
            } catch (NumberFormatException e) {
                A05(c1643Hi, 3, new Pair[]{new Pair(strA022, e.toString())});
                return null;
            }
        } catch (IOException e2) {
            A05(c1643Hi, 2, new Pair[]{new Pair(strA022, e2.toString())});
            return null;
        }
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 8);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A00 = new byte[]{118, 53, -113, 97, -67, -33, -33, -31, -20, -16, -87, -50, -35, -22, -29, -31, -17, 88, -124, -125, -119, 122, -125, -119, 66, 97, 122, -125, 124, -119, 125, -119, -75, -76, -70, -85, -76, -70, 115, -104, -89, -76, -83, -85, 120, 116, 98, 115, -124, -122, 123, 115, 126, 50, 85, -127, -128, -122, 119, -128, -122, -36, -15, -36, -28, -25, -36, -35, -25, -32, -122, -99, -104, -119, -105, -50, -27, -32, -47, -33, -116, -127, -115, -126, -125, -64, -51, -51, -54, -51, -68, -61, -70, -70, -55, -72, -59, -66, -68};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static void A05(C1643Hi c1643Hi, int i, Pair<String, String>[] pairArr) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(A02(81, 4, 22), i);
            for (Pair<String, String> pair : pairArr) {
                jSONObject.put((String) pair.first, pair.second);
            }
        } catch (JSONException unused) {
        }
        c1643Hi.A0F().A6l(jSONObject.toString());
    }

    static {
        A04();
    }

    public static C2347e2 A01(String str) {
        if (str == null) {
            C2347e2 parseResult = new C2347e2();
            parseResult.A03 = false;
            parseResult.A02 = null;
            return parseResult;
        }
        String[] strArrSplit = str.split(A02(3, 1, 28));
        if (strArrSplit.length >= 2) {
            if (A02(70, 5, 28).equals(strArrSplit[0].toLowerCase(Locale.US).trim())) {
                if (strArrSplit[1].trim().split(A02(0, 1, 66)).length != 1) {
                    C2347e2 c2347e2 = new C2347e2();
                    c2347e2.A03 = false;
                    c2347e2.A02 = str;
                    return c2347e2;
                }
                String[] rangeParts = strArrSplit[1].trim().split(A02(1, 1, 0));
                C2347e2 c2347e22 = new C2347e2();
                c2347e22.A03 = true;
                c2347e22.A02 = str;
                c2347e22.A01 = TextUtils.isEmpty(rangeParts[0]) ? 0 : Integer.parseInt(rangeParts[0]);
                int length = rangeParts.length;
                String[] mainParts = A01;
                if (mainParts[7].length() != 29) {
                    throw new RuntimeException();
                }
                String[] strArr = A01;
                strArr[2] = "pgB7YcOeECmWisHlhnCXqQl4jF6X8fPP";
                strArr[5] = "MuK1RJAj7x3zyJ1VHs3Dmt0bGGRcsf8r";
                if (length > 1) {
                    c2347e22.A00 = TextUtils.isEmpty(rangeParts[1]) ? -1 : Integer.parseInt(rangeParts[1]);
                } else {
                    c2347e22.A00 = -1;
                }
                return c2347e22;
            }
        }
        C2347e2 c2347e23 = new C2347e2();
        c2347e23.A03 = false;
        c2347e23.A02 = str;
        return c2347e23;
    }

    public static String A03(Map<String, String> map) {
        for (String str : map.keySet()) {
            if (A02(94, 5, 79).equals(str.toLowerCase(Locale.US))) {
                return map.get(str);
            }
        }
        return null;
    }

    public static void A06(HashMap<String, String> map, int i) {
        map.put(A02(4, 13, Sdk.SDKError.Reason.GZIP_ENCODE_ERROR_VALUE), A02(70, 5, 28));
        map.put(A02(17, 14, 13), String.valueOf(i));
    }
}
