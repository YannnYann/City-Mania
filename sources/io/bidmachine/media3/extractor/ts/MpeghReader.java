package io.bidmachine.media3.extractor.ts;

import com.google.common.collect.ImmutableList;
import io.bidmachine.media3.common.Format;
import io.bidmachine.media3.common.ParserException;
import io.bidmachine.media3.common.util.Assertions;
import io.bidmachine.media3.common.util.ParsableBitArray;
import io.bidmachine.media3.common.util.ParsableByteArray;
import io.bidmachine.media3.common.util.Util;
import io.bidmachine.media3.extractor.ExtractorOutput;
import io.bidmachine.media3.extractor.TrackOutput;
import io.bidmachine.media3.extractor.ts.MpeghUtil;
import io.bidmachine.media3.extractor.ts.TsPayloadReader;

/* JADX INFO: loaded from: classes5.dex */
public final class MpeghReader implements ElementaryStreamReader {
    public boolean configFound;
    public final String containerMimeType;
    public boolean dataPending;
    public int flags;
    public String formatId;
    public int frameBytes;
    public TrackOutput output;
    public int payloadBytesRead;
    public int syncBytes;
    public int truncationSamples;
    public int state = 0;
    public final ParsableByteArray headerScratchBytes = new ParsableByteArray(new byte[15], 2);
    public final ParsableBitArray headerScratchBits = new ParsableBitArray();
    public final ParsableByteArray dataScratchBytes = new ParsableByteArray();
    public MpeghUtil.MhasPacketHeader header = new MpeghUtil.MhasPacketHeader();
    public int samplingRate = -2147483647;
    public int standardFrameLength = -1;
    public long mainStreamLabel = -1;
    public boolean rapPending = true;
    public boolean headerDataFinished = true;
    public double timeUs = -9.223372036854776E18d;
    public double timeUsPending = -9.223372036854776E18d;

    @Override // io.bidmachine.media3.extractor.ts.ElementaryStreamReader
    public void packetFinished(boolean z) {
    }

    public final boolean shouldParsePacket(int i) {
        return i == 1 || i == 17;
    }

    public MpeghReader(String str) {
        this.containerMimeType = str;
    }

    @Override // io.bidmachine.media3.extractor.ts.ElementaryStreamReader
    public void seek() {
        this.state = 0;
        this.syncBytes = 0;
        this.headerScratchBytes.reset(2);
        this.payloadBytesRead = 0;
        this.frameBytes = 0;
        this.samplingRate = -2147483647;
        this.standardFrameLength = -1;
        this.truncationSamples = 0;
        this.mainStreamLabel = -1L;
        this.configFound = false;
        this.dataPending = false;
        this.headerDataFinished = true;
        this.rapPending = true;
        this.timeUs = -9.223372036854776E18d;
        this.timeUsPending = -9.223372036854776E18d;
    }

    @Override // io.bidmachine.media3.extractor.ts.ElementaryStreamReader
    public void createTracks(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.generateNewId();
        this.formatId = trackIdGenerator.getFormatId();
        this.output = extractorOutput.track(trackIdGenerator.getTrackId(), 1);
    }

    @Override // io.bidmachine.media3.extractor.ts.ElementaryStreamReader
    public void packetStarted(long j, int i) {
        this.flags = i;
        if (!this.rapPending && (this.frameBytes != 0 || !this.headerDataFinished)) {
            this.dataPending = true;
        }
        if (j != -9223372036854775807L) {
            if (this.dataPending) {
                this.timeUsPending = j;
            } else {
                this.timeUs = j;
            }
        }
    }

    @Override // io.bidmachine.media3.extractor.ts.ElementaryStreamReader
    public void consume(ParsableByteArray parsableByteArray) throws ParserException {
        Assertions.checkStateNotNull(this.output);
        while (parsableByteArray.bytesLeft() > 0) {
            int i = this.state;
            if (i != 0) {
                if (i == 1) {
                    copyData(parsableByteArray, this.headerScratchBytes, false);
                    if (this.headerScratchBytes.bytesLeft() == 0) {
                        if (parseHeader()) {
                            this.headerScratchBytes.setPosition(0);
                            TrackOutput trackOutput = this.output;
                            ParsableByteArray parsableByteArray2 = this.headerScratchBytes;
                            trackOutput.sampleData(parsableByteArray2, parsableByteArray2.limit());
                            this.headerScratchBytes.reset(2);
                            this.dataScratchBytes.reset(this.header.packetLength);
                            this.headerDataFinished = true;
                            this.state = 2;
                        } else if (this.headerScratchBytes.limit() < 15) {
                            ParsableByteArray parsableByteArray3 = this.headerScratchBytes;
                            parsableByteArray3.setLimit(parsableByteArray3.limit() + 1);
                            this.headerDataFinished = false;
                        }
                    } else {
                        this.headerDataFinished = false;
                    }
                } else if (i == 2) {
                    if (shouldParsePacket(this.header.packetType)) {
                        copyData(parsableByteArray, this.dataScratchBytes, true);
                    }
                    writeSampleData(parsableByteArray);
                    int i2 = this.payloadBytesRead;
                    MpeghUtil.MhasPacketHeader mhasPacketHeader = this.header;
                    if (i2 == mhasPacketHeader.packetLength) {
                        int i3 = mhasPacketHeader.packetType;
                        if (i3 == 1) {
                            parseConfig(new ParsableBitArray(this.dataScratchBytes.getData()));
                        } else if (i3 == 17) {
                            this.truncationSamples = MpeghUtil.parseAudioTruncationInfo(new ParsableBitArray(this.dataScratchBytes.getData()));
                        } else if (i3 == 2) {
                            finalizeFrame();
                        }
                        this.state = 1;
                    }
                } else {
                    throw new IllegalStateException();
                }
            } else if (skipToNextSync(parsableByteArray)) {
                this.state = 1;
            }
        }
    }

