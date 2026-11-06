###### Class io.bidmachine.media3.exoplayer.metadata.MetadataDecoderFactory (io.bidmachine.media3.exoplayer.metadata.MetadataDecoderFactory)
.class public interface abstract Lio/bidmachine/media3/exoplayer/metadata/MetadataDecoderFactory;
.super Ljava/lang/Object;
.source "MetadataDecoderFactory.java"


# static fields
.field public static final DEFAULT:Lio/bidmachine/media3/exoplayer/metadata/MetadataDecoderFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 63
    new-instance v0, Lio/bidmachine/media3/exoplayer/metadata/MetadataDecoderFactory$1;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/metadata/MetadataDecoderFactory$1;-><init>()V

    sput-object v0, Lio/bidmachine/media3/exoplayer/metadata/MetadataDecoderFactory;->DEFAULT:Lio/bidmachine/media3/exoplayer/metadata/MetadataDecoderFactory;

    return-void
.end method


# virtual methods
.method public abstract createDecoder(Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/extractor/metadata/MetadataDecoder;
.end method

.method public abstract supportsFormat(Lio/bidmachine/media3/common/Format;)Z
.end method

###### Class io.bidmachine.media3.exoplayer.metadata.MetadataDecoderFactory.AnonymousClass1 (io.bidmachine.media3.exoplayer.metadata.MetadataDecoderFactory$1)
.class public Lio/bidmachine/media3/exoplayer/metadata/MetadataDecoderFactory$1;
.super Ljava/lang/Object;
.source "MetadataDecoderFactory.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/metadata/MetadataDecoderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/metadata/MetadataDecoderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDecoder(Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/extractor/metadata/MetadataDecoder;
    .registers 5

    .line 78
    iget-object p1, p1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz p1, :cond_65

    const/4 v0, -0x1

    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_7c

    goto :goto_43

    :sswitch_d
    const-string v1, "application/x-scte35"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_43

    :cond_16
    const/4 v0, 0x4

    goto :goto_43

    :sswitch_18
    const-string v1, "application/x-emsg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_43

    :cond_21
    const/4 v0, 0x3

    goto :goto_43

    :sswitch_23
    const-string v1, "application/id3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    goto :goto_43

    :cond_2c
    const/4 v0, 0x2

    goto :goto_43

    :sswitch_2e
    const-string v1, "application/x-icy"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    goto :goto_43

    :cond_37
    const/4 v0, 0x1

    goto :goto_43

    :sswitch_39
    const-string v1, "application/vnd.dvb.ait"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    goto :goto_43

    :cond_42
    const/4 v0, 0x0

    :goto_43
    packed-switch v0, :pswitch_data_92

    goto :goto_65

    .line 86
    :pswitch_47
    new-instance p1, Lio/bidmachine/media3/extractor/metadata/scte35/SpliceInfoDecoder;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/metadata/scte35/SpliceInfoDecoder;-><init>()V

    return-object p1

    .line 84
    :pswitch_4d
    new-instance p1, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessageDecoder;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessageDecoder;-><init>()V

    return-object p1

    .line 82
    :pswitch_53
    new-instance p1, Lio/bidmachine/media3/extractor/metadata/id3/Id3Decoder;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/metadata/id3/Id3Decoder;-><init>()V

    return-object p1

    .line 88
    :pswitch_59
    new-instance p1, Lio/bidmachine/media3/extractor/metadata/icy/IcyDecoder;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/metadata/icy/IcyDecoder;-><init>()V

    return-object p1

    .line 90
    :pswitch_5f
    new-instance p1, Lio/bidmachine/media3/extractor/metadata/dvbsi/AppInfoTableDecoder;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/metadata/dvbsi/AppInfoTableDecoder;-><init>()V

    return-object p1

    .line 95
    :cond_65
    :goto_65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to create decoder for unsupported MIME type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_7c
    .sparse-switch
        -0x50bb4913 -> :sswitch_39
        -0x505c61b5 -> :sswitch_2e
        -0x4a682ec7 -> :sswitch_23
        0x44ce7ed0 -> :sswitch_18
        0x62816bb7 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_59
        :pswitch_53
        :pswitch_4d
        :pswitch_47
    .end packed-switch
.end method

.method public supportsFormat(Lio/bidmachine/media3/common/Format;)Z
    .registers 3

    .line 68
    iget-object p1, p1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 69
    const-string v0, "application/id3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "application/x-emsg"

    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "application/x-scte35"

    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "application/x-icy"

    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "application/vnd.dvb.ait"

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 p1, 0x0

    return p1

    :cond_2d
    :goto_2d
    const/4 p1, 0x1

    return p1
.end method
