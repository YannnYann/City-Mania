package io.bidmachine.media3.extractor.ogg;

import io.bidmachine.media3.extractor.ExtractorInput;
import io.bidmachine.media3.extractor.SeekMap;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public interface OggSeeker {
    SeekMap createSeekMap();

    long read(ExtractorInput extractorInput) throws IOException;

    void startSeek(long j);
}
