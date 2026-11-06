package io.blueflower.stapel2d.util.json;

import java.io.Closeable;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public interface JsonReader extends Closeable {
    void beginArray() throws IOException;

    void beginObject() throws IOException;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;

    void endArray() throws IOException;

    void endObject() throws IOException;

    boolean hasNext() throws IOException;

    boolean nextBoolean() throws IOException;

    byte nextByte() throws IOException;

    double nextDouble() throws IOException;

    float nextFloat() throws IOException;

    int nextInt() throws IOException;

    long nextLong() throws IOException;

    String nextName() throws IOException;

    void nextNull() throws IOException;

    short nextShort() throws IOException;

    String nextString() throws IOException;

    int peek() throws IOException;

    void skipValue() throws IOException;
}
