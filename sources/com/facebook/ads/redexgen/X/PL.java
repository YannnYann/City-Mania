package com.facebook.ads.redexgen.X;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@MetaExoPlayerCustomization
public final class PL {
    public static byte[] A01;
    public static String[] A02 = {"T1WONoMoNswt", "h95A9DDID2vy51YJ5wTrOXhJwWEWA5M6", "BNh", "qYCUhreSRwGU8bTsLEFLm0uZ8opPUzs2", "o2FupUf2MvleyHmS", "1Ictx1ghV5lK6qxO9G", "z6g5eCQjfqntXruTrk2yHJwNc84H20ye", "RpoIaAfZP"};
    public final Map<Integer, PK> A00 = new HashMap();

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            int i5 = bArrCopyOfRange[i4] ^ i3;
            if (A02[2].length() != 3) {
                throw new RuntimeException();
            }
            A02[4] = "TfJQcclkNqpSqrpu";
            bArrCopyOfRange[i4] = (byte) (i5 ^ 9);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{41, 10, 24, 14, 39, 10, 31, 14, 5, 8, 18, 8, 43, 54, 54, 39, 48, 19, 44, 48, 42, 55, 42, 44, 45, 65, 115, 127, 98, 126, 123, 124, 117, 64, 115, 102, 119};
    }

    static {
        A01();
    }

    public PL(String str) {
        if (str != null) {
            try {
                if (!str.isEmpty()) {
                    JSONArray jSONArray = new JSONArray(str);
                    for (int jitter = 0; jitter < jSONArray.length(); jitter++) {
                        JSONObject jSONObject = jSONArray.getJSONObject(jitter);
                        int i = jSONObject.getInt(A00(17, 8, 74));
                        int samplingRate = jSONObject.getInt(A00(0, 11, 98));
                        int position = jSONObject.getInt(A00(11, 6, 75));
                        this.A00.put(Integer.valueOf(i), new PK(this, samplingRate, position, jSONObject.getInt(A00(25, 12, 27))));
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public final PK A02() {
        if (this.A00.containsKey(0)) {
            return this.A00.get(0);
        }
        return null;
    }
}
