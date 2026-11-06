package androidx.datastore.preferences.protobuf;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public abstract class ByteOutput {
    public abstract void writeLazy(byte[] value, int offset, int length) throws IOException;
}