    public final void copyData(ParsableByteArray parsableByteArray, ParsableByteArray parsableByteArray2, boolean z) {
        int position = parsableByteArray.getPosition();
        int iMin = Math.min(parsableByteArray.bytesLeft(), parsableByteArray2.bytesLeft());
        parsableByteArray.readBytes(parsableByteArray2.getData(), parsableByteArray2.getPosition(), iMin);
        parsableByteArray2.skipBytes(iMin);
        if (z) {
            parsableByteArray.setPosition(position);
        }
    }

    private boolean skipToNextSync(ParsableByteArray parsableByteArray) {
        int i = this.flags;
        if ((i & 2) == 0) {
            parsableByteArray.setPosition(parsableByteArray.limit());
            return false;
        }
        if ((i & 4) != 0) {
            return true;
        }
        while (parsableByteArray.bytesLeft() > 0) {
            int i2 = this.syncBytes << 8;
            this.syncBytes = i2;
            int unsignedByte = i2 | parsableByteArray.readUnsignedByte();
            this.syncBytes = unsignedByte;
            if (MpeghUtil.isSyncWord(unsignedByte)) {
                parsableByteArray.setPosition(parsableByteArray.getPosition() - 3);
                this.syncBytes = 0;
                return true;
            }
        }
        return false;
    }

    public final boolean parseHeader() throws ParserException {
        int iLimit = this.headerScratchBytes.limit();
        this.headerScratchBits.reset(this.headerScratchBytes.getData(), iLimit);
        boolean mhasPacketHeader = MpeghUtil.parseMhasPacketHeader(this.headerScratchBits, this.header);
        if (mhasPacketHeader) {
            this.payloadBytesRead = 0;
            this.frameBytes += this.header.packetLength + iLimit;
        }
        return mhasPacketHeader;
    }

    public final void writeSampleData(ParsableByteArray parsableByteArray) {
        int iMin = Math.min(parsableByteArray.bytesLeft(), this.header.packetLength - this.payloadBytesRead);
        this.output.sampleData(parsableByteArray, iMin);
        this.payloadBytesRead += iMin;
    }

    public final void parseConfig(ParsableBitArray parsableBitArray) throws ParserException {
        MpeghUtil.Mpegh3daConfig mpegh3daConfig = MpeghUtil.parseMpegh3daConfig(parsableBitArray);
        this.samplingRate = mpegh3daConfig.samplingFrequency;
        this.standardFrameLength = mpegh3daConfig.standardFrameLength;
        long j = this.mainStreamLabel;
        long j2 = this.header.packetLabel;
        if (j != j2) {
            this.mainStreamLabel = j2;
            String str = "mhm1";
            if (mpegh3daConfig.profileLevelIndication != -1) {
                str = "mhm1" + String.format(".%02X", Integer.valueOf(mpegh3daConfig.profileLevelIndication));
            }
            byte[] bArr = mpegh3daConfig.compatibleProfileLevelSet;
            this.output.format(new Format.Builder().setId(this.formatId).setContainerMimeType(this.containerMimeType).setSampleMimeType("audio/mhm1").setSampleRate(this.samplingRate).setCodecs(str).setInitializationData((bArr == null || bArr.length <= 0) ? null : ImmutableList.of(Util.EMPTY_BYTE_ARRAY, bArr)).build());
        }
        this.configFound = true;
    }

    public final void finalizeFrame() {
        int i;
        if (this.configFound) {
            this.rapPending = false;
            i = 1;
        } else {
            i = 0;
        }
        double d = (((double) (this.standardFrameLength - this.truncationSamples)) * 1000000.0d) / ((double) this.samplingRate);
        long jRound = Math.round(this.timeUs);
        if (this.dataPending) {
            this.dataPending = false;
            this.timeUs = this.timeUsPending;
        } else {
            this.timeUs += d;
        }
        this.output.sampleMetadata(jRound, i, this.frameBytes, 0, null);
        this.configFound = false;
        this.truncationSamples = 0;
        this.frameBytes = 0;
    }
}
