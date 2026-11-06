package io.blueflower.stapel2d.util.json;

import io.blueflower.stapel2d.util.IntList;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;

/* JADX INFO: loaded from: classes5.dex */
public final class DefaultJsonReader implements JsonReader {
    public final Reader in;
    public String name;
    public boolean skipping;
    public int token;
    public String value;
    public int valueLength;
    public int valuePos;
    public final StringPool stringPool = new StringPool();
    public boolean lenient = false;
    public final char[] buffer = new char[1024];
    public int pos = 0;
    public int limit = 0;
    public int bufferStartLine = 1;
    public int bufferStartColumn = 1;
    public final IntList stack = new IntList();

    public DefaultJsonReader(Reader reader) {
        push(5);
        this.token = 0;
        this.skipping = false;
        if (reader == null) {
            throw new NullPointerException("in == null");
        }
        this.in = reader;
    }

    @Override // io.blueflower.stapel2d.util.json.JsonReader
    public void beginArray() throws IOException {
        expect(1);
    }

    @Override // io.blueflower.stapel2d.util.json.JsonReader
    public void endArray() throws IOException {
        expect(2);
    }

    @Override // io.blueflower.stapel2d.util.json.JsonReader
    public void beginObject() throws IOException {
        expect(3);
    }

    @Override // io.blueflower.stapel2d.util.json.JsonReader
    public void endObject() throws IOException {
        expect(4);
    }

    private void expect(int i) throws IOException {
        peek();
        if (this.token != i) {
            throw new IllegalStateException("Expected " + i + " but was " + peek());
        }
        advance();
    }

    @Override // io.blueflower.stapel2d.util.json.JsonReader
    public boolean hasNext() throws IOException {
        peek();
        int i = this.token;
        return (i == 4 || i == 2) ? false : true;
    }

    @Override // io.blueflower.stapel2d.util.json.JsonReader
    public int peek() throws IOException {
        int i;
        int i2 = this.token;
        if (i2 != 0) {
            return i2;
        }
        switch (peekStack()) {
            case 0:
                return nextInArray(true);
            case 1:
                return nextInArray(false);
            case 2:
                return nextInObject(true);
            case 3:
                return objectValue();
            case 4:
                return nextInObject(false);
            case 5:
                replaceTop(6);
                int iNextValue = nextValue();
                if (this.lenient || (i = this.token) == 1 || i == 3) {
                    return iNextValue;
                }
                throw new IOException("Expected JSON document to start with '[' or '{' but was " + this.token);
            case 6:
                try {
                    int iNextValue2 = nextValue();
                    if (this.lenient) {
                        return iNextValue2;
                    }
                    throw syntaxError("Expected EOF");
                } catch (EOFException unused) {
                    this.token = 13;
                    return 13;
                }
            case 7:
                throw new IllegalStateException("JsonReader is closed");
            default:
                throw new AssertionError();
        }
    }

    private int advance() throws IOException {
        peek();
        int i = this.token;
        this.token = 0;
        this.value = null;
        this.name = null;
        return i;
    }

    @Override // io.blueflower.stapel2d.util.json.JsonReader
    public String nextName() throws IOException {
        peek();
        if (this.token != 5) {
            throw new IllegalStateException("Expected a name but was " + peek());
        }
        String str = this.name;
        advance();
        return str;
    }

    @Override // io.blueflower.stapel2d.util.json.JsonReader
    public String nextString() throws IOException {
        peek();
        int i = this.token;
        if (i != 6 && i != 10) {
            throw new IllegalStateException("Expected a string but was " + peek());
        }
        String str = this.value;
        advance();
        return str;
    }

    @Override // io.blueflower.stapel2d.util.json.JsonReader
    public boolean nextBoolean() throws IOException {
        peek();
        if (this.token != 11) {
            throw new IllegalStateException("Expected a boolean but was " + this.token);
        }
        boolean z = this.value == "true";
        advance();
        return z;
    }

