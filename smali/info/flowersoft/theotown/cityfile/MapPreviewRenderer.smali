###### Class info.flowersoft.theotown.cityfile.MapPreviewRenderer (info.flowersoft.theotown.cityfile.MapPreviewRenderer)
.class public Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;
.super Ljava/lang/Object;
.source "MapPreviewRenderer.java"


# instance fields
.field public engine:Lio/blueflower/stapel2d/drawing/Engine;

.field public finished:J

.field public height:I

.field public image:Lio/blueflower/stapel2d/drawing/Image;

.field public isUploaded:Z

.field public final loadingMonitor:Ljava/lang/Object;

.field public map:Linfo/flowersoft/theotown/cityloader/CityKeeper;

.field public stopped:Z

.field public texture:Lio/blueflower/stapel2d/drawing/Texture;

.field public width:I

.field public worker:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/cityloader/CityKeeper;Lio/blueflower/stapel2d/drawing/Engine;Ljava/util/concurrent/ExecutorService;)V
    .registers 5

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->width:I

    .line 38
    iput v0, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->height:I

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->loadingMonitor:Ljava/lang/Object;

    .line 46
    iput-object p1, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->map:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    .line 47
    iput-object p2, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 49
    invoke-virtual {p0, p3}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->prepare(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;)Ljava/lang/Object;
    .registers 1

    .line 22
    iget-object p0, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->loadingMonitor:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;)Z
    .registers 1

    .line 22
    iget-boolean p0, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->stopped:Z

    return p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;)Linfo/flowersoft/theotown/cityloader/CityKeeper;
    .registers 1

    .line 22
    iget-object p0, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->map:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;)I
    .registers 1

    .line 22
    iget p0, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->width:I

    return p0
.end method

.method public static synthetic access$302(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;I)I
    .registers 2

    .line 22
    iput p1, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->width:I

    return p1
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;)I
    .registers 1

    .line 22
    iget p0, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->height:I

    return p0
.end method

.method public static synthetic access$402(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;I)I
    .registers 2

    .line 22
    iput p1, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->height:I

    return p1
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;)Lio/blueflower/stapel2d/drawing/Texture;
    .registers 1

    .line 22
    iget-object p0, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    return-object p0
.end method

.method public static synthetic access$502(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;Lio/blueflower/stapel2d/drawing/Texture;)Lio/blueflower/stapel2d/drawing/Texture;
    .registers 2

    .line 22
    iput-object p1, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    return-object p1
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;)Lio/blueflower/stapel2d/drawing/Image;
    .registers 1

    .line 22
    iget-object p0, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->image:Lio/blueflower/stapel2d/drawing/Image;

    return-object p0
.end method

.method public static synthetic access$602(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;Lio/blueflower/stapel2d/drawing/Image;)Lio/blueflower/stapel2d/drawing/Image;
    .registers 2

    .line 22
    iput-object p1, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->image:Lio/blueflower/stapel2d/drawing/Image;

    return-object p1
.end method


# virtual methods
.method public finishedSince()I
    .registers 5

    .line 69
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    iget-wide v2, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->finished:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getImage()Lio/blueflower/stapel2d/drawing/Image;
    .registers 2

    .line 73
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->image:Lio/blueflower/stapel2d/drawing/Image;

    return-object v0
.end method

.method public isFinished()Z
    .registers 2

    .line 65
    iget-boolean v0, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->isUploaded:Z

    return v0
.end method

