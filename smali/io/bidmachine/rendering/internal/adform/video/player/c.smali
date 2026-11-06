###### Class io.bidmachine.rendering.internal.adform.video.player.c (io.bidmachine.rendering.internal.adform.video.player.c)
.class public final Lio/bidmachine/rendering/internal/adform/video/player/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lio/bidmachine/rendering/internal/adform/video/player/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/adform/video/player/c;

    invoke-direct {v0}, Lio/bidmachine/rendering/internal/adform/video/player/c;-><init>()V

    sput-object v0, Lio/bidmachine/rendering/internal/adform/video/player/c;->a:Lio/bidmachine/rendering/internal/adform/video/player/c;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;)Lio/bidmachine/rendering/internal/adform/video/player/b;
    .registers 4

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "exo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "PlayerFactory"

    const/4 v1, 0x0

    if-eqz p1, :cond_1d

    .line 2
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "Create player (ExoPlayerImpl)"

    invoke-static {v0, v1, p1}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    new-instance p1, Lio/bidmachine/rendering/internal/adform/video/player/exo/a;

    invoke-direct {p1, p0}, Lio/bidmachine/rendering/internal/adform/video/player/exo/a;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 7
    :cond_1d
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "Create player (MediaPlayerImpl)"

    invoke-static {v0, v1, p1}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    new-instance p1, Lio/bidmachine/rendering/internal/adform/video/player/media/a;

    invoke-direct {p1, p0}, Lio/bidmachine/rendering/internal/adform/video/player/media/a;-><init>(Landroid/content/Context;)V

    return-object p1
.end method
