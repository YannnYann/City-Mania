###### Class io.bidmachine.media3.extractor.ts.TsPayloadReader (io.bidmachine.media3.extractor.ts.TsPayloadReader)
.class public interface abstract Lio/bidmachine/media3/extractor/ts/TsPayloadReader;
.super Ljava/lang/Object;
.source "TsPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;,
        Lio/bidmachine/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;,
        Lio/bidmachine/media3/extractor/ts/TsPayloadReader$EsInfo;,
        Lio/bidmachine/media3/extractor/ts/TsPayloadReader$Factory;
    }
.end annotation


# virtual methods
.method public abstract consume(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation
.end method

.method public abstract init(Lio/bidmachine/media3/common/util/TimestampAdjuster;Lio/bidmachine/media3/extractor/ExtractorOutput;Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
.end method

.method public abstract seek()V
.end method

###### Class io.bidmachine.media3.extractor.ts.TsPayloadReader.DvbSubtitleInfo (io.bidmachine.media3.extractor.ts.TsPayloadReader$DvbSubtitleInfo)
.class public final Lio/bidmachine/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;
.super Ljava/lang/Object;
.source "TsPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/ts/TsPayloadReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DvbSubtitleInfo"
.end annotation


# instance fields
.field public final initializationData:[B

.field public final language:Ljava/lang/String;

.field public final type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I[B)V
    .registers 4

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;->language:Ljava/lang/String;

    .line 156
    iput p2, p0, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;->type:I

    .line 157
    iput-object p3, p0, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;->initializationData:[B

    return-void
.end method

###### Class io.bidmachine.media3.extractor.ts.TsPayloadReader.EsInfo (io.bidmachine.media3.extractor.ts.TsPayloadReader$EsInfo)
.class public final Lio/bidmachine/media3/extractor/ts/TsPayloadReader$EsInfo;
.super Ljava/lang/Object;
.source "TsPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/ts/TsPayloadReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EsInfo"
.end annotation


# instance fields
.field public final audioType:I

.field public final descriptorBytes:[B

.field public final dvbSubtitleInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final language:Ljava/lang/String;

.field public final streamType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/util/List;[B)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;",
            ">;[B)V"
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput p1, p0, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$EsInfo;->streamType:I

    .line 130
    iput-object p2, p0, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    .line 131
    iput p3, p0, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$EsInfo;->audioType:I

    if-nez p4, :cond_e

    .line 134
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_12

    .line 135
    :cond_e
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_12
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$EsInfo;->dvbSubtitleInfos:Ljava/util/List;

    .line 136
    iput-object p5, p0, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$EsInfo;->descriptorBytes:[B

    return-void
.end method


# virtual methods
.method public getRoleFlags()I
    .registers 3

    .line 99
    iget v0, p0, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$EsInfo;->audioType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    const/16 v0, 0x200

    return v0

    :cond_d
    const/16 v0, 0x800

    return v0
.end method

###### Class io.bidmachine.media3.extractor.ts.TsPayloadReader.Factory (io.bidmachine.media3.extractor.ts.TsPayloadReader$Factory)
.class public interface abstract Lio/bidmachine/media3/extractor/ts/TsPayloadReader$Factory;
.super Ljava/lang/Object;
.source "TsPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/ts/TsPayloadReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract createInitialPayloadReaders()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lio/bidmachine/media3/extractor/ts/TsPayloadReader;",
            ">;"
        }
    .end annotation
.end method

.method public abstract createPayloadReader(ILio/bidmachine/media3/extractor/ts/TsPayloadReader$EsInfo;)Lio/bidmachine/media3/extractor/ts/TsPayloadReader;
.end method

###### Class io.bidmachine.media3.extractor.ts.TsPayloadReader.TrackIdGenerator (io.bidmachine.media3.extractor.ts.TsPayloadReader$TrackIdGenerator)
.class public final Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;
.super Ljava/lang/Object;
.source "TsPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/ts/TsPayloadReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackIdGenerator"
.end annotation


# instance fields
.field public final firstTrackId:I

.field public formatId:Ljava/lang/String;

.field public final formatIdPrefix:Ljava/lang/String;

.field public trackId:I

.field public final trackIdIncrement:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    const/high16 v0, -0x80000000

    .line 173
    invoke-direct {p0, v0, p1, p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 7

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    const-string v0, ""

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1c

    :cond_1b
    move-object p1, v0

    :goto_1c
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->formatIdPrefix:Ljava/lang/String;

    .line 178
    iput p2, p0, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->firstTrackId:I

    .line 179
    iput p3, p0, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->trackIdIncrement:I

    .line 180
    iput v1, p0, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->trackId:I

    .line 181
    iput-object v0, p0, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->formatId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateNewId()V
    .registers 3

    .line 189
    iget v0, p0, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->trackId:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_9

    iget v0, p0, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->firstTrackId:I

    goto :goto_c

    :cond_9
    iget v1, p0, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->trackIdIncrement:I

    add-int/2addr v0, v1

    :goto_c
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->trackId:I

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->formatIdPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->trackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->formatId:Ljava/lang/String;

    return-void
.end method

.method public getFormatId()Ljava/lang/String;
    .registers 2

    .line 213
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->maybeThrowUninitializedError()V

    .line 214
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->formatId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()I
    .registers 2

    .line 200
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->maybeThrowUninitializedError()V

    .line 201
    iget v0, p0, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->trackId:I

    return v0
.end method

.method public final maybeThrowUninitializedError()V
    .registers 3

    .line 218
    iget v0, p0, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->trackId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_7

    return-void

    .line 219
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "generateNewId() must be called before retrieving ids."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
