package io.blueflower.stapel2d.util.json;

import com.badlogic.gdx.utils.ObjectIntMap;
import io.blueflower.stapel2d.util.IntList;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public final class BinaryJsonWriter implements JsonWriter {
    public static boolean USE_TINY_INT_ENCODING = false;
    public final DataOutputStream out;
    public final IntList stack;
    public final ObjectIntMap<String> stringToIndex = new ObjectIntMap<>();
    public int stringCount = 0;
    public final IntList stringOccurrences = new IntList();

    public BinaryJsonWriter(DataOutputStream dataOutputStream) {
        IntList intList = new IntList();
        this.stack = intList;
        intList.add(5);
        if (dataOutputStream == null) {
            throw new NullPointerException("out == null");
        }
        this.out = dataOutputStream;
    }

    public void reset() {
        this.stringToIndex.clear();
        this.stringCount = 0;
        this.stringOccurrences.clear();
        this.stack.clear();
        this.stack.add(5);
    }

    public final String getPrintableStack() {
        StringBuilder sb = new StringBuilder("Stack is [");
        int i = 0;
        while (i < this.stack.size()) {
            sb.append(" ");
            sb.append(this.stack.get(i));
            sb.append(i < this.stack.size() + (-1) ? ", " : "");
            i++;
        }
        sb.append(" ]");
        return sb.toString();
    }

    @Override // io.blueflower.stapel2d.util.json.JsonWriter
    public BinaryJsonWriter beginArray() throws IOException {
        return open(0, 1);
    }

    @Override // io.blueflower.stapel2d.util.json.JsonWriter
    public BinaryJsonWriter endArray() throws IOException {
        return close(0, 1, 2);
    }

    @Override // io.blueflower.stapel2d.util.json.JsonWriter
    public BinaryJsonWriter beginObject() throws IOException {
        return open(2, 3);
    }

    @Override // io.blueflower.stapel2d.util.json.JsonWriter
    public BinaryJsonWriter endObject() throws IOException {
        return close(2, 4, 4);
    }

    public final BinaryJsonWriter open(int i, int i2) throws IOException {
        beforeValue(true);
        this.stack.add(i);
        this.out.writeByte((byte) i2);
        return this;
    }

    public final BinaryJsonWriter close(int i, int i2, int i3) throws IOException {
        int iPeek = peek();
        if (iPeek != i2 && iPeek != i) {
            throw new IllegalStateException("Nesting problem: " + getPrintableStack());
        }
        this.stack.removeAt(r2.size() - 1);
        this.out.writeByte((byte) i3);
        return this;
    }

    public final int peek() {
        return this.stack.get(r0.size() - 1);
    }

    public final void replaceTop(int i) {
        this.stack.set(r0.size() - 1, i);
    }

    @Override // io.blueflower.stapel2d.util.json.JsonWriter
    public BinaryJsonWriter name(String str) throws IOException {
        if (str == null) {
            throw new NullPointerException("name == null");
        }
        beforeName();
        writeString(str, 19, 20, 21);
        return this;
    }

    @Override // io.blueflower.stapel2d.util.json.JsonWriter
    public BinaryJsonWriter value(String str) throws IOException {
        if (str == null) {
            return nullValue();
        }
        beforeValue(false);
        writeString(str, 22, 23, 24);
        return this;
    }

    @Override // io.blueflower.stapel2d.util.json.JsonWriter
    public BinaryJsonWriter nullValue() throws IOException {
        beforeValue(false);
        this.out.writeByte(12);
        return this;
    }

    @Override // io.blueflower.stapel2d.util.json.JsonWriter
    public BinaryJsonWriter value(boolean z) throws IOException {
        beforeValue(false);
        this.out.writeByte(z ? 17 : 18);
        return this;
    }

    @Override // io.blueflower.stapel2d.util.json.JsonWriter
    public BinaryJsonWriter value(float f) throws IOException {
        if (Float.isNaN(f) || Float.isInfinite(f)) {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + f);
        }
        int i = (int) f;
        if (i == f) {
            return value(i);
        }
        beforeValue(false);
        this.out.writeByte(7);
        this.out.writeFloat(f);
        return this;
    }

    @Override // io.blueflower.stapel2d.util.json.JsonWriter
    public BinaryJsonWriter value(long j) throws IOException {
        if (j >= -2147483648L && j <= 2147483647L) {
            value((int) j);
            return this;
        }
        beforeValue(false);
        this.out.writeByte(9);
        this.out.writeLong(j);
        return this;
    }

    @Override // io.blueflower.stapel2d.util.json.JsonWriter
    public BinaryJsonWriter value(int i) throws IOException {
        if (i >= -128 && i <= 127) {
            value((byte) i);
            return this;
        }
        if (i >= -32768 && i <= 32767) {
            value((short) i);
            return this;
        }
        beforeValue(false);
        this.out.writeByte(8);
        this.out.writeInt(i);
        return this;
    }

    @Override // io.blueflower.stapel2d.util.json.JsonWriter
    public JsonWriter value(double d) throws IOException {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + d);
        }
        int i = (int) d;
        if (i == d) {
            return value(i);
        }
        beforeValue(false);
        this.out.writeByte(16);
        this.out.writeDouble(d);
        return this;
    }

    public JsonWriter value(short s) throws IOException {
        if (s >= -128 && s <= 127) {
            value((byte) s);
            return this;
        }
        beforeValue(false);
        this.out.writeByte(14);
        this.out.writeShort(s);
        return this;
    }

    @Override // io.blueflower.stapel2d.util.json.JsonWriter
    public JsonWriter value(byte b) throws IOException {
        beforeValue(false);
        if (USE_TINY_INT_ENCODING && -64 <= b && b <= 63) {
            this.out.writeByte(b | 128);
            return this;
        }
        this.out.writeByte(15);
        this.out.writeByte(b);
        return this;
    }

    @Override // io.blueflower.stapel2d.util.json.JsonWriter
    public void flush() throws IOException {
        this.out.flush();
    }

    @Override // io.blueflower.stapel2d.util.json.JsonWriter, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.out.close();
        if (peek() != 6) {
            throw new IOException("Incomplete document");
        }
    }

    public final void beforeName() {
        int iPeek = peek();
        if (iPeek != 4 && iPeek != 2) {
            throw new IllegalStateException("Nesting problem: " + getPrintableStack());
        }
        replaceTop(3);
    }

    public final void beforeValue(boolean z) {
        int iPeek = peek();
        if (iPeek == 0) {
            replaceTop(1);
            return;
        }
        if (iPeek != 1) {
            if (iPeek == 3) {
                replaceTop(4);
                return;
            }
            if (iPeek == 5) {
                if (!z) {
                    throw new IllegalStateException("JSON must start with an array or an object.");
                }
                replaceTop(6);
            } else {
                if (iPeek == 6) {
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
                throw new IllegalStateException("Nesting problem: " + this.stack);
            }
        }
    }

    public final void writeString(String str, int i, int i2, int i3) throws IOException {
        int iFindOrCreateStringReference = findOrCreateStringReference(str);
        if (iFindOrCreateStringReference < 0 || iFindOrCreateStringReference > 65535) {
            this.out.writeByte(i);
            this.out.writeUTF(str);
        } else if (iFindOrCreateStringReference <= 255) {
            this.out.writeByte(i2);
            this.out.writeByte(iFindOrCreateStringReference);
        } else {
            this.out.writeByte(i3);
            this.out.writeByte(iFindOrCreateStringReference / 256);
            this.out.writeByte(iFindOrCreateStringReference % 256);
        }
    }

    public final int findOrCreateStringReference(String str) {
        int i = this.stringToIndex.get(str, -1);
        if (i >= 0) {
            IntList intList = this.stringOccurrences;
            intList.set(i, intList.get(i) + 1);
            return i;
        }
        ObjectIntMap<String> objectIntMap = this.stringToIndex;
        int i2 = this.stringCount;
        this.stringCount = i2 + 1;
        objectIntMap.put(str, i2);
        this.stringOccurrences.add(1);
        return -1;
    }
}
