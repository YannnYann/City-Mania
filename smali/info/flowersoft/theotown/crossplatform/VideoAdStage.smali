###### Class info.flowersoft.theotown.crossplatform.VideoAdStage (info.flowersoft.theotown.crossplatform.VideoAdStage)
.class public abstract Linfo/flowersoft/theotown/crossplatform/VideoAdStage;
.super Linfo/flowersoft/theotown/stages/BaseStage;
.source "VideoAdStage.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/Loadable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/crossplatform/VideoAdStage$AdResultHandler;,
        Linfo/flowersoft/theotown/crossplatform/VideoAdStage$VideoAdStageFactory;
    }
.end annotation


# instance fields
.field public handler:Linfo/flowersoft/theotown/crossplatform/VideoAdStage$AdResultHandler;

.field public placement:Ljava/lang/String;

.field public startMs:J


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Linfo/flowersoft/theotown/crossplatform/VideoAdStage$AdResultHandler;)V
    .registers 4

    .line 43
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/BaseStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 44
    iput-object p2, p0, Linfo/flowersoft/theotown/crossplatform/VideoAdStage;->placement:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Linfo/flowersoft/theotown/crossplatform/VideoAdStage;->handler:Linfo/flowersoft/theotown/crossplatform/VideoAdStage$AdResultHandler;

    return-void
.end method


# virtual methods
.method public handleStart()V
    .registers 3

    .line 56
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/crossplatform/VideoAdStage;->startMs:J

    return-void
.end method

.method public handleSuccess()V
    .registers 5

    .line 63
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    iget-wide v2, p0, Linfo/flowersoft/theotown/crossplatform/VideoAdStage;->startMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 64
    iget-object v1, p0, Linfo/flowersoft/theotown/crossplatform/VideoAdStage;->placement:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/blueflower/stapel2d/util/SessionLogger;->logAd(Ljava/lang/String;I)V

    return-void
.end method

###### Class info.flowersoft.theotown.crossplatform.VideoAdStage.AdResultHandler (info.flowersoft.theotown.crossplatform.VideoAdStage$AdResultHandler)
.class public interface abstract Linfo/flowersoft/theotown/crossplatform/VideoAdStage$AdResultHandler;
.super Ljava/lang/Object;
.source "VideoAdStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/crossplatform/VideoAdStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdResultHandler"
.end annotation


# virtual methods
.method public abstract handle(I)V
.end method

###### Class info.flowersoft.theotown.crossplatform.VideoAdStage.VideoAdStageFactory (info.flowersoft.theotown.crossplatform.VideoAdStage$VideoAdStageFactory)
.class public interface abstract Linfo/flowersoft/theotown/crossplatform/VideoAdStage$VideoAdStageFactory;
.super Ljava/lang/Object;
.source "VideoAdStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/crossplatform/VideoAdStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VideoAdStageFactory"
.end annotation


# virtual methods
.method public abstract create(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Linfo/flowersoft/theotown/crossplatform/VideoAdStage$AdResultHandler;)Linfo/flowersoft/theotown/crossplatform/VideoAdStage;
.end method
