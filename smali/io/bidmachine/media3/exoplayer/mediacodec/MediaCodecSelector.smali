###### Class io.bidmachine.media3.exoplayer.mediacodec.MediaCodecSelector (io.bidmachine.media3.exoplayer.mediacodec.MediaCodecSelector)
.class public interface abstract Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;
.super Ljava/lang/Object;
.source "MediaCodecSelector.java"


# static fields
.field public static final DEFAULT:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;

.field public static final PREFER_SOFTWARE:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;


# direct methods
.method public static synthetic $r8$lambda$TDodbtr_M55dM3UiLWgLgolm3fs(Ljava/lang/String;ZZ)Ljava/util/List;
    .registers 4

    .line 39
    sget-object v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;->DEFAULT:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;

    .line 40
    invoke-interface {v0, p0, p1, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    .line 39
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfosSortedBySoftwareOnly(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;->DEFAULT:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;

    .line 37
    new-instance v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;->PREFER_SOFTWARE:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;

    return-void
.end method


# virtual methods
.method public abstract getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method

###### Class io.bidmachine.media3.exoplayer.mediacodec.MediaCodecSelector$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.mediacodec.MediaCodecSelector$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;
    .registers 4

    .line 0
    invoke-static {p1, p2, p3}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.media3.exoplayer.mediacodec.MediaCodecSelector$$ExternalSyntheticLambda1 (io.bidmachine.media3.exoplayer.mediacodec.MediaCodecSelector$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;
    .registers 4

    .line 0
    invoke-static {p1, p2, p3}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;->$r8$lambda$TDodbtr_M55dM3UiLWgLgolm3fs(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
