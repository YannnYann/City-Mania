package vm2.ast;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import vm2.LuaString;

/* JADX INFO: loaded from: classes6.dex */
public class Str {
    private Str() {
    }

    public static LuaString quoteString(String str) {
        return LuaString.valueUsing(unquote(str.substring(1, str.length() - 1)));
    }

    public static LuaString charString(String str) {
        return LuaString.valueUsing(unquote(str.substring(1, str.length() - 1)));
    }

    public static LuaString longString(String str) {
        int iIndexOf = str.indexOf(91, str.indexOf(91) + 1) + 1;
        return LuaString.valueUsing(iso88591bytes(str.substring(iIndexOf, str.length() - iIndexOf)));
    }

    public static byte[] iso88591bytes(String str) {
        try {
            return str.getBytes("ISO8859-1");
        } catch (UnsupportedEncodingException unused) {
            throw new IllegalStateException("ISO8859-1 not supported");
        }
    }

    public static byte[] unquote(String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        int i = 0;
        while (i < length) {
            char c = charArray[i];
            if (c == '\\' && i < length) {
                int i2 = i + 1;
                char c2 = charArray[i2];
                if (c2 == '\"') {
                    byteArrayOutputStream.write(34);
                } else if (c2 == '\'') {
                    byteArrayOutputStream.write(39);
                } else if (c2 == '\\') {
                    byteArrayOutputStream.write(92);
                } else if (c2 == 'f') {
                    byteArrayOutputStream.write(12);
                } else if (c2 == 'n') {
                    byteArrayOutputStream.write(10);
                } else if (c2 == 'r') {
                    byteArrayOutputStream.write(13);
                } else if (c2 == 't') {
                    byteArrayOutputStream.write(9);
                } else if (c2 == 'v') {
                    byteArrayOutputStream.write(11);
                } else if (c2 == 'a') {
                    byteArrayOutputStream.write(7);
                } else if (c2 != 'b') {
                    switch (c2) {
                        case '0':
                        case '1':
                        case '2':
                        case '3':
                        case '4':
                        case '5':
                        case '6':
                        case '7':
                        case '8':
                        case '9':
                            int i3 = i + 2;
                            int i4 = c2 - '0';
                            for (int i5 = 0; i3 < length && i5 < 2; i5++) {
                                char c3 = charArray[i3];
                                if (c3 < '0' || c3 > '9') {
                                    byteArrayOutputStream.write((byte) i4);
                                    i = i3 - 1;
                                    continue;
                                } else {
                                    i4 = (i4 * 10) + (c3 - '0');
                                    i3++;
                                }
                                break;
                            }
                            byteArrayOutputStream.write((byte) i4);
                            i = i3 - 1;
                            continue;
                        default:
                            byteArrayOutputStream.write((byte) c2);
                            break;
                    }
                } else {
                    byteArrayOutputStream.write(8);
                }
                i = i2;
            } else {
                byteArrayOutputStream.write((byte) c);
            }
            i++;
        }
        return byteArrayOutputStream.toByteArray();
    }
}