    @Override // io.blueflower.stapel2d.util.json.JsonReader
    public void nextNull() throws IOException {
        peek();
        if (this.token != 12) {
            throw new IllegalStateException("Expected null but was " + this.token);
        }
        advance();
    }

    @Override // io.blueflower.stapel2d.util.json.JsonReader
    public float nextFloat() throws IOException {
        peek();
        int i = this.token;
        if (i != 6 && i != 10) {
            throw new IllegalStateException("Expected a float but was " + this.token);
        }
        float f = Float.parseFloat(this.value);
        advance();
        return f;
    }

    @Override // io.blueflower.stapel2d.util.json.JsonReader
    public double nextDouble() throws IOException {
        peek();
        int i = this.token;
        if (i != 6 && i != 10) {
            throw new IllegalStateException("Expected a double but was " + this.token);
        }
        double d = Double.parseDouble(this.value);
        advance();
        return d;
    }

    @Override // io.blueflower.stapel2d.util.json.JsonReader
    public short nextShort() throws IOException {
        peek();
        int i = this.token;
        if (i != 6 && i != 10) {
            throw new IllegalStateException("Expected a short but was " + this.token);
        }
        short s = Short.parseShort(this.value);
        advance();
        return s;
    }

    @Override // io.blueflower.stapel2d.util.json.JsonReader
    public byte nextByte() throws IOException {
        peek();
        int i = this.token;
        if (i != 6 && i != 10) {
            throw new IllegalStateException("Expected a byte but was " + this.token);
        }
        byte b = Byte.parseByte(this.value);
        advance();
        return b;
    }

    @Override // io.blueflower.stapel2d.util.json.JsonReader
    public long nextLong() throws IOException {
        long j;
        peek();
        int i = this.token;
        if (i != 6 && i != 10) {
            throw new IllegalStateException("Expected a long but was " + this.token);
        }
        try {
            j = Long.parseLong(this.value);
        } catch (NumberFormatException unused) {
            double d = Double.parseDouble(this.value);
            long j2 = (long) d;
            if (j2 != d) {
                throw new NumberFormatException(this.value);
            }
            j = j2;
        }
        advance();
        return j;
    }

    @Override // io.blueflower.stapel2d.util.json.JsonReader
    public int nextInt() throws IOException {
        int i;
        peek();
        int i2 = this.token;
        if (i2 != 6 && i2 != 10) {
            throw new IllegalStateException("Expected an int but was " + this.token);
        }
        try {
            i = Integer.parseInt(this.value);
        } catch (NumberFormatException unused) {
            double d = Double.parseDouble(this.value);
            int i3 = (int) d;
            if (i3 != d) {
                throw new NumberFormatException(this.value);
            }
            i = i3;
        }
        advance();
        return i;
    }

