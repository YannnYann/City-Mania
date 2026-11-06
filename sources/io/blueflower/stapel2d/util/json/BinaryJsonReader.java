package io.blueflower.stapel2d.util.json;

import com.vungle.ads.internal.protos.Sdk;
import io.blueflower.stapel2d.util.IntList;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class BinaryJsonReader implements JsonReader {
    public final DataInputStream in;
    public final IntList stack = new IntList();
    public List<String> strings;
    public int token;

    public static int decodeTinyInt(int i) {
        return ((byte) (i << 1)) >> 1;
    }

    public BinaryJsonReader(DataInputStream dataInputStream) {
        push(5);
        this.token = 0;
        this.strings = new ArrayList();
        if (dataInputStream == null) {
            throw new NullPointerException("in == null");
        }
        this.in = dataInputStream;
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

    public final void expect(int i) throws IOException {
        internalPeek();
        if (this.token != i) {
            throw new IllegalStateException("Expected " + i + " but was " + internalPeek());
        }
        advance();
    }

    @Override // io.blueflower.stapel2d.util.json.JsonReader
    public boolean hasNext() throws IOException {
        internalPeek();
        int i = this.token;
        return (i == 4 || i == 2 || i == 13) ? false : true;
    }

    @Override // io.blueflower.stapel2d.util.json.JsonReader
    public int peek() throws IOException {
        int iInternalPeek = internalPeek();
        if (iInternalPeek == 19 || iInternalPeek == 20 || iInternalPeek == 21) {
            iInternalPeek = 5;
        }
        if (iInternalPeek == 22 || iInternalPeek == 23 || iInternalPeek == 24) {
            iInternalPeek = 6;
        }
        if (iInternalPeek == 17 || iInternalPeek == 18) {
            return 11;
        }
        return iInternalPeek;
    }

    public final int internalPeek() throws IOException {
        int i = this.token;
        if (i != 0) {
            return i;
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
                int i2 = this.token;
                if (i2 == 1 || i2 == 3) {
                    return iNextValue;
                }
                throw new IOException("Expected JSON document to start with '[' or '{' but was " + this.token);
            case 6:
                try {
                    nextValue();
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

    public final int advance() throws IOException {
        internalPeek();
        int i = this.token;
        this.token = 0;
        return i;
    }

    @Override // io.blueflower.stapel2d.util.json.JsonReader
    public String nextName() throws IOException {
        String string;
        internalPeek();
        int i = this.token;
        if (i != 5 && i != 19 && i != 20 && i != 21) {
            throw new IllegalStateException("Expected a name but was " + this.token);
        }
        if (i == 5) {
            string = string();
        } else {
            string = readString(i, 19, 20, 21);
        }
        advance();
        return string;
    }

    @Override // io.blueflower.stapel2d.util.json.JsonReader
    public String nextString() throws IOException {
        internalPeek();
        int iAdvance = advance();
        switch (iAdvance) {
            case 6:
                return string();
            case 7:
                return Float.toString(this.in.readFloat());
            case 8:
                return Integer.toString(this.in.readInt());
            case 9:
                return Long.toString(this.in.readLong());
            case 10:
            case 12:
            case 13:
            case 19:
            case 20:
            case 21:
            default:
                if ((iAdvance & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) != 0) {
                    return Integer.toString(decodeTinyInt(iAdvance));
                }
                throw new IllegalStateException("Expected a string but was " + iAdvance);
            case 11:
                return this.in.readByte() > 0 ? "true" : "false";
            case 14:
                return Short.toString(this.in.readShort());
            case 15:
                return Byte.toString(this.in.readByte());
            case 16:
                return Double.toString(this.in.readDouble());
            case 17:
                return "true";
            case 18:
                return "false";
            case 22:
            case 23:
            case 24:
                return readString(iAdvance, 22, 23, 24);
        }
    }

    @Override // io.blueflower.stapel2d.util.json.JsonReader
    public boolean nextBoolean() throws IOException {
        internalPeek();
        int iAdvance = advance();
        if (iAdvance == 11) {
            return this.in.readByte() > 0;
        }
        if (iAdvance == 17) {
            return true;
        }
        if (iAdvance == 18) {
            return false;
        }
        throw new IllegalStateException("Expected a boolean but was " + iAdvance);
    }

    @Override // io.blueflower.stapel2d.util.json.JsonReader
    public void nextNull() throws IOException {
        internalPeek();
        if (this.token != 12) {
            throw new IllegalStateException("Expected null but was " + this.token);
        }
        advance();
    }

    @Override // io.blueflower.stapel2d.util.json.JsonReader
    public float nextFloat() throws IOException {
        internalPeek();
        int iAdvance = advance();
        if (iAdvance == 7) {
            return this.in.readFloat();
        }
        if (iAdvance == 8) {
            return this.in.readInt();
        }
        if (iAdvance == 9) {
            return this.in.readLong();
        }
        switch (iAdvance) {
            case 14:
                return this.in.readShort();
            case 15:
                return this.in.readByte();
            case 16:
                return (float) this.in.readDouble();
            default:
                if ((iAdvance & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) != 0) {
                    return decodeTinyInt(iAdvance);
                }
                throw new IllegalStateException("Expected a float but was " + iAdvance);
        }
    }

    @Override // io.blueflower.stapel2d.util.json.JsonReader
    public double nextDouble() throws IOException {
        internalPeek();
        int iAdvance = advance();
        if (iAdvance == 7) {
            return this.in.readFloat();
        }
        if (iAdvance == 8) {
            return this.in.readInt();
        }
        if (iAdvance == 9) {
            return this.in.readLong();
        }
        switch (iAdvance) {
            case 14:
                return this.in.readShort();
            case 15:
                return this.in.readByte();
            case 16:
                return this.in.readDouble();
            default:
                if ((iAdvance & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) != 0) {
                    return decodeTinyInt(iAdvance);
                }
                throw new IllegalStateException("Expected a double but was " + iAdvance);
        }
    }

    @Override // io.blueflower.stapel2d.util.json.JsonReader
    public short nextShort() throws IOException {
        internalPeek();
        int iAdvance = advance();
        if (iAdvance == 8) {
            return (short) this.in.readInt();
        }
        if (iAdvance == 9) {
            return (short) this.in.readLong();
        }
        if (iAdvance == 14) {
            return this.in.readShort();
        }
        if (iAdvance == 15) {
            return this.in.readByte();
        }
        if ((iAdvance & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) != 0) {
            return (short) decodeTinyInt(iAdvance);
        }
        throw new IllegalStateException("Expected a short but was " + iAdvance);
    }

    @Override // io.blueflower.stapel2d.util.json.JsonReader
    public byte nextByte() throws IOException {
        internalPeek();
        int iAdvance = advance();
        if (iAdvance == 8) {
            return (byte) this.in.readInt();
        }
        if (iAdvance == 9) {
            return (byte) this.in.readLong();
        }
        if (iAdvance == 14) {
            return (byte) this.in.readShort();
        }
        if (iAdvance == 15) {
            return this.in.readByte();
        }
        if ((iAdvance & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) != 0) {
            return (byte) decodeTinyInt(iAdvance);
        }
        throw new IllegalStateException("Expected a byte but was " + iAdvance);
    }

    @Override // io.blueflower.stapel2d.util.json.JsonReader
    public long nextLong() throws IOException {
        internalPeek();
        int iAdvance = advance();
        if (iAdvance == 8) {
            return this.in.readInt();
        }
        if (iAdvance == 9) {
            return this.in.readLong();
        }
        if (iAdvance == 14) {
            return this.in.readShort();
        }
        if (iAdvance == 15) {
            return this.in.readByte();
        }
        if ((iAdvance & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) != 0) {
            return decodeTinyInt(iAdvance);
        }
        throw new IllegalStateException("Expected a long but was " + iAdvance);
    }

    @Override // io.blueflower.stapel2d.util.json.JsonReader
    public int nextInt() throws IOException {
        internalPeek();
        int iAdvance = advance();
        if (iAdvance == 8) {
            return this.in.readInt();
        }
        if (iAdvance == 9) {
            return (int) this.in.readLong();
        }
        if (iAdvance == 14) {
            return this.in.readShort();
        }
        if (iAdvance == 15) {
            return this.in.readByte();
        }
        if ((iAdvance & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) != 0) {
            return decodeTinyInt(iAdvance);
        }
        throw new IllegalStateException("Expected a int but was " + iAdvance);
    }

    @Override // io.blueflower.stapel2d.util.json.JsonReader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.token = 0;
        this.stack.clear();
        this.stack.add(7);
        this.in.close();
    }

    @Override // io.blueflower.stapel2d.util.json.JsonReader
    public void skipValue() throws IOException {
        int i = 0;
        do {
            internalPeek();
            int i2 = this.token;
            switch (i2) {
                case 1:
                case 3:
                    i++;
                    advance();
                    break;
                case 2:
                case 4:
                    i--;
                    advance();
                    break;
                case 5:
                case 19:
                case 20:
                case 21:
                    nextName();
                    break;
                case 6:
                case 22:
                case 23:
                case 24:
                    nextString();
                    break;
                case 7:
                    nextFloat();
                    break;
                case 8:
                    nextInt();
                    break;
                case 9:
                    nextLong();
                    break;
                case 10:
                case 12:
                case 13:
                case 17:
                case 18:
                default:
                    if ((i2 & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) != 0) {
                        nextInt();
                    } else {
                        advance();
                    }
                    break;
                case 11:
                    nextBoolean();
                    break;
                case 14:
                    nextShort();
                    break;
                case 15:
                    nextByte();
                    break;
                case 16:
                    nextDouble();
                    break;
            }
        } while (i != 0);
    }

    public final int peekStack() {
        return this.stack.get(r0.size() - 1);
    }

    public final int pop() {
        return this.stack.removeAt(r0.size() - 1);
    }

    public final void push(int i) {
        this.stack.add(i);
    }

    public final void replaceTop(int i) {
        this.stack.set(r0.size() - 1, i);
    }

    public final int nextInArray(boolean z) throws IOException {
        nextValue();
        if (z) {
            replaceTop(1);
        }
        if (this.token == 2) {
            pop();
        }
        return this.token;
    }

    public final int nextInObject(boolean z) throws IOException {
        nextValue();
        if (z) {
            if (this.token == 4) {
                pop();
                return this.token;
            }
        } else if (this.token == 4) {
            pop();
            return this.token;
        }
        int i = this.token;
        if (i == 5 || i == 19 || i == 20 || i == 21) {
            replaceTop(3);
        }
        return this.token;
    }

    public final int objectValue() throws IOException {
        replaceTop(4);
        return nextValue();
    }

    public final int nextValue() throws IOException {
        byte b = this.in.readByte();
        if (b == 1) {
            push(0);
            this.token = 1;
            return 1;
        }
        if (b == 3) {
            push(2);
            this.token = 3;
            return 3;
        }
        this.token = b;
        return b;
    }

    public final IOException syntaxError(String str) throws IOException {
        throw new MalformedJsonException(str + " at line ??? column ???");
    }

    public final String string() throws IOException {
        int unsignedByte = this.in.readUnsignedByte();
        if (unsignedByte == 0) {
            String utf = this.in.readUTF();
            this.strings.add(utf);
            return utf;
        }
        return this.strings.get(((unsignedByte - 1) * 256) + this.in.readUnsignedByte());
    }

    public final String readString(int i, int i2, int i3, int i4) throws IOException {
        if (i == i2) {
            String utf = this.in.readUTF();
            this.strings.add(utf);
            return utf;
        }
        if (i == i3) {
            return this.strings.get(this.in.readUnsignedByte());
        }
        if (i != i4) {
            return null;
        }
        return this.strings.get((this.in.readUnsignedByte() * 256) + this.in.readUnsignedByte());
    }
}
