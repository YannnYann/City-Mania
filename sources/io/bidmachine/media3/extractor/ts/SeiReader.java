package io.bidmachine.media3.extractor.ts;

import io.bidmachine.media3.common.Format;
import io.bidmachine.media3.common.util.Assertions;
import io.bidmachine.media3.common.util.ParsableByteArray;
import io.bidmachine.media3.container.ReorderingSeiMessageQueue;
import io.bidmachine.media3.extractor.CeaUtil;
import io.bidmachine.media3.extractor.ExtractorOutput;
import io.bidmachine.media3.extractor.TrackOutput;
import io.bidmachine.media3.extractor.ts.TsPayloadReader;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class SeiReader {
    public final List<Format> closedCaptionFormats;
    public final String containerMimeType;
    public final TrackOutput[] outputs;
    public final ReorderingSeiMessageQueue reorderingSeiMessageQueue = new ReorderingSeiMessageQueue(new ReorderingSeiMessageQueue.SeiConsumer() { // from class: io.bidmachine.media3.extractor.ts.SeiReader$$ExternalSyntheticLambda0
        @Override // io.bidmachine.media3.container.ReorderingSeiMessageQueue.SeiConsumer
        public final void consume(long j, ParsableByteArray parsableByteArray) {
            CeaUtil.consume(j, parsableByteArray, this.f$0.outputs);
        }
    });

    public SeiReader(List<Format> list, String str) {
        this.closedCaptionFormats = list;
        this.containerMimeType = str;
        this.outputs = new TrackOutput[list.size()];
    }

    public void createTracks(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        for (int i = 0; i < this.outputs.length; i++) {
            trackIdGenerator.generateNewId();
            TrackOutput trackOutputTrack = extractorOutput.track(trackIdGenerator.getTrackId(), 3);
            Format format = this.closedCaptionFormats.get(i);
            String str = format.sampleMimeType;
            Assertions.checkArgument("application/cea-608".equals(str) || "application/cea-708".equals(str), "Invalid closed caption MIME type provided: " + str);
            String formatId = format.id;
            if (formatId == null) {
                formatId = trackIdGenerator.getFormatId();
            }
            trackOutputTrack.format(new Format.Builder().setId(formatId).setContainerMimeType(this.containerMimeType).setSampleMimeType(str).setSelectionFlags(format.selectionFlags).setLanguage(format.language).setAccessibilityChannel(format.accessibilityChannel).setInitializationData(format.initializationData).build());
            this.outputs[i] = trackOutputTrack;
        }
    }

    public void setReorderingQueueSize(int i) {
        this.reorderingSeiMessageQueue.setMaxSize(i);
    }

    public void consume(long j, ParsableByteArray parsableByteArray) {
        this.reorderingSeiMessageQueue.add(j, parsableByteArray);
    }

    public void flush() {
        this.reorderingSeiMessageQueue.flush();
    }

    public void clear() {
        this.reorderingSeiMessageQueue.flush();
    }
}