    @Override // io.blueflower.stapel2d.util.json.JsonReader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.value = null;
        this.token = 0;
        this.stack.clear();
        this.stack.add(7);
        this.in.close();
    }

    @Override // io.blueflower.stapel2d.util.json.JsonReader
    public void skipValue() throws IOException {
        this.skipping = true;
        int i = 0;
        do {
            try {
                int iAdvance = advance();
                if (iAdvance == 1 || iAdvance == 3) {
                    i++;
                } else if (iAdvance == 2 || iAdvance == 4) {
                    i--;
                }
            } finally {
                this.skipping = false;
            }
        } while (i != 0);
    }

    private int peekStack() {
        return this.stack.get(r0.size() - 1);
    }

    private int pop() {
        return this.stack.removeAt(r0.size() - 1);
    }

    private void push(int i) {
        this.stack.add(i);
    }

    private void replaceTop(int i) {
        this.stack.set(r0.size() - 1, i);
    }

    private int nextInArray(boolean z) throws IOException {
        if (z) {
            replaceTop(1);
        } else {
            int iNextNonWhitespace = nextNonWhitespace();
            if (iNextNonWhitespace != 44) {
                if (iNextNonWhitespace != 59) {
                    if (iNextNonWhitespace == 93) {
                        pop();
                        this.token = 2;
                        return 2;
                    }
                    throw syntaxError("Unterminated array");
                }
                checkLenient();
            }
        }
        int iNextNonWhitespace2 = nextNonWhitespace();
        if (iNextNonWhitespace2 != 44 && iNextNonWhitespace2 != 59) {
            if (iNextNonWhitespace2 != 93) {
                this.pos--;
                return nextValue();
            }
            if (z) {
                pop();
                this.token = 2;
                return 2;
            }
        }
        checkLenient();
        this.pos--;
        this.value = "null";
        this.token = 12;
        return 12;
    }

    private int nextInObject(boolean z) throws IOException {
        if (z) {
            if (nextNonWhitespace() == 125) {
                pop();
                this.token = 4;
                return 4;
            }
            this.pos--;
        } else {
            int iNextNonWhitespace = nextNonWhitespace();
            if (iNextNonWhitespace != 44 && iNextNonWhitespace != 59) {
                if (iNextNonWhitespace == 125) {
                    pop();
                    this.token = 4;
                    return 4;
                }
                throw syntaxError("Unterminated object");
            }
        }
        int iNextNonWhitespace2 = nextNonWhitespace();
        if (iNextNonWhitespace2 == 34) {
            this.name = nextString((char) iNextNonWhitespace2);
        } else if (iNextNonWhitespace2 == 39) {
            checkLenient();
            this.name = nextString((char) iNextNonWhitespace2);
        } else {
            checkLenient();
            this.pos--;
            String strNextLiteral = nextLiteral(false);
            this.name = strNextLiteral;
            if (strNextLiteral.isEmpty()) {
                throw syntaxError("Expected name");
            }
        }
        replaceTop(3);
        this.token = 5;
        return 5;
    }

    private int objectValue() throws IOException {
        int iNextNonWhitespace = nextNonWhitespace();
        if (iNextNonWhitespace != 58) {
            if (iNextNonWhitespace == 61) {
                checkLenient();
                if (this.pos < this.limit || fillBuffer(1)) {
                    char[] cArr = this.buffer;
                    int i = this.pos;
                    if (cArr[i] == '>') {
                        this.pos = i + 1;
                    }
                }
            } else {
                throw syntaxError("Expected ':'");
            }
        }
        replaceTop(4);
        return nextValue();
    }

    private int nextValue() throws IOException {
        int iNextNonWhitespace = nextNonWhitespace();
        if (iNextNonWhitespace != 34) {
            if (iNextNonWhitespace != 39) {
                if (iNextNonWhitespace == 91) {
                    push(0);
                    this.token = 1;
                    return 1;
                }
                if (iNextNonWhitespace == 123) {
                    push(2);
                    this.token = 3;
                    return 3;
                }
                this.pos--;
                return readLiteral();
            }
            checkLenient();
        }
        this.value = nextString((char) iNextNonWhitespace);
        this.token = 6;
        return 6;
    }

    public final boolean fillBuffer(int i) throws IOException {
        int i2;
        int i3;
        int i4;
        int i5 = 0;
        while (true) {
            i2 = this.pos;
            if (i5 >= i2) {
                break;
            }
            if (this.buffer[i5] == '\n') {
                this.bufferStartLine++;
                this.bufferStartColumn = 1;
            } else {
                this.bufferStartColumn++;
            }
            i5++;
        }
        int i6 = this.limit;
        if (i6 != i2) {
            int i7 = i6 - i2;
            this.limit = i7;
            char[] cArr = this.buffer;
            System.arraycopy(cArr, i2, cArr, 0, i7);
        } else {
            this.limit = 0;
        }
        this.pos = 0;
        do {
            Reader reader = this.in;
            char[] cArr2 = this.buffer;
            int i8 = this.limit;
            int i9 = reader.read(cArr2, i8, cArr2.length - i8);
            if (i9 == -1) {
                return false;
            }
            i3 = this.limit + i9;
            this.limit = i3;
            if (this.bufferStartLine == 1 && (i4 = this.bufferStartColumn) == 1 && i3 > 0 && this.buffer[0] == 65279) {
                this.pos++;
                this.bufferStartColumn = i4 - 1;
            }
        } while (i3 < i);
        return true;
    }

    public final int getLineNumber() {
        int i = this.bufferStartLine;
        for (int i2 = 0; i2 < this.pos; i2++) {
            if (this.buffer[i2] == '\n') {
                i++;
            }
        }
        return i;
    }

    public final int getColumnNumber() {
        int i = this.bufferStartColumn;
        for (int i2 = 0; i2 < this.pos; i2++) {
            i = this.buffer[i2] == '\n' ? 1 : i + 1;
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0053, code lost:
    
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int nextNonWhitespace() throws java.io.IOException {
        /*
            r5 = this;
        L0:
            int r0 = r5.pos
            int r1 = r5.limit
            r2 = 1
            if (r0 < r1) goto L16
            boolean r0 = r5.fillBuffer(r2)
            if (r0 == 0) goto Le
            goto L16
        Le:
            java.io.EOFException r0 = new java.io.EOFException
            java.lang.String r1 = "End of input"
            r0.<init>(r1)
            throw r0
        L16:
            char[] r0 = r5.buffer
            int r1 = r5.pos
            int r3 = r1 + 1
            r5.pos = r3
            char r0 = r0[r1]
            r1 = 9
            if (r0 == r1) goto L0
            r1 = 10
            if (r0 == r1) goto L0
            r1 = 13
            if (r0 == r1) goto L0
            r1 = 32
            if (r0 == r1) goto L0
            r1 = 35
            if (r0 == r1) goto L76
            r1 = 47
            if (r0 == r1) goto L39
            goto L53
        L39:
            int r4 = r5.limit
            if (r3 != r4) goto L44
            boolean r2 = r5.fillBuffer(r2)
            if (r2 != 0) goto L44
            goto L53
        L44:
            r5.checkLenient()
            char[] r2 = r5.buffer
            int r3 = r5.pos
            char r2 = r2[r3]
            r4 = 42
            if (r2 == r4) goto L5c
            if (r2 == r1) goto L54
        L53:
            return r0
        L54:
            int r3 = r3 + 1
            r5.pos = r3
            r5.skipToEndOfLine()
            goto L0
        L5c:
            int r3 = r3 + 1
            r5.pos = r3
        */
        //  java.lang.String r0 = "*/"
        /*
            boolean r0 = r5.skipTo(r0)
            if (r0 == 0) goto L6f
            int r0 = r5.pos
            int r0 = r0 + 2
            r5.pos = r0
            goto L0
        L6f:
            java.lang.String r0 = "Unterminated comment"
            java.io.IOException r0 = r5.syntaxError(r0)
            throw r0
        L76:
            r5.checkLenient()
            r5.skipToEndOfLine()
            goto L0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.blueflower.stapel2d.util.json.DefaultJsonReader.nextNonWhitespace():int");
    }

    public final void checkLenient() throws IOException {
        if (!this.lenient) {
            throw syntaxError("Use JsonReader.setLenient(true) to accept malformed JSON");
        }
    }

    public final void skipToEndOfLine() throws IOException {
        char c;
        do {
            if (this.pos >= this.limit && !fillBuffer(1)) {
                return;
            }
            char[] cArr = this.buffer;
            int i = this.pos;
            this.pos = i + 1;
            c = cArr[i];
            if (c == '\r') {
                return;
            }
        } while (c != '\n');
    }

    public final boolean skipTo(String str) throws IOException {
        while (true) {
            if (this.pos + str.length() > this.limit && !fillBuffer(str.length())) {
                return false;
            }
            for (int i = 0; i < str.length(); i++) {
                if (this.buffer[this.pos + i] != str.charAt(i)) {
                    break;
                }
            }
            return true;
            this.pos++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x004e, code lost:
    
        if (r0 != null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0050, code lost:
    
        r0 = new java.lang.StringBuilder();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0055, code lost:
    
        r0.append(r6.buffer, r1, r6.pos - r1);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String nextString(char r7) throws java.io.IOException {
        /*
            r6 = this;
            r0 = 0
        L1:
            int r1 = r6.pos
        L3:
            int r2 = r6.pos
            int r3 = r6.limit
            r4 = 1
            if (r2 >= r3) goto L4e
            char[] r3 = r6.buffer
            int r5 = r2 + 1
            r6.pos = r5
            char r2 = r3[r2]
            if (r2 != r7) goto L30
            boolean r7 = r6.skipping
            if (r7 == 0) goto L1b
            java.lang.String r7 = "skipped!"
            return r7
        L1b:
            if (r0 != 0) goto L26
            io.blueflower.stapel2d.util.json.StringPool r7 = r6.stringPool
            int r5 = r5 - r1
            int r5 = r5 - r4
            java.lang.String r7 = r7.get(r3, r1, r5)
            return r7
        L26:
            int r5 = r5 - r1
            int r5 = r5 - r4
            r0.append(r3, r1, r5)
            java.lang.String r7 = r0.toString()
            return r7
        L30:
            r3 = 92
            if (r2 != r3) goto L3
            if (r0 != 0) goto L3b
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
        L3b:
            char[] r2 = r6.buffer
            int r3 = r6.pos
            int r3 = r3 - r1
            int r3 = r3 - r4
            r0.append(r2, r1, r3)
            char r1 = r6.readEscapeCharacter()
            r0.append(r1)
            int r1 = r6.pos
            goto L3
        L4e:
            if (r0 != 0) goto L55
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
        L55:
            char[] r2 = r6.buffer
            int r3 = r6.pos
            int r3 = r3 - r1
            r0.append(r2, r1, r3)
            boolean r1 = r6.fillBuffer(r4)
            if (r1 == 0) goto L64
            goto L1
        L64:
            java.lang.String r7 = "Unterminated string"
            java.io.IOException r7 = r6.syntaxError(r7)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: io.blueflower.stapel2d.util.json.DefaultJsonReader.nextString(char):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0050, code lost:
    
        checkLenient();
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0068, code lost:
    
        r0 = r2;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:31:0x004a. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String nextLiteral(boolean r8) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 202
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.blueflower.stapel2d.util.json.DefaultJsonReader.nextLiteral(boolean):java.lang.String");
    }

    public String toString() {
        return DefaultJsonReader.class.getSimpleName() + " near " + ((Object) getSnippet());
    }

    public final char readEscapeCharacter() throws IOException {
        if (this.pos == this.limit && !fillBuffer(1)) {
            throw syntaxError("Unterminated escape sequence");
        }
        char[] cArr = this.buffer;
        int i = this.pos;
        this.pos = i + 1;
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
        if (i + 5 > this.limit && !fillBuffer(4)) {
            throw syntaxError("Unterminated escape sequence");
        }
        String str = this.stringPool.get(this.buffer, this.pos, 4);
        this.pos += 4;
        return (char) Integer.parseInt(str, 16);
    }

    public final int readLiteral() throws IOException {
        this.value = nextLiteral(true);
        if (this.valueLength == 0) {
            throw syntaxError("Expected literal value");
        }
        int iDecodeLiteral = decodeLiteral();
        this.token = iDecodeLiteral;
        if (iDecodeLiteral == 6) {
            checkLenient();
        }
        return this.token;
    }

    public final int decodeLiteral() {
        char[] cArr;
        char c;
        char[] cArr2;
        char c2;
        char[] cArr3;
        char c3;
        int i = this.valuePos;
        if (i == -1) {
            return 6;
        }
        int i2 = this.valueLength;
        if (i2 == 4 && (('n' == (c3 = (cArr3 = this.buffer)[i]) || 'N' == c3) && (('u' == cArr3[i + 1] || 'U' == cArr3[i + 1]) && (('l' == cArr3[i + 2] || 'L' == cArr3[i + 2]) && ('l' == cArr3[i + 3] || 'L' == cArr3[i + 3]))))) {
            this.value = "null";
            return 12;
        }
        if (i2 == 4 && (('t' == (c2 = (cArr2 = this.buffer)[i]) || 'T' == c2) && (('r' == cArr2[i + 1] || 'R' == cArr2[i + 1]) && (('u' == cArr2[i + 2] || 'U' == cArr2[i + 2]) && ('e' == cArr2[i + 3] || 'E' == cArr2[i + 3]))))) {
            this.value = "true";
            return 11;
        }
        if (i2 == 5 && (('f' == (c = (cArr = this.buffer)[i]) || 'F' == c) && (('a' == cArr[i + 1] || 'A' == cArr[i + 1]) && (('l' == cArr[i + 2] || 'L' == cArr[i + 2]) && (('s' == cArr[i + 3] || 'S' == cArr[i + 3]) && ('e' == cArr[i + 4] || 'E' == cArr[i + 4])))))) {
            this.value = "false";
            return 11;
        }
        this.value = this.stringPool.get(this.buffer, i, i2);
        return decodeNumber(this.buffer, this.valuePos, this.valueLength);
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x006a A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int decodeNumber(char[] r10, int r11, int r12) {
        /*
            r9 = this;
            char r0 = r10[r11]
            r1 = 45
            if (r0 != r1) goto Le
            int r0 = r11 + 1
            char r2 = r10[r0]
            r8 = r2
            r2 = r0
            r0 = r8
            goto Lf
        Le:
            r2 = r11
        Lf:
            r3 = 6
            r4 = 57
            r5 = 48
            if (r0 != r5) goto L1b
            int r2 = r2 + 1
            char r0 = r10[r2]
            goto L2e
        L1b:
            r6 = 49
            if (r0 < r6) goto L6d
            if (r0 > r4) goto L6d
            int r2 = r2 + 1
            char r0 = r10[r2]
        L25:
            if (r0 < r5) goto L2e
            if (r0 > r4) goto L2e
            int r2 = r2 + 1
            char r0 = r10[r2]
            goto L25
        L2e:
            r6 = 46
            if (r0 != r6) goto L3f
            int r2 = r2 + 1
            char r0 = r10[r2]
        L36:
            if (r0 < r5) goto L3f
            if (r0 > r4) goto L3f
            int r2 = r2 + 1
            char r0 = r10[r2]
            goto L36
        L3f:
            r6 = 101(0x65, float:1.42E-43)
            if (r0 == r6) goto L47
            r6 = 69
            if (r0 != r6) goto L67
        L47:
            int r0 = r2 + 1
            char r6 = r10[r0]
            r7 = 43
            if (r6 == r7) goto L51
            if (r6 != r1) goto L55
        L51:
            int r0 = r2 + 2
            char r6 = r10[r0]
        L55:
            if (r6 < r5) goto L6d
            if (r6 > r4) goto L6d
            int r0 = r0 + 1
            char r1 = r10[r0]
            r2 = r0
        L5e:
            if (r1 < r5) goto L67
            if (r1 > r4) goto L67
            int r2 = r2 + 1
            char r1 = r10[r2]
            goto L5e
        L67:
            int r11 = r11 + r12
            if (r2 != r11) goto L6d
            r10 = 10
            return r10
        L6d:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: io.blueflower.stapel2d.util.json.DefaultJsonReader.decodeNumber(char[], int, int):int");
    }

    private IOException syntaxError(String str) throws IOException {
        throw new MalformedJsonException(str + " at line " + getLineNumber() + " column " + getColumnNumber());
    }

    public final CharSequence getSnippet() {
        StringBuilder sb = new StringBuilder();
        int iMin = Math.min(this.pos, 20);
        sb.append(this.buffer, this.pos - iMin, iMin);
        sb.append(this.buffer, this.pos, Math.min(this.limit - this.pos, 20));
        return sb;
    }
}
