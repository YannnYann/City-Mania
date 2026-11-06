package io.bidmachine.media3.extractor.metadata.id3;

import io.bidmachine.media3.common.Metadata;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Id3Frame implements Metadata.Entry {
    public final String id;

    public Id3Frame(String str) {
        this.id = str;
    }

    public String toString() {
        return this.id;
    }
}
