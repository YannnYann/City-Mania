###### Class io.bidmachine.media3.exoplayer.source.BundledExtractorsAdapter (io.bidmachine.media3.exoplayer.source.BundledExtractorsAdapter)
.class public final Lio/bidmachine/media3/exoplayer/source/BundledExtractorsAdapter;
.super Ljava/lang/Object;
.source "BundledExtractorsAdapter.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor;


# instance fields
.field public extractor:Lio/bidmachine/media3/extractor/Extractor;

.field public extractorInput:Lio/bidmachine/media3/extractor/ExtractorInput;

.field public final extractorsFactory:Lio/bidmachine/media3/extractor/ExtractorsFactory;


# direct methods
.method public static synthetic $r8$lambda$zQcx48FLgUxQZBWUZlMnCZ_R404(Lio/bidmachine/media3/extractor/Extractor;)Ljava/lang/String;
    .registers 1

    .line 105
    invoke-interface {p0}, Lio/bidmachine/media3/extractor/Extractor;->getUnderlyingImplementation()Lio/bidmachine/media3/extractor/Extractor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lio/bidmachine/media3/extractor/ExtractorsFactory;)V
    .registers 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/BundledExtractorsAdapter;->extractorsFactory:Lio/bidmachine/media3/extractor/ExtractorsFactory;

    return-void
.end method


# virtual methods
.method public disableSeekingOnMp3Streams()V
    .registers 3

    .line 125
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Lio/bidmachine/media3/extractor/Extractor;

    if-nez v0, :cond_5

    goto :goto_12

    .line 128
    :cond_5
    invoke-interface {v0}, Lio/bidmachine/media3/extractor/Extractor;->getUnderlyingImplementation()Lio/bidmachine/media3/extractor/Extractor;

    move-result-object v0

    .line 129
    instance-of v1, v0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;

    if-eqz v1, :cond_12

    .line 130
    check-cast v0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->disableSeeking()V

    :cond_12
    :goto_12
    return-void
.end method

