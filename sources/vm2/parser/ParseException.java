package vm2.parser;

/* JADX INFO: loaded from: classes6.dex */
public class ParseException extends Exception {
    private static final long serialVersionUID = 1;
    public Token currentToken;
    protected String eol;
    public int[][] expectedTokenSequences;
    public String[] tokenImage;

    public ParseException(Token token, int[][] iArr, String[] strArr) {
        super(initialise(token, iArr, strArr));
        this.eol = System.getProperty("line.separator", "\n");
        this.currentToken = token;
        this.expectedTokenSequences = iArr;
        this.tokenImage = strArr;
    }

    public ParseException() {
        this.eol = System.getProperty("line.separator", "\n");
    }

    public ParseException(String str) {
        super(str);
        this.eol = System.getProperty("line.separator", "\n");
    }

    private static String initialise(Token token, int[][] iArr, String[] strArr) {
        int[] iArr2;
        String property = System.getProperty("line.separator", "\n");
        StringBuffer stringBuffer = new StringBuffer();
        int length = 0;
        for (int i = 0; i < iArr.length; i++) {
            int[] iArr3 = iArr[i];
            if (length < iArr3.length) {
                length = iArr3.length;
            }
            int i2 = 0;
            while (true) {
                iArr2 = iArr[i];
                if (i2 >= iArr2.length) {
                    break;
                }
                stringBuffer.append(strArr[iArr2[i2]]);
                stringBuffer.append(' ');
                i2++;
            }
            if (iArr2[iArr2.length - 1] != 0) {
                stringBuffer.append("...");
            }
            stringBuffer.append(property);
            stringBuffer.append("    ");
        }
        Token token2 = token.next;
        String str = "Encountered \"";
        int i3 = 0;
        while (true) {
            if (i3 >= length) {
                break;
            }
            if (i3 != 0) {
                str = str + " ";
            }
            if (token2.kind == 0) {
                str = str + strArr[0];
                break;
            }
            str = (((str + " " + strArr[token2.kind]) + " \"") + add_escapes(token2.image)) + " \"";
            token2 = token2.next;
            i3++;
        }
        String str2 = (str + "\" at line " + token.next.beginLine + ", column " + token.next.beginColumn) + "." + property;
        return (iArr.length == 1 ? str2 + "Was expecting:" + property + "    " : str2 + "Was expecting one of:" + property + "    ") + stringBuffer.toString();
    }

    public static String add_escapes(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt != 0) {
                if (cCharAt == '\"') {
                    stringBuffer.append("\\\"");
                } else if (cCharAt == '\'') {
                    stringBuffer.append("\\'");
                } else if (cCharAt == '\\') {
                    stringBuffer.append("\\\\");
                } else if (cCharAt == '\f') {
                    stringBuffer.append("\\f");
                } else if (cCharAt != '\r') {
                    switch (cCharAt) {
                        case '\b':
                            stringBuffer.append("\\b");
                            break;
                        case '\t':
                            stringBuffer.append("\\t");
                            break;
                        case '\n':
                            stringBuffer.append("\\n");
                            break;
                        default:
                            char cCharAt2 = str.charAt(i);
                            if (cCharAt2 >= ' ' && cCharAt2 <= '~') {
                                stringBuffer.append(cCharAt2);
                            } else {
                                String str2 = "0000" + Integer.toString(cCharAt2, 16);
                                stringBuffer.append("\\u" + str2.substring(str2.length() - 4, str2.length()));
                            }
                            break;
                    }
                } else {
                    stringBuffer.append("\\r");
                }
            }
        }
        return stringBuffer.toString();
    }
}
