package io.blueflower.stapel2d.util.json;

import com.ironsource.C3522b4;
import io.blueflower.stapel2d.util.IntList;
import java.io.IOException;
import java.io.Writer;

/* JADX INFO: loaded from: classes5.dex */
public final class DefaultJsonWriter implements JsonWriter {
    public String indent;
    public boolean lenient;
    public final Writer out;
    public String separator;
    public final IntList stack;

    public DefaultJsonWriter(Writer writer) {
        IntList intList = new IntList();
        this.stack = intList;
        intList.add(5);
        this.separator = ":";
        if (writer == null) {
            throw new NullPointerException("out == null");
        }
        this.out = writer;
    }

    @Override // io.blueflower.stapel2d.util.json.JsonWriter
    public DefaultJsonWriter beginArray() throws IOException {
        return open(0, C3522b4.j.d);
    }

    @Override // io.blueflower.stapel2d.util.json.JsonWriter
    public DefaultJsonWriter endArray() throws IOException {
        return close(0, 1, C3522b4.j.e);
    }

    @Override // io.blueflower.stapel2d.util.json.JsonWriter
    public DefaultJsonWriter beginObject() throws IOException {
        return open(2, "{");
    }

    @Override // io.blueflower.stapel2d.util.json.JsonWriter
    public DefaultJsonWriter endObject() throws IOException {
        return close(2, 4, "}");
    }

    public final DefaultJsonWriter open(int i, String str) throws IOException {
        beforeValue(true);
        this.stack.add(i);
        this.out.write(str);
        return this;
    }

    public final DefaultJsonWriter close(int i, int i2, String str) throws IOException {
        int iPeek = peek();
        if (iPeek != i2 && iPeek != i) {
            throw new IllegalStateException("Nesting problem: " + this.stack);
        }
        this.stack.removeAt(r3.size() - 1);
        if (iPeek == i2) {
            newline();
        }
        this.out.write(str);
        return this;
    }

    private int peek() {
        return this.stack.get(r0.size() - 1);
    }

    private void replaceTop(int i) {
        this.stack.set(r0.size() - 1, i);
    }

    @Override // io.blueflower.stapel2d.util.json.JsonWriter
    public DefaultJsonWriter name(String str) throws IOException {
        if (str == null) {
            throw new NullPointerException("name == null");
        }
        beforeName();
        string(str);
        return this;
    }

    @Override // io.blueflower.stapel2d.util.json.JsonWriter
    public DefaultJsonWriter value(String str) throws IOException {
        if (str == null) {
            return nullValue();
        }
        beforeValue(false);
        string(str);
        return this;
    }

    @Override // io.blueflower.stapel2d.util.json.JsonWriter
    public DefaultJsonWriter nullValue() throws IOException {
        beforeValue(false);
        this.out.write("null");
        return this;
    }

    @Override // io.blueflower.stapel2d.util.json.JsonWriter
    public DefaultJsonWriter value(boolean z) throws IOException {
        beforeValue(false);
        this.out.write(z ? "true" : "false");
        return this;
    }

    @Override // io.blueflower.stapel2d.util.json.JsonWriter
    public DefaultJsonWriter value(float f) throws IOException {
        if (!this.lenient && (Float.isNaN(f) || Float.isInfinite(f))) {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + f);
        }
        beforeValue(false);
        this.out.append((CharSequence) Float.toString(f));
        return this;
    }

    @Override // io.blueflower.stapel2d.util.json.JsonWriter
    public DefaultJsonWriter value(long j) throws IOException {
        beforeValue(false);
        this.out.write(Long.toString(j));
        return this;
    }

    @Override // io.blueflower.stapel2d.util.json.JsonWriter
    public DefaultJsonWriter value(int i) throws IOException {
        beforeValue(false);
        this.out.write(Integer.toString(i));
        return this;
    }

    @Override // io.blueflower.stapel2d.util.json.JsonWriter
    public JsonWriter value(double d) throws IOException {
        if (!this.lenient && (Double.isNaN(d) || Double.isInfinite(d))) {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + d);
        }
        beforeValue(false);
        this.out.append((CharSequence) Double.toString(d));
        return this;
    }

    @Override // io.blueflower.stapel2d.util.json.JsonWriter
    public JsonWriter value(byte b) throws IOException {
        beforeValue(false);
        this.out.write(Byte.toString(b));
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

    public final void string(String str) throws IOException {
        this.out.write("\"");
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '\f') {
                this.out.write("\\f");
            } else if (cCharAt == '\r') {
                this.out.write("\\r");
            } else if (cCharAt != '\"' && cCharAt != '\\') {
                if (cCharAt == 8232 || cCharAt == 8233) {
                    this.out.write(String.format("\\u%04x", Integer.valueOf(cCharAt)));
                } else {
                    switch (cCharAt) {
                        case '\b':
                            this.out.write("\\b");
                            break;
                        case '\t':
                            this.out.write("\\t");
                            break;
                        case '\n':
                            this.out.write("\\n");
                            break;
                        default:
                            if (cCharAt <= 31) {
                                this.out.write(String.format("\\u%04x", Integer.valueOf(cCharAt)));
                            } else {
                                this.out.write(cCharAt);
                            }
                            break;
                    }
                }
            } else {
                this.out.write(92);
                this.out.write(cCharAt);
            }
        }
        this.out.write("\"");
    }

    public final void newline() throws IOException {
        if (this.indent == null) {
            return;
        }
        this.out.write("\n");
        for (int i = 1; i < this.stack.size(); i++) {
            this.out.write(this.indent);
        }
    }

    private void beforeName() throws IOException {
        int iPeek = peek();
        if (iPeek == 4) {
            this.out.write(44);
        } else if (iPeek != 2) {
            throw new IllegalStateException("Nesting problem: " + this.stack);
        }
        newline();
        replaceTop(3);
    }

    private void beforeValue(boolean z) throws IOException {
        int iPeek = peek();
        if (iPeek == 0) {
            replaceTop(1);
            newline();
            return;
        }
        if (iPeek == 1) {
            this.out.append(',');
            newline();
            return;
        }
        if (iPeek == 3) {
            this.out.append((CharSequence) this.separator);
            replaceTop(4);
            return;
        }
        if (iPeek == 5) {
            if (!this.lenient && !z) {
                throw new IllegalStateException("JSON must start with an array or an object.");
            }
            replaceTop(6);
            return;
        }
        if (iPeek == 6) {
            throw new IllegalStateException("JSON must have only one top-level value.");
        }
        throw new IllegalStateException("Nesting problem: " + this.stack);
    }
}
