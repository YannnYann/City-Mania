package io.bidmachine.media3.extractor.mkv;

import io.bidmachine.media3.extractor.ExtractorInput;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public interface EbmlReader {
    void init(EbmlProcessor ebmlProcessor);

    boolean read(ExtractorInput extractorInput) throws IOException;

    void reset();
}
