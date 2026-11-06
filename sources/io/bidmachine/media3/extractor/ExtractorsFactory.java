package io.bidmachine.media3.extractor;

import android.net.Uri;
import io.bidmachine.media3.extractor.text.SubtitleParser;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public interface ExtractorsFactory {
    public static final ExtractorsFactory EMPTY = new ExtractorsFactory() { // from class: io.bidmachine.media3.extractor.ExtractorsFactory$$ExternalSyntheticLambda0
        @Override // io.bidmachine.media3.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            return ExtractorsFactory.$r8$lambda$JlCPNd9LhEas5W1JOXdqZOwffXc();
        }
    };

    Extractor[] createExtractors();

    default ExtractorsFactory experimentalSetCodecsToParseWithinGopSampleDependencies(int i) {
        return this;
    }

    @Deprecated
    default ExtractorsFactory experimentalSetTextTrackTranscodingEnabled(boolean z) {
        return this;
    }

    default ExtractorsFactory setSubtitleParserFactory(SubtitleParser.Factory factory) {
        return this;
    }

    static /* synthetic */ Extractor[] $r8$lambda$JlCPNd9LhEas5W1JOXdqZOwffXc() {
        return new Extractor[0];
    }

    default Extractor[] createExtractors(Uri uri, Map<String, List<String>> map) {
        return createExtractors();
    }
}
