###### Class io.bidmachine.media3.extractor.metadata.scte35.PrivateCommand (io.bidmachine.media3.extractor.metadata.scte35.PrivateCommand)
.class public final Lio/bidmachine/media3/extractor/metadata/scte35/PrivateCommand;
.super Lio/bidmachine/media3/extractor/metadata/scte35/SpliceCommand;
.source "PrivateCommand.java"


# instance fields
.field public final commandBytes:[B

.field public final identifier:J

.field public final ptsAdjustment:J


# direct methods
.method public constructor <init>(J[BJ)V
    .registers 6

    .line 34
    invoke-direct {p0}, Lio/bidmachine/media3/extractor/metadata/scte35/SpliceCommand;-><init>()V

    .line 35
    iput-wide p4, p0, Lio/bidmachine/media3/extractor/metadata/scte35/PrivateCommand;->ptsAdjustment:J

    .line 36
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/metadata/scte35/PrivateCommand;->identifier:J

    .line 37
    iput-object p3, p0, Lio/bidmachine/media3/extractor/metadata/scte35/PrivateCommand;->commandBytes:[B

    return-void
.end method

.method public static parseFromSection(Lio/bidmachine/media3/common/util/ParsableByteArray;IJ)Lio/bidmachine/media3/extractor/metadata/scte35/PrivateCommand;
    .registers 10

    .line 42
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v1

    add-int/lit8 p1, p1, -0x4

    .line 43
    new-array v3, p1, [B

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, v3, v0, p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 45
    new-instance v0, Lio/bidmachine/media3/extractor/metadata/scte35/PrivateCommand;

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/extractor/metadata/scte35/PrivateCommand;-><init>(J[BJ)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SCTE-35 PrivateCommand { ptsAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/bidmachine/media3/extractor/metadata/scte35/PrivateCommand;->ptsAdjustment:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", identifier= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/bidmachine/media3/extractor/metadata/scte35/PrivateCommand;->identifier:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
