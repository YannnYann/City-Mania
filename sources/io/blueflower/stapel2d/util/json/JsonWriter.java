package io.blueflower.stapel2d.util.json;

import java.io.Closeable;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public interface JsonWriter extends Closeable {
    JsonWriter beginArray() throws IOException;

    JsonWriter beginObject() throws IOException;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;

    JsonWriter endArray() throws IOException;

    JsonWriter endObject() throws IOException;

    void flush() throws IOException;

    JsonWriter name(String str) throws IOException;

    JsonWriter nullValue() throws IOException;

    JsonWriter value(byte b) throws IOException;

    JsonWriter value(double d) throws IOException;

    JsonWriter value(float f) throws IOException;

    JsonWriter value(int i) throws IOException;

    JsonWriter value(long j) throws IOException;

    JsonWriter value(String str) throws IOException;

    JsonWriter value(boolean z) throws IOException;
}
