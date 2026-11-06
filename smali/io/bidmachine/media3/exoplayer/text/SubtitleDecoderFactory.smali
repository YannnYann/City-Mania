###### Class io.bidmachine.media3.exoplayer.text.SubtitleDecoderFactory (io.bidmachine.media3.exoplayer.text.SubtitleDecoderFactory)
.class public interface abstract Lio/bidmachine/media3/exoplayer/text/SubtitleDecoderFactory;
.super Ljava/lang/Object;
.source "SubtitleDecoderFactory.java"


# static fields
.field public static final DEFAULT:Lio/bidmachine/media3/exoplayer/text/SubtitleDecoderFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 61
    new-instance v0, Lio/bidmachine/media3/exoplayer/text/SubtitleDecoderFactory$1;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/text/SubtitleDecoderFactory$1;-><init>()V

    sput-object v0, Lio/bidmachine/media3/exoplayer/text/SubtitleDecoderFactory;->DEFAULT:Lio/bidmachine/media3/exoplayer/text/SubtitleDecoderFactory;

    return-void
.end method


# virtual methods
.method public abstract createDecoder(Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/extractor/text/SubtitleDecoder;
.end method

.method public abstract supportsFormat(Lio/bidmachine/media3/common/Format;)Z
.end method

###### Class io.bidmachine.media3.exoplayer.text.SubtitleDecoderFactory.AnonymousClass1 (io.bidmachine.media3.exoplayer.text.SubtitleDecoderFactory$1)
.class public Lio/bidmachine/media3/exoplayer/text/SubtitleDecoderFactory$1;
.super Ljava/lang/Object;
.source "SubtitleDecoderFactory.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/text/SubtitleDecoderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/text/SubtitleDecoderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final delegate:Lio/bidmachine/media3/extractor/text/DefaultSubtitleParserFactory;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lio/bidmachine/media3/extractor/text/DefaultSubtitleParserFactory;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/text/DefaultSubtitleParserFactory;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/text/SubtitleDecoderFactory$1;->delegate:Lio/bidmachine/media3/extractor/text/DefaultSubtitleParserFactory;

    return-void
.end method


# virtual methods
.method public createDecoder(Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/extractor/text/SubtitleDecoder;
    .registers 6

    .line 77
    iget-object v0, p1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz v0, :cond_45

    const/4 v1, -0x1

    .line 79
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_8a

    goto :goto_2d

    :sswitch_d
    const-string v2, "application/cea-708"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_2d

    :cond_16
    const/4 v1, 0x2

    goto :goto_2d

    :sswitch_18
    const-string v2, "application/cea-608"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    goto :goto_2d

    :cond_21
    const/4 v1, 0x1

    goto :goto_2d

    :sswitch_23
    const-string v2, "application/x-mp4-cea-608"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    :goto_2d
    packed-switch v1, :pswitch_data_98

    goto :goto_45

    .line 87
    :pswitch_31
    new-instance v0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;

    iget v1, p1, Lio/bidmachine/media3/common/Format;->accessibilityChannel:I

    iget-object p1, p1, Lio/bidmachine/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-direct {v0, v1, p1}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;-><init>(ILjava/util/List;)V

    return-object v0

    .line 82
    :pswitch_3b
    new-instance v1, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;

    iget p1, p1, Lio/bidmachine/media3/common/Format;->accessibilityChannel:I

    const-wide/16 v2, 0x3e80

    invoke-direct {v1, v0, p1, v2, v3}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;-><init>(Ljava/lang/String;IJ)V

    return-object v1

    .line 92
    :cond_45
    :goto_45
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/text/SubtitleDecoderFactory$1;->delegate:Lio/bidmachine/media3/extractor/text/DefaultSubtitleParserFactory;

    invoke-virtual {v1, p1}, Lio/bidmachine/media3/extractor/text/DefaultSubtitleParserFactory;->supportsFormat(Lio/bidmachine/media3/common/Format;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 93
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/text/SubtitleDecoderFactory$1;->delegate:Lio/bidmachine/media3/extractor/text/DefaultSubtitleParserFactory;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/extractor/text/DefaultSubtitleParserFactory;->create(Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/extractor/text/SubtitleParser;

    move-result-object p1

    .line 94
    new-instance v0, Lio/bidmachine/media3/exoplayer/text/DelegatingSubtitleDecoder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Decoder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/text/DelegatingSubtitleDecoder;-><init>(Ljava/lang/String;Lio/bidmachine/media3/extractor/text/SubtitleParser;)V

    return-object v0

    .line 97
    :cond_72
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to create decoder for unsupported MIME type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_8a
    .sparse-switch
        0x37713300 -> :sswitch_23
        0x5d578071 -> :sswitch_18
        0x5d578432 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_3b
        :pswitch_31
    .end packed-switch
.end method

.method public supportsFormat(Lio/bidmachine/media3/common/Format;)Z
    .registers 4

    .line 68
    iget-object v0, p1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 69
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/text/SubtitleDecoderFactory$1;->delegate:Lio/bidmachine/media3/extractor/text/DefaultSubtitleParserFactory;

    invoke-virtual {v1, p1}, Lio/bidmachine/media3/extractor/text/DefaultSubtitleParserFactory;->supportsFormat(Lio/bidmachine/media3/common/Format;)Z

    move-result p1

    if-nez p1, :cond_25

    const-string p1, "application/cea-608"

    .line 70
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    const-string p1, "application/x-mp4-cea-608"

    .line 71
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    const-string p1, "application/cea-708"

    .line 72
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    goto :goto_25

    :cond_23
    const/4 p1, 0x0

    return p1

    :cond_25
    :goto_25
    const/4 p1, 0x1

    return p1
.end method
