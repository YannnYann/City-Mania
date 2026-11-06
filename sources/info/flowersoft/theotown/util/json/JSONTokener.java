package info.flowersoft.theotown.util.json;

/* JADX INFO: loaded from: classes4.dex */
public class JSONTokener {
    public final String in;
    public final char[] inChars;
    public int pos;

    public static int dehexchar(char c) {
        if (c >= '0' && c <= '9') {
            return c - '0';
        }
        if (c >= 'A' && c <= 'F') {
            return c - '7';
        }
        if (c < 'a' || c > 'f') {
            return -1;
        }
        return c - 'W';
    }

    public JSONTokener(String str) {
        this.in = str;
        this.inChars = str.toCharArray();
    }

    public Object nextValue() throws JSONException {
        int iNextCleanInternal = nextCleanInternal();
        if (iNextCleanInternal == -1) {
            throw syntaxError("End of input");
        }
        if (iNextCleanInternal == 34 || iNextCleanInternal == 39) {
            return nextString((char) iNextCleanInternal);
        }
        if (iNextCleanInternal == 91) {
            return readArray();
        }
        if (iNextCleanInternal == 123) {
            return readObject();
        }
        this.pos--;
        return readLiteral();
    }

    public final int nextCleanInternal() throws JSONException {
        char c;
        char c2;
        while (true) {
            int i = this.pos;
            char[] cArr = this.inChars;
            if (i >= cArr.length) {
                return -1;
            }
            int i2 = i + 1;
            this.pos = i2;
            c = cArr[i];
            if (c != '\t' && c != '\n' && c != '\r' && c != ' ') {
                if (c != '/' || i2 == cArr.length || ((c2 = cArr[i2]) != '*' && c2 != '/')) {
                    break;
                }
                skipComment();
            }
        }
        return c;
    }

    public final void skipComment() throws JSONException {
        int i;
        char[] cArr = this.inChars;
        int i2 = this.pos;
        int i3 = i2 + 1;
        this.pos = i3;
        if (cArr[i2] == '*') {
            int iIndexOf = this.in.indexOf("*/", i3);
            if (iIndexOf == -1) {
                throw syntaxError("Unterminated comment");
            }
            this.pos = iIndexOf + 2;
            return;
        }
        while (true) {
            i = this.pos;
            char[] cArr2 = this.inChars;
            if (i >= cArr2.length) {
                return;
            }
            char c = cArr2[i];
            if (c == '\r' || c == '\n') {
                break;
            } else {
                this.pos = i + 1;
            }
        }
        this.pos = i + 1;
    }

    public String nextString(char c) throws JSONException {
        int i = this.pos;
        StringBuilder sb = null;
        while (true) {
            int i2 = this.pos;
            char[] cArr = this.inChars;
            if (i2 < cArr.length) {
                int i3 = i2 + 1;
                this.pos = i3;
                char c2 = cArr[i2];
                if (c2 == c) {
                    if (sb == null) {
                        return new String(cArr, i, i2 - i);
                    }
                    sb.append(cArr, i, i2 - i);
                    return sb.toString();
                }
                if (c2 == '\\') {
                    if (i3 == cArr.length) {
                        throw syntaxError("Unterminated escape sequence");
                    }
                    if (sb == null) {
                        sb = new StringBuilder(Math.max((i3 - i) * 2, 16));
                    }
                    sb.append(this.inChars, i, (this.pos - 1) - i);
                    sb.append(readEscapeCharacter());
                    i = this.pos;
                }
            } else {
                throw syntaxError("Unterminated string");
            }
        }
    }

    public final char readEscapeCharacter() throws JSONException {
        char[] cArr = this.inChars;
        int i = this.pos;
        int i2 = i + 1;
        this.pos = i2;
        char c = cArr[i];
        if (c == 'b') {
            return '\b';
        }
        if (c == 'f') {
            return '\f';
        }
        if (c == 'n') {
            return '\n';
        }
        if (c == 'r') {
            return '\r';
        }
        if (c == 't') {
            return '\t';
        }
        if (c != 'u') {
            return c;
        }
        if (i + 5 > cArr.length) {
            throw syntaxError("Unterminated escape sequence");
        }
        String str = new String(cArr, i2, 4);
        this.pos += 4;
        return (char) Integer.parseInt(str, 16);
    }

    public final Object readLiteral() throws JSONException {
        String strSubstring;
        int i;
        String strNextToInternal = nextToInternal("{}[]/\\:,=;# \t\f");
        if (strNextToInternal.length() == 0) {
            throw syntaxError("Expected literal value");
        }
        if ("null".equalsIgnoreCase(strNextToInternal)) {
            return JSONObject.NULL;
        }
        if ("true".equalsIgnoreCase(strNextToInternal)) {
            return Boolean.TRUE;
        }
        if ("false".equalsIgnoreCase(strNextToInternal)) {
            return Boolean.FALSE;
        }
        if (strNextToInternal.indexOf(46) == -1) {
            if (strNextToInternal.startsWith("0x") || strNextToInternal.startsWith("0X")) {
                strSubstring = strNextToInternal.substring(2);
                i = 16;
            } else if (!strNextToInternal.startsWith("0") || strNextToInternal.length() <= 1) {
                i = 10;
                strSubstring = strNextToInternal;
            } else {
                strSubstring = strNextToInternal.substring(1);
                i = 8;
            }
            try {
                long j = Long.parseLong(strSubstring, i);
                if (j <= 2147483647L && j >= -2147483648L) {
                    return Integer.valueOf((int) j);
                }
                return Long.valueOf(j);
            } catch (NumberFormatException unused) {
            }
        }
        try {
            return Double.valueOf(strNextToInternal);
        } catch (NumberFormatException unused2) {
            return new String(strNextToInternal);
        }
    }

