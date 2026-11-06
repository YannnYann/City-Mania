package io.bidmachine.media3.extractor;

import com.google.common.collect.ImmutableList;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface Extractor {
    default Extractor getUnderlyingImplementation() {
        return this;
    }

    void init(ExtractorOutput extractorOutput);

    int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException;

    void release();

    void seek(long j, long j2);

    boolean sniff(ExtractorInput extractorInput) throws IOException;

    default List<SniffFailure> getSniffFailureDetails() {
        return ImmutableList.of();
    }
}