.method public final declared-synchronized prepare(Ljava/util/concurrent/ExecutorService;)V
    .registers 3

    monitor-enter p0

    .line 77
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->map:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->hasPreview()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 78
    new-instance v0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer$1;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer$1;-><init>(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->worker:Ljava/util/concurrent/Future;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_19

    goto :goto_1b

    :catchall_19
    move-exception p1

    goto :goto_1d

    .line 174
    :cond_1b
    :goto_1b
    monitor-exit p0

    return-void

    :goto_1d
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_19

    throw p1
.end method

.method public readyForUpload()Z
    .registers 2

    .line 53
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->image:Lio/blueflower/stapel2d/drawing/Image;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->isUploaded:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized release()V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x1

    .line 177
    :try_start_2
    iput-boolean v0, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->stopped:Z

    .line 179
    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->worker:Ljava/util/concurrent/Future;

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_19

    .line 180
    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->worker:Ljava/util/concurrent/Future;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 181
    iput-object v2, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->worker:Ljava/util/concurrent/Future;

    goto :goto_19

    :catchall_17
    move-exception v0

    goto :goto_28

    .line 184
    :cond_19
    :goto_19
    iput-object v2, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->image:Lio/blueflower/stapel2d/drawing/Image;

    .line 185
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    if-eqz v0, :cond_26

    .line 186
    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->releaseTexture(Lio/blueflower/stapel2d/drawing/Texture;)V

    .line 187
    iput-object v2, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->texture:Lio/blueflower/stapel2d/drawing/Texture;
    :try_end_26
    .catchall {:try_start_2 .. :try_end_26} :catchall_17

    .line 189
    :cond_26
    monitor-exit p0

    return-void

    :goto_28
    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_17

    throw v0
.end method

.method public declared-synchronized upload()V
    .registers 3

    monitor-enter p0

    .line 57
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    if-eqz v0, :cond_16

    .line 58
    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->loadTexture(Lio/blueflower/stapel2d/drawing/Texture;)V

    .line 59
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->finished:J

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->isUploaded:Z
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_14

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_18

    .line 62
    :cond_16
    :goto_16
    monitor-exit p0

    return-void

    :goto_18
    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_14

    throw v0
.end method

###### Class info.flowersoft.theotown.cityfile.MapPreviewRenderer.AnonymousClass1 (info.flowersoft.theotown.cityfile.MapPreviewRenderer$1)
.class public Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer$1;
.super Ljava/lang/Object;
.source "MapPreviewRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->prepare(Ljava/util/concurrent/ExecutorService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 78
    iput-object p1, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer$1;->this$0:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .line 83
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer$1;->this$0:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    invoke-static {v0}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->access$000(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 85
    :try_start_7
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer$1;->this$0:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    invoke-static {v0}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->access$100(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;)Z

    move-result v0

    if-nez v0, :cond_1e0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto/16 :goto_1e0

    .line 90
    :cond_1b
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer$1;->this$0:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    invoke-static {v0}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->access$200(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;)Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getPreviewData()[I

    move-result-object v2

    .line 92
    iget-object v3, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer$1;->this$0:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getPreviewWidth()I

    move-result v4

    invoke-static {v3, v4}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->access$302(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;I)I

    .line 93
    iget-object v3, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer$1;->this$0:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getPreviewHeight()I

    move-result v4

    invoke-static {v3, v4}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->access$402(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;I)I

    const/4 v3, 0x0

    if-nez v2, :cond_78

    .line 96
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer$1;->this$0:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    invoke-static {v0}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->access$200(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;)Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v2

    monitor-enter v2
    :try_end_45
    .catchall {:try_start_7 .. :try_end_45} :catchall_75

    .line 97
    :try_start_45
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer$1;->this$0:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    invoke-static {v0}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->access$200(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;)Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->loadLightInfo(ZZ)V

    .line 98
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer$1;->this$0:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    invoke-static {v0}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->access$200(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;)Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getPreviewData()[I

    move-result-object v4

    .line 100
    iget-object v5, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer$1;->this$0:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getPreviewWidth()I

    move-result v6

    invoke-static {v5, v6}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->access$302(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;I)I

    .line 101
    iget-object v5, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer$1;->this$0:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getPreviewHeight()I

    move-result v6

    invoke-static {v5, v6}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->access$402(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;I)I

    .line 102
    monitor-exit v2

    move-object v2, v4

    goto :goto_78

    :catchall_72
    move-exception v0

    monitor-exit v2
    :try_end_74
    .catchall {:try_start_45 .. :try_end_74} :catchall_72

    :try_start_74
    throw v0

    :catchall_75
    move-exception v0

    goto/16 :goto_204

    :cond_78
    :goto_78
    if-eqz v2, :cond_1de

    .line 105
    array-length v4, v2

    iget-object v5, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer$1;->this$0:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    invoke-static {v5}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->access$300(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;)I

    move-result v5

    iget-object v6, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer$1;->this$0:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    invoke-static {v6}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->access$400(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;)I

    move-result v6

    mul-int/2addr v5, v6

    if-lt v4, v5, :cond_1de

    iget-object v4, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer$1;->this$0:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    invoke-static {v4}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->access$100(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;)Z

    move-result v4

    if-nez v4, :cond_1de

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_1de

    .line 107
    iget-object v4, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer$1;->this$0:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    invoke-static {v4}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->access$300(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;)I

    move-result v4

    invoke-static {v4}, Lio/blueflower/stapel2d/drawing/Texture;->findSize(I)I

    move-result v4

    .line 108
    iget-object v5, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer$1;->this$0:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    invoke-static {v5}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->access$400(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;)I

    move-result v5

    invoke-static {v5}, Lio/blueflower/stapel2d/drawing/Texture;->findSize(I)I

    move-result v5
    :try_end_b0
    .catchall {:try_start_74 .. :try_end_b0} :catchall_75

    mul-int v6, v4, v5

    .line 111
    :try_start_b2
    new-array v7, v6, [I

    move v8, v3

    :goto_b5
    if-ge v8, v6, :cond_141

    .line 114
    rem-int/lit8 v9, v8, 0x64

    if-nez v9, :cond_d3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v9

    if-nez v9, :cond_d1

    iget-object v9, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer$1;->this$0:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    invoke-static {v9}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->access$100(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;)Z

    move-result v9
    :try_end_cb
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b2 .. :try_end_cb} :catch_ce
    .catchall {:try_start_b2 .. :try_end_cb} :catchall_75

    if-eqz v9, :cond_d3

    goto :goto_d1

    :catch_ce
    move-exception v0

    goto/16 :goto_1d2

    .line 115
    :cond_d1
    :goto_d1
    :try_start_d1
    monitor-exit v1
    :try_end_d2
    .catchall {:try_start_d1 .. :try_end_d2} :catchall_75

    return-void

    .line 116
    :cond_d3
    :try_start_d3
    rem-int v9, v8, v4

    .line 117
    div-int v10, v8, v4

    .line 119
    iget-object v11, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer$1;->this$0:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    invoke-static {v11}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->access$300(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;)I

    move-result v11

    if-ge v9, v11, :cond_13b

    if-ltz v10, :cond_13b

    iget-object v11, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer$1;->this$0:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    invoke-static {v11}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->access$400(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;)I

    move-result v11

    if-ge v10, v11, :cond_13b

    .line 121
    iget-object v11, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer$1;->this$0:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    invoke-static {v11}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->access$300(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;)I

    move-result v11

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    aget v9, v2, v9

    shr-int/lit8 v10, v9, 0x18

    const/16 v11, 0xff

    and-int/2addr v10, v11

    and-int/lit16 v12, v9, 0xff

    shr-int/lit8 v13, v9, 0x8

    and-int/2addr v13, v11

    shr-int/lit8 v9, v9, 0x10

    and-int/2addr v9, v11

    add-int v14, v12, v13

    add-int/2addr v14, v9

    .line 128
    div-int/lit8 v14, v14, 0x3

    sub-int/2addr v12, v14

    mul-int/lit8 v12, v12, 0x4

    .line 130
    div-int/lit8 v12, v12, 0x3

    add-int/2addr v12, v14

    add-int/lit8 v12, v12, 0x14

    invoke-static {v12, v3, v11}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v12

    sub-int/2addr v13, v14

    mul-int/lit8 v13, v13, 0x4

    .line 131
    div-int/lit8 v13, v13, 0x3

    add-int/2addr v13, v14

    add-int/lit8 v13, v13, 0x14

    invoke-static {v13, v3, v11}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v13

    sub-int/2addr v9, v14

    mul-int/lit8 v9, v9, 0x4

    .line 132
    div-int/lit8 v9, v9, 0x3

    add-int/2addr v9, v14

    add-int/lit8 v9, v9, 0x14

    invoke-static {v9, v3, v11}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v9

    mul-int/2addr v12, v10

    .line 135
    div-int/2addr v12, v11

    mul-int/2addr v13, v10

    .line 136
    div-int/2addr v13, v11

    mul-int/2addr v9, v10

    .line 137
    div-int/2addr v9, v11

    shl-int/lit8 v10, v10, 0x18

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v9, v10

    shl-int/lit8 v10, v13, 0x8

    or-int/2addr v9, v10

    or-int/2addr v9, v12

    .line 141
    aput v9, v7, v8

    goto :goto_13d

    .line 143
    :cond_13b
    aput v3, v7, v8

    :goto_13d
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_b5

    .line 148
    :cond_141
    iget-object v2, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer$1;->this$0:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    monitor-enter v2
    :try_end_144
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d3 .. :try_end_144} :catch_ce
    .catchall {:try_start_d3 .. :try_end_144} :catchall_75

    .line 150
    :try_start_144
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_1ce

    iget-object v3, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer$1;->this$0:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    invoke-static {v3}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->access$100(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;)Z

    move-result v3

    if-nez v3, :cond_1ce

    .line 151
    new-instance v3, Lio/blueflower/stapel2d/drawing/DynamicTextureSource;

    invoke-direct {v3, v4, v5}, Lio/blueflower/stapel2d/drawing/DynamicTextureSource;-><init>(II)V

    .line 153
    iget-object v4, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer$1;->this$0:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    new-instance v5, Lio/blueflower/stapel2d/drawing/Texture;

    invoke-direct {v5, v3}, Lio/blueflower/stapel2d/drawing/Texture;-><init>(Lio/blueflower/stapel2d/drawing/TextureSource;)V

    invoke-static {v4, v5}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->access$502(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;Lio/blueflower/stapel2d/drawing/Texture;)Lio/blueflower/stapel2d/drawing/Texture;

    .line 154
    iget-object v4, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer$1;->this$0:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    invoke-static {v4}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->access$500(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;)Lio/blueflower/stapel2d/drawing/Texture;

    move-result-object v4

    const/16 v5, 0x2601

    invoke-virtual {v4, v5, v5}, Lio/blueflower/stapel2d/drawing/Texture;->setFiltering(II)V

    .line 155
    invoke-virtual {v3, v7}, Lio/blueflower/stapel2d/drawing/DynamicTextureSource;->setData([I)V

    .line 156
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getHeight()I

    move-result v0

    add-int/2addr v4, v0

    int-to-float v0, v4

    div-float/2addr v3, v0

    .line 157
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer$1;->this$0:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    new-instance v4, Lio/blueflower/stapel2d/drawing/Image;

    invoke-static {v0}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->access$500(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;)Lio/blueflower/stapel2d/drawing/Texture;

    move-result-object v5

    invoke-direct {v4, v5}, Lio/blueflower/stapel2d/drawing/Image;-><init>(Lio/blueflower/stapel2d/drawing/Texture;)V

    invoke-static {v0, v4}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->access$602(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;Lio/blueflower/stapel2d/drawing/Image;)Lio/blueflower/stapel2d/drawing/Image;

    .line 158
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer$1;->this$0:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    invoke-static {v0}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->access$600(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;)Lio/blueflower/stapel2d/drawing/Image;

    move-result-object v4

    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer$1;->this$0:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    .line 160
    invoke-static {v0}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->access$300(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;)I

    move-result v0

    int-to-float v7, v0

    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer$1;->this$0:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    invoke-static {v0}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->access$400(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;)I

    move-result v0

    int-to-float v8, v0

    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer$1;->this$0:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    .line 162
    invoke-static {v0}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->access$400(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;)I

    move-result v0

    int-to-float v0, v0

    iget-object v5, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer$1;->this$0:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    invoke-static {v5}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->access$300(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3e800000    # 0.25f

    mul-float/2addr v5, v6

    sub-float/2addr v0, v5

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float/2addr v3, v5

    mul-float/2addr v3, v5

    iget-object v5, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer$1;->this$0:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    invoke-static {v5}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->access$300(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v3, v5

    sub-float v10, v0, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 158
    invoke-virtual/range {v4 .. v10}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    goto :goto_1ce

    :catchall_1cc
    move-exception v0

    goto :goto_1d0

    .line 165
    :cond_1ce
    :goto_1ce
    monitor-exit v2

    goto :goto_1de

    :goto_1d0
    monitor-exit v2
    :try_end_1d1
    .catchall {:try_start_144 .. :try_end_1d1} :catchall_1cc

    :try_start_1d1
    throw v0
    :try_end_1d2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1d1 .. :try_end_1d2} :catch_ce
    .catchall {:try_start_1d1 .. :try_end_1d2} :catchall_75

    .line 167
    :goto_1d2
    :try_start_1d2
    sget-object v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v3, "Map preview"

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v2, v3, v4}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 170
    :cond_1de
    :goto_1de
    monitor-exit v1

    return-void

    .line 86
    :cond_1e0
    :goto_1e0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "MPR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer$1;->this$0:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    invoke-static {v4}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->access$200(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;)Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": abort due to interrupt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    monitor-exit v1

    return-void

    .line 170
    :goto_204
    monitor-exit v1
    :try_end_205
    .catchall {:try_start_1d2 .. :try_end_205} :catchall_75

    throw v0
.end method
