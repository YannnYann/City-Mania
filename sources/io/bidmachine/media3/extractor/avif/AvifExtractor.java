package io.bidmachine.media3.extractor.avif;

import io.bidmachine.media3.common.util.ParsableByteArray;
import io.bidmachine.media3.extractor.Extractor;
import io.bidmachine.media3.extractor.ExtractorInput;
import io.bidmachine.media3.extractor.ExtractorOutput;
import io.bidmachine.media3.extractor.PositionHolder;
import io.bidmachine.media3.extractor.SingleSampleExtractor;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public final class AvifExtractor implements Extractor {
    public final ParsableByteArray scratch = new ParsableByteArray(4);
    public final SingleSampleExtractor imageExtractor = new SingleSampleExtractor(-1, -1, "image/avif");

    @Override // io.bidmachine.media3.extractor.Extractor
    public void release() {
    }

    @Override // io.bidmachine.media3.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) throws IOException {
        extractorInput.advancePeekPosition(4);
        return readAndCompareFourBytes(extractorInput, 1718909296) && readAndCompareFourBytes(extractorInput, 1635150182);
    }

    @Override // io.bidmachine.media3.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.imageExtractor.init(extractorOutput);
    }

    @Override // io.bidmachine.media3.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        return this.imageExtractor.read(extractorInput, positionHolder);
    }

    @Override // io.bidmachine.media3.extractor.Extractor
    public void seek(long j, long j2) {
        this.imageExtractor.seek(j, j2);
    }

    public final boolean readAndCompareFourBytes(ExtractorInput extractorInput, int i) throws IOException {
        this.scratch.reset(4);
        extractorInput.peekFully(this.scratch.getData(), 0, 4);
        return this.scratch.readUnsignedInt() == ((long) i);
    }
}
