package io.bidmachine.media3.extractor.flv;

import io.bidmachine.media3.common.ParserException;
import io.bidmachine.media3.common.util.ParsableByteArray;
import io.bidmachine.media3.extractor.TrackOutput;

/* JADX INFO: loaded from: classes5.dex */
public abstract class TagPayloadReader {
    public final TrackOutput output;

    public abstract boolean parseHeader(ParsableByteArray parsableByteArray) throws ParserException;

    public abstract boolean parsePayload(ParsableByteArray parsableByteArray, long j) throws ParserException;

    public static final class UnsupportedFormatException extends ParserException {
        public UnsupportedFormatException(String str) {
            super(str, null, false, 1);
        }
    }

    public TagPayloadReader(TrackOutput trackOutput) {
        this.output = trackOutput;
    }

    public final boolean consume(ParsableByteArray parsableByteArray, long j) throws ParserException {
        return parseHeader(parsableByteArray) && parsePayload(parsableByteArray, j);
    }
}
