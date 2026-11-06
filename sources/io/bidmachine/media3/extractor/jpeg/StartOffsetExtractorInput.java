package io.bidmachine.media3.extractor.jpeg;

import io.bidmachine.media3.common.util.Assertions;
import io.bidmachine.media3.extractor.ExtractorInput;
import io.bidmachine.media3.extractor.ForwardingExtractorInput;

/* JADX INFO: loaded from: classes5.dex */
public final class StartOffsetExtractorInput extends ForwardingExtractorInput {
    public final long startOffset;

    public StartOffsetExtractorInput(ExtractorInput extractorInput, long j) {
        super(extractorInput);
        Assertions.checkArgument(extractorInput.getPosition() >= j);
        this.startOffset = j;
    }

    @Override // io.bidmachine.media3.extractor.ForwardingExtractorInput, io.bidmachine.media3.extractor.ExtractorInput
    public long getPosition() {
        return super.getPosition() - this.startOffset;
    }

    @Override // io.bidmachine.media3.extractor.ForwardingExtractorInput, io.bidmachine.media3.extractor.ExtractorInput
    public long getPeekPosition() {
        return super.getPeekPosition() - this.startOffset;
    }

    @Override // io.bidmachine.media3.extractor.ForwardingExtractorInput, io.bidmachine.media3.extractor.ExtractorInput
    public long getLength() {
        return super.getLength() - this.startOffset;
    }
}
