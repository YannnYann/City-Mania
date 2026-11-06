package io.bidmachine.media3.extractor.text;

import com.google.common.primitives.Ints;
import io.bidmachine.media3.common.Format;
import io.bidmachine.media3.common.ParserException;
import io.bidmachine.media3.common.util.Assertions;
import io.bidmachine.media3.common.util.Consumer;
import io.bidmachine.media3.common.util.ParsableByteArray;
import io.bidmachine.media3.common.util.Util;
import io.bidmachine.media3.extractor.Extractor;
import io.bidmachine.media3.extractor.ExtractorInput;
import io.bidmachine.media3.extractor.ExtractorOutput;
import io.bidmachine.media3.extractor.IndexSeekMap;
import io.bidmachine.media3.extractor.PositionHolder;
import io.bidmachine.media3.extractor.TrackOutput;
import io.bidmachine.media3.extractor.text.SubtitleParser;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class SubtitleExtractor implements Extractor {
    public int bytesRead;
    public final Format format;
    public final List<Sample> samples;
    public long seekTimeUs;
    public int state;
    public final SubtitleParser subtitleParser;
    public long[] timestamps;
    public TrackOutput trackOutput;
    public final CueEncoder cueEncoder = new CueEncoder();
    public byte[] subtitleData = Util.EMPTY_BYTE_ARRAY;
    public final ParsableByteArray scratchSampleArray = new ParsableByteArray();

    @Override // io.bidmachine.media3.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) throws IOException {
        return true;
    }

    public SubtitleExtractor(SubtitleParser subtitleParser, Format format) {
        this.subtitleParser = subtitleParser;
        this.format = format != null ? format.buildUpon().setSampleMimeType("application/x-media3-cues").setCodecs(format.sampleMimeType).setCueReplacementBehavior(subtitleParser.getCueReplacementBehavior()).build() : null;
        this.samples = new ArrayList();
        this.state = 0;
        this.timestamps = Util.EMPTY_LONG_ARRAY;
        this.seekTimeUs = -9223372036854775807L;
    }

    @Override // io.bidmachine.media3.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        Assertions.checkState(this.state == 0);
        TrackOutput trackOutputTrack = extractorOutput.track(0, 3);
        this.trackOutput = trackOutputTrack;
        Format format = this.format;
        if (format != null) {
            trackOutputTrack.format(format);
            extractorOutput.endTracks();
            extractorOutput.seekMap(new IndexSeekMap(new long[]{0}, new long[]{0}, -9223372036854775807L));
        }
        this.state = 1;
    }

    @Override // io.bidmachine.media3.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        int i = this.state;
        Assertions.checkState((i == 0 || i == 5) ? false : true);
        if (this.state == 1) {
            int iCheckedCast = extractorInput.getLength() != -1 ? Ints.checkedCast(extractorInput.getLength()) : 1024;
            if (iCheckedCast > this.subtitleData.length) {
                this.subtitleData = new byte[iCheckedCast];
            }
            this.bytesRead = 0;
            this.state = 2;
        }
        if (this.state == 2 && readFromInput(extractorInput)) {
            parseAndWriteToOutput();
            this.state = 4;
        }
        if (this.state == 3 && skipInput(extractorInput)) {
            writeToOutput();
            this.state = 4;
        }
        return this.state == 4 ? -1 : 0;
    }

    @Override // io.bidmachine.media3.extractor.Extractor
    public void seek(long j, long j2) {
        int i = this.state;
        Assertions.checkState((i == 0 || i == 5) ? false : true);
        this.seekTimeUs = j2;
        if (this.state == 2) {
            this.state = 1;
        }
        if (this.state == 4) {
            this.state = 3;
        }
    }

    @Override // io.bidmachine.media3.extractor.Extractor
    public void release() {
        if (this.state == 5) {
            return;
        }
        this.subtitleParser.reset();
        this.state = 5;
    }

    public final boolean skipInput(ExtractorInput extractorInput) throws IOException {
        return extractorInput.skip((extractorInput.getLength() > (-1L) ? 1 : (extractorInput.getLength() == (-1L) ? 0 : -1)) != 0 ? Ints.checkedCast(extractorInput.getLength()) : 1024) == -1;
    }

    public final boolean readFromInput(ExtractorInput extractorInput) throws IOException {
        byte[] bArr = this.subtitleData;
        if (bArr.length == this.bytesRead) {
            this.subtitleData = Arrays.copyOf(bArr, bArr.length + 1024);
        }
        byte[] bArr2 = this.subtitleData;
        int i = this.bytesRead;
        int i2 = extractorInput.read(bArr2, i, bArr2.length - i);
        if (i2 != -1) {
            this.bytesRead += i2;
        }
        long length = extractorInput.getLength();
        return (length != -1 && ((long) this.bytesRead) == length) || i2 == -1;
    }

    public final void parseAndWriteToOutput() throws IOException {
        SubtitleParser.OutputOptions outputOptionsAllCues;
        try {
            long j = this.seekTimeUs;
            if (j != -9223372036854775807L) {
                outputOptionsAllCues = SubtitleParser.OutputOptions.cuesAfterThenRemainingCuesBefore(j);
            } else {
                outputOptionsAllCues = SubtitleParser.OutputOptions.allCues();
            }
            this.subtitleParser.parse(this.subtitleData, 0, this.bytesRead, outputOptionsAllCues, new Consumer() { // from class: io.bidmachine.media3.extractor.text.SubtitleExtractor$$ExternalSyntheticLambda0
                @Override // io.bidmachine.media3.common.util.Consumer
                public final void accept(Object obj) {
                    SubtitleExtractor.$r8$lambda$o1pep9CDg3xmmLfDKYshYz1fEWQ(this.f$0, (CuesWithTiming) obj);
                }
            });
            Collections.sort(this.samples);
            this.timestamps = new long[this.samples.size()];
            for (int i = 0; i < this.samples.size(); i++) {
                this.timestamps[i] = this.samples.get(i).timeUs;
            }
            this.subtitleData = Util.EMPTY_BYTE_ARRAY;
        } catch (RuntimeException e) {
            throw ParserException.createForMalformedContainer("SubtitleParser failed.", e);
        }
    }

    public static /* synthetic */ void $r8$lambda$o1pep9CDg3xmmLfDKYshYz1fEWQ(SubtitleExtractor subtitleExtractor, CuesWithTiming cuesWithTiming) {
        subtitleExtractor.getClass();
        Sample sample = new Sample(cuesWithTiming.startTimeUs, subtitleExtractor.cueEncoder.encode(cuesWithTiming.cues, cuesWithTiming.durationUs));
        subtitleExtractor.samples.add(sample);
        long j = subtitleExtractor.seekTimeUs;
        if (j == -9223372036854775807L || cuesWithTiming.startTimeUs >= j) {
            subtitleExtractor.writeToOutput(sample);
        }
    }

    public final void writeToOutput() {
        long j = this.seekTimeUs;
        for (int iBinarySearchFloor = j == -9223372036854775807L ? 0 : Util.binarySearchFloor(this.timestamps, j, true, true); iBinarySearchFloor < this.samples.size(); iBinarySearchFloor++) {
            writeToOutput(this.samples.get(iBinarySearchFloor));
        }
    }

    public final void writeToOutput(Sample sample) {
        Assertions.checkStateNotNull(this.trackOutput);
        int length = sample.data.length;
        this.scratchSampleArray.reset(sample.data);
        this.trackOutput.sampleData(this.scratchSampleArray, length);
        this.trackOutput.sampleMetadata(sample.timeUs, 1, length, 0, null);
    }

    public static class Sample implements Comparable<Sample> {
        public final byte[] data;
        public final long timeUs;

        public Sample(long j, byte[] bArr) {
            this.timeUs = j;
            this.data = bArr;
        }

        @Override // java.lang.Comparable
        public int compareTo(Sample sample) {
            return Long.compare(this.timeUs, sample.timeUs);
        }
    }
}
