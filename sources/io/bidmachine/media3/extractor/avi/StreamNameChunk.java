package io.bidmachine.media3.extractor.avi;

import io.bidmachine.media3.common.util.ParsableByteArray;

/* JADX INFO: loaded from: classes5.dex */
public final class StreamNameChunk implements AviChunk {
    public final String name;

    @Override // io.bidmachine.media3.extractor.avi.AviChunk
    public int getType() {
        return 1852994675;
    }

    public static StreamNameChunk parseFrom(ParsableByteArray parsableByteArray) {
        return new StreamNameChunk(parsableByteArray.readString(parsableByteArray.bytesLeft()));
    }

    public StreamNameChunk(String str) {
        this.name = str;
    }
}
