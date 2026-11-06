###### Class io.bidmachine.media3.exoplayer.RendererConfiguration (io.bidmachine.media3.exoplayer.RendererConfiguration)
.class public final Lio/bidmachine/media3/exoplayer/RendererConfiguration;
.super Ljava/lang/Object;
.source "RendererConfiguration.java"


# static fields
.field public static final DEFAULT:Lio/bidmachine/media3/exoplayer/RendererConfiguration;


# instance fields
.field public final offloadModePreferred:I

.field public final tunneling:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Lio/bidmachine/media3/exoplayer/RendererConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lio/bidmachine/media3/exoplayer/RendererConfiguration;-><init>(IZ)V

    sput-object v0, Lio/bidmachine/media3/exoplayer/RendererConfiguration;->DEFAULT:Lio/bidmachine/media3/exoplayer/RendererConfiguration;

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lio/bidmachine/media3/exoplayer/RendererConfiguration;->offloadModePreferred:I

    .line 58
    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/RendererConfiguration;->tunneling:Z

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

    if-eqz p1, :cond_1f

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/exoplayer/RendererConfiguration;

    if-eq v3, v2, :cond_10

    goto :goto_1f

    .line 69
    :cond_10
    check-cast p1, Lio/bidmachine/media3/exoplayer/RendererConfiguration;

    .line 70
    iget v2, p0, Lio/bidmachine/media3/exoplayer/RendererConfiguration;->offloadModePreferred:I

    iget v3, p1, Lio/bidmachine/media3/exoplayer/RendererConfiguration;->offloadModePreferred:I

    if-ne v2, v3, :cond_1f

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/RendererConfiguration;->tunneling:Z

    iget-boolean p1, p1, Lio/bidmachine/media3/exoplayer/RendererConfiguration;->tunneling:Z

    if-ne v2, p1, :cond_1f

    return v0

    :cond_1f
    :goto_1f
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 75
    iget v0, p0, Lio/bidmachine/media3/exoplayer/RendererConfiguration;->offloadModePreferred:I

    shl-int/lit8 v0, v0, 0x1

    .line 76
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/RendererConfiguration;->tunneling:Z

    add-int/2addr v0, v1

    return v0
.end method