.method public getCurrentInputPosition()J
    .registers 3

    .line 136
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/BundledExtractorsAdapter;->extractorInput:Lio/bidmachine/media3/extractor/ExtractorInput;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    return-wide v0

    :cond_9
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public init(Lio/bidmachine/media3/common/DataReader;Landroid/net/Uri;Ljava/util/Map;JJLio/bidmachine/media3/extractor/ExtractorOutput;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/common/DataReader;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;JJ",
            "Lio/bidmachine/media3/extractor/ExtractorOutput;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    new-instance v1, Lio/bidmachine/media3/extractor/DefaultExtractorInput;

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p6

    invoke-direct/range {v1 .. v6}, Lio/bidmachine/media3/extractor/DefaultExtractorInput;-><init>(Lio/bidmachine/media3/common/DataReader;JJ)V

    .line 71
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/source/BundledExtractorsAdapter;->extractorInput:Lio/bidmachine/media3/extractor/ExtractorInput;

    .line 72
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Lio/bidmachine/media3/extractor/Extractor;

    if-eqz p1, :cond_f

    return-void

    .line 75
    :cond_f
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/BundledExtractorsAdapter;->extractorsFactory:Lio/bidmachine/media3/extractor/ExtractorsFactory;

    invoke-interface {p1, p2, p3}, Lio/bidmachine/media3/extractor/ExtractorsFactory;->createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Lio/bidmachine/media3/extractor/Extractor;

    move-result-object p1

    .line 76
    array-length p3, p1

    .line 77
    invoke-static {p3}, Lcom/google/common/collect/ImmutableList;->builderWithExpectedSize(I)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p3

    .line 78
    array-length p4, p1

    const/4 p5, 0x0

    const/4 p6, 0x1

    if-ne p4, p6, :cond_25

    .line 79
    aget-object p1, p1, p5

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Lio/bidmachine/media3/extractor/Extractor;

    goto/16 :goto_83

    .line 81
    :cond_25
    array-length p4, p1

    move p7, p5

    :goto_27
    if-ge p7, p4, :cond_7f

    aget-object v0, p1, p7

    .line 83
    :try_start_2b
    invoke-interface {v0, v1}, Lio/bidmachine/media3/extractor/Extractor;->sniff(Lio/bidmachine/media3/extractor/ExtractorInput;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 84
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Lio/bidmachine/media3/extractor/Extractor;
    :try_end_33
    .catch Ljava/io/EOFException; {:try_start_2b .. :try_end_33} :catch_6f
    .catchall {:try_start_2b .. :try_end_33} :catchall_3a

    .line 93
    invoke-static {p6}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 94
    invoke-interface {v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_7f

    :catchall_3a
    move-exception v0

    move-object p1, v0

    goto :goto_5b

    .line 87
    :cond_3d
    :try_start_3d
    invoke-interface {v0}, Lio/bidmachine/media3/extractor/Extractor;->getSniffFailureDetails()Ljava/util/List;

    move-result-object v0

    .line 88
    invoke-virtual {p3, v0}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;
    :try_end_44
    .catch Ljava/io/EOFException; {:try_start_3d .. :try_end_44} :catch_6f
    .catchall {:try_start_3d .. :try_end_44} :catchall_3a

    .line 93
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Lio/bidmachine/media3/extractor/Extractor;

    if-nez v0, :cond_53

    invoke-interface {v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-nez v0, :cond_51

    goto :goto_53

    :cond_51
    move v0, p5

    goto :goto_54

    :cond_53
    :goto_53
    move v0, p6

    :goto_54
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 94
    invoke-interface {v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_7c

    .line 93
    :goto_5b
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Lio/bidmachine/media3/extractor/Extractor;

    if-nez p2, :cond_67

    invoke-interface {v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide p2

    cmp-long p2, p2, v3

    if-nez p2, :cond_68

    :cond_67
    move p5, p6

    :cond_68
    invoke-static {p5}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 94
    invoke-interface {v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 95
    throw p1

    .line 93
    :catch_6f
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Lio/bidmachine/media3/extractor/Extractor;

    if-nez v0, :cond_53

    invoke-interface {v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-nez v0, :cond_51

    goto :goto_53

    :goto_7c
    add-int/lit8 p7, p7, 0x1

    goto :goto_27

    .line 97
    :cond_7f
    :goto_7f
    iget-object p4, p0, Lio/bidmachine/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Lio/bidmachine/media3/extractor/Extractor;

    if-eqz p4, :cond_89

    .line 111
    :goto_83
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Lio/bidmachine/media3/extractor/Extractor;

    invoke-interface {p1, p8}, Lio/bidmachine/media3/extractor/Extractor;->init(Lio/bidmachine/media3/extractor/ExtractorOutput;)V

    return-void

    .line 98
    :cond_89
    new-instance p4, Lio/bidmachine/media3/exoplayer/source/UnrecognizedInputFormatException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "None of the available extractors ("

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, ", "

    .line 100
    invoke-static {p6}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object p6

    .line 103
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    new-instance p7, Lio/bidmachine/media3/exoplayer/source/BundledExtractorsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p7}, Lio/bidmachine/media3/exoplayer/source/BundledExtractorsAdapter$$ExternalSyntheticLambda0;-><init>()V

    .line 102
    invoke-static {p1, p7}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object p1

    .line 101
    invoke-virtual {p6, p1}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") could read the stream."

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    .line 108
    invoke-virtual {p3}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p3

    invoke-direct {p4, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/source/UnrecognizedInputFormatException;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;)V

    throw p4
.end method

.method public read(Lio/bidmachine/media3/extractor/PositionHolder;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Lio/bidmachine/media3/extractor/Extractor;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/extractor/Extractor;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/BundledExtractorsAdapter;->extractorInput:Lio/bidmachine/media3/extractor/ExtractorInput;

    .line 147
    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/extractor/ExtractorInput;

    invoke-interface {v0, v1, p1}, Lio/bidmachine/media3/extractor/Extractor;->read(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;)I

    move-result p1

    return p1
.end method

.method public release()V
    .registers 3

    .line 116
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Lio/bidmachine/media3/extractor/Extractor;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 117
    invoke-interface {v0}, Lio/bidmachine/media3/extractor/Extractor;->release()V

    .line 118
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Lio/bidmachine/media3/extractor/Extractor;

    .line 120
    :cond_a
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/source/BundledExtractorsAdapter;->extractorInput:Lio/bidmachine/media3/extractor/ExtractorInput;

    return-void
.end method

.method public seek(JJ)V
    .registers 6

    .line 141
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Lio/bidmachine/media3/extractor/Extractor;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/extractor/Extractor;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/bidmachine/media3/extractor/Extractor;->seek(JJ)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.source.BundledExtractorsAdapter$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.source.BundledExtractorsAdapter$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/source/BundledExtractorsAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lio/bidmachine/media3/extractor/Extractor;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/source/BundledExtractorsAdapter;->$r8$lambda$zQcx48FLgUxQZBWUZlMnCZ_R404(Lio/bidmachine/media3/extractor/Extractor;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
