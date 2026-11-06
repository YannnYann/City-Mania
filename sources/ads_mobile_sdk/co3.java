package ads_mobile_sdk;

import com.vungle.ads.internal.protos.Sdk;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes.dex */
abstract class co3 {
    private static final String[] a = new String[Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE];

    public static String a(du duVar) {
        return a(duVar.i());
    }

    static {
        for (int i = 0; i <= 31; i++) {
            a[i] = String.format("\\%03o", Integer.valueOf(i));
        }
        String[] strArr = a;
        strArr[127] = "\\177";
        strArr[34] = "\\\"";
        strArr[39] = "\\'";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        strArr[7] = "\\a";
        strArr[11] = "\\v";
    }

    public static String a(String str) {
        int length = str.length();
        StringBuilder sb = null;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt > 127) {
                return a(str.getBytes(StandardCharsets.UTF_8));
            }
            String str2 = a[cCharAt];
            if (str2 != null) {
                if (sb == null) {
                    sb = new StringBuilder(length + 16);
                }
                if (i < i2) {
                    sb.append((CharSequence) str, i, i2);
                }
                sb.append(str2);
                i = i2 + 1;
            }
        }
        if (sb == null) {
            return str;
        }
        if (i < length) {
            sb.append((CharSequence) str, i, length);
        }
        return sb.toString();
    }

    public static String a(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length);
        for (byte b : bArr) {
            if (b == 34) {
                sb.append("\\\"");
            } else if (b == 39) {
                sb.append("\\'");
            } else if (b != 92) {
                switch (b) {
                    case 7:
                        sb.append("\\a");
                        break;
                    case 8:
                        sb.append("\\b");
                        break;
                    case 9:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case 11:
                        sb.append("\\v");
                        break;
                    case 12:
                        sb.append("\\f");
                        break;
                    case 13:
                        sb.append("\\r");
                        break;
                    default:
                        if (b >= 32 && b <= 126) {
                            sb.append((char) b);
                        } else {
                            sb.append('\\');
                            sb.append((char) (((b >>> 6) & 3) + 48));
                            sb.append((char) (((b >>> 3) & 7) + 48));
                            sb.append((char) ((b & 7) + 48));
                        }
                        break;
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }
}
