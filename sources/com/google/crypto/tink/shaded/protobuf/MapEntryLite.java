package com.google.crypto.tink.shaded.protobuf;

import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public class MapEntryLite<K, V> {

    public static class Metadata<K, V> {
    }

    public Metadata<K, V> getMetadata() {
        return null;
    }

    public static <K, V> void writeTo(CodedOutputStream output, Metadata<K, V> metadata, K key, V value) throws IOException {
        throw null;
    }

    public static <K, V> int computeSerializedSize(Metadata<K, V> metadata, K key, V value) {
        throw null;
    }

    public int computeMessageSize(int fieldNumber, K key, V value) {
        return CodedOutputStream.computeTagSize(fieldNumber) + CodedOutputStream.computeLengthDelimitedFieldSize(computeSerializedSize(null, key, value));
    }
}
