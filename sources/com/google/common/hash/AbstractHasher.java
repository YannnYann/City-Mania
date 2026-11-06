package com.google.common.hash;

/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractHasher implements Hasher {
    public abstract Hasher putBytes(byte[] bytes, int off, int len);

    @Override // com.google.common.hash.Hasher
    public Hasher putBytes(byte[] bytes) {
        return putBytes(bytes, 0, bytes.length);
    }
}
