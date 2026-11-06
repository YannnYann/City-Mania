###### Class io.bidmachine.media3.extractor.metadata.mp4.SmtaMetadataEntry (io.bidmachine.media3.extractor.metadata.mp4.SmtaMetadataEntry)
.class public final Lio/bidmachine/media3/extractor/metadata/mp4/SmtaMetadataEntry;
.super Ljava/lang/Object;
.source "SmtaMetadataEntry.java"

# interfaces
.implements Lio/bidmachine/media3/common/Metadata$Entry;


# instance fields
.field public final captureFrameRate:F

.field public final svcTemporalLayerCount:I


# direct methods
.method public constructor <init>(FI)V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lio/bidmachine/media3/extractor/metadata/mp4/SmtaMetadataEntry;->captureFrameRate:F

    .line 45
    iput p2, p0, Lio/bidmachine/media3/extractor/metadata/mp4/SmtaMetadataEntry;->svcTemporalLayerCount:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_21

    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/extractor/metadata/mp4/SmtaMetadataEntry;

    if-eq v3, v2, :cond_10

    goto :goto_21

    .line 56
    :cond_10
    check-cast p1, Lio/bidmachine/media3/extractor/metadata/mp4/SmtaMetadataEntry;

    .line 57
    iget v2, p0, Lio/bidmachine/media3/extractor/metadata/mp4/SmtaMetadataEntry;->captureFrameRate:F

    iget v3, p1, Lio/bidmachine/media3/extractor/metadata/mp4/SmtaMetadataEntry;->captureFrameRate:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_21

    iget v2, p0, Lio/bidmachine/media3/extractor/metadata/mp4/SmtaMetadataEntry;->svcTemporalLayerCount:I

    iget p1, p1, Lio/bidmachine/media3/extractor/metadata/mp4/SmtaMetadataEntry;->svcTemporalLayerCount:I

    if-ne v2, p1, :cond_21

    return v0

    :cond_21
    :goto_21
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 64
    iget v0, p0, Lio/bidmachine/media3/extractor/metadata/mp4/SmtaMetadataEntry;->captureFrameRate:F

    invoke-static {v0}, Lcom/google/common/primitives/Floats;->hashCode(F)I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 65
    iget v0, p0, Lio/bidmachine/media3/extractor/metadata/mp4/SmtaMetadataEntry;->svcTemporalLayerCount:I

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smta: captureFrameRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/media3/extractor/metadata/mp4/SmtaMetadataEntry;->captureFrameRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", svcTemporalLayerCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/media3/extractor/metadata/mp4/SmtaMetadataEntry;->svcTemporalLayerCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