    public final String nextToInternal(String str) {
        int i = this.pos;
        while (true) {
            int i2 = this.pos;
            char[] cArr = this.inChars;
            if (i2 < cArr.length) {
                char c = cArr[i2];
                if (c == '\r' || c == '\n' || str.indexOf(c) != -1) {
                    break;
                }
                this.pos++;
            } else {
                return new String(cArr, i, cArr.length - i);
            }
        }
        return new String(this.inChars, i, this.pos - i);
    }

    public final JSONObject readObject() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        int iNextCleanInternal = nextCleanInternal();
        if (iNextCleanInternal != 125) {
            if (iNextCleanInternal != -1) {
                this.pos--;
            }
            while (true) {
                Object objNextValue = nextValue();
                if (!(objNextValue instanceof String)) {
                    if (objNextValue == null) {
                        throw syntaxError("Names cannot be null");
                    }
                    throw syntaxError("Names must be strings, but " + objNextValue + " is of type " + objNextValue.getClass().getName());
                }
                int iNextCleanInternal2 = nextCleanInternal();
                if (iNextCleanInternal2 != 58 && iNextCleanInternal2 != 61) {
                    throw syntaxError("Expected ':' after " + objNextValue);
                }
                int i = this.pos;
                char[] cArr = this.inChars;
                if (i < cArr.length && cArr[i] == '>') {
                    this.pos = i + 1;
                }
                jSONObject.put((String) objNextValue, nextValue());
                int iNextCleanInternal3 = nextCleanInternal();
                if (iNextCleanInternal3 != 44 && iNextCleanInternal3 != 59) {
                    if (iNextCleanInternal3 != 125) {
                        throw syntaxError("Unterminated object");
                    }
                }
            }
        }
        return jSONObject;
    }

    public final JSONArray readArray() throws JSONException {
        JSONArray jSONArray = new JSONArray();
        boolean z = false;
        while (true) {
            int iNextCleanInternal = nextCleanInternal();
            if (iNextCleanInternal == -1) {
                throw syntaxError("Unterminated array");
            }
            if (iNextCleanInternal == 44 || iNextCleanInternal == 59) {
                jSONArray.put((Object) null);
            } else if (iNextCleanInternal != 93) {
                this.pos--;
                jSONArray.put(nextValue());
                int iNextCleanInternal2 = nextCleanInternal();
                if (iNextCleanInternal2 != 44 && iNextCleanInternal2 != 59) {
                    if (iNextCleanInternal2 != 93) {
                        throw syntaxError("Unterminated array");
                    }
                }
            } else if (z) {
                jSONArray.put((Object) null);
            }
            z = true;
        }
        return jSONArray;
    }

    public JSONException syntaxError(String str) {
        return new JSONException(str + this);
    }

    public String toString() {
        return " at character " + this.pos + " of " + this.in;
    }

    public boolean more() {
        return this.pos < this.inChars.length;
    }

    public char next() {
        int i = this.pos;
        char[] cArr = this.inChars;
        if (i >= cArr.length) {
            return (char) 0;
        }
        this.pos = i + 1;
        return cArr[i];
    }

    public char next(char c) throws JSONException {
        char next = next();
        if (next == c) {
            return next;
        }
        throw syntaxError("Expected " + c + " but was " + next);
    }

    public char nextClean() throws JSONException {
        int iNextCleanInternal = nextCleanInternal();
        if (iNextCleanInternal == -1) {
            return (char) 0;
        }
        return (char) iNextCleanInternal;
    }

    public String next(int i) throws JSONException {
        int i2 = this.pos;
        int i3 = i2 + i;
        char[] cArr = this.inChars;
        if (i3 > cArr.length) {
            throw syntaxError(i + " is out of bounds");
        }
        String str = new String(cArr, i2, i);
        this.pos += i;
        return str;
    }

    public String nextTo(String str) {
        str.getClass();
        return nextToInternal(str).trim();
    }

    public String nextTo(char c) {
        return nextToInternal(String.valueOf(c)).trim();
    }

    public void skipPast(String str) {
        int iIndexOf = this.in.indexOf(str, this.pos);
        this.pos = iIndexOf == -1 ? this.inChars.length : str.length() + iIndexOf;
    }

    public char skipTo(char c) {
        int iIndexOf = this.in.indexOf(c, this.pos);
        if (iIndexOf == -1) {
            return (char) 0;
        }
        this.pos = iIndexOf;
        return c;
    }

    public void back() {
        int i = this.pos - 1;
        this.pos = i;
        if (i == -1) {
            this.pos = 0;
        }
    }
}
