###### Class info.flowersoft.theotown.resources.SoundPlayer (info.flowersoft.theotown.resources.SoundPlayer)
.class public Linfo/flowersoft/theotown/resources/SoundPlayer;
.super Ljava/lang/Object;
.source "SoundPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;
    }
.end annotation


# static fields
.field public static instance:Linfo/flowersoft/theotown/resources/SoundPlayer;


# instance fields
.field public final loadedSounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/audio/Sound;",
            ">;"
        }
    .end annotation
.end field

.field public final soundPathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/files/FileHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/SoundPlayer;->soundPathList:Ljava/util/List;

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Linfo/flowersoft/theotown/resources/SoundPlayer;->loadedSounds:Ljava/util/List;

    const/4 v2, 0x0

    .line 23
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic access$200()Linfo/flowersoft/theotown/resources/SoundPlayer;
    .registers 1

    .line 15
    sget-object v0, Linfo/flowersoft/theotown/resources/SoundPlayer;->instance:Linfo/flowersoft/theotown/resources/SoundPlayer;

    return-object v0
.end method

.method public static getInstance()Linfo/flowersoft/theotown/resources/SoundPlayer;
    .registers 1

    .line 136
    sget-object v0, Linfo/flowersoft/theotown/resources/SoundPlayer;->instance:Linfo/flowersoft/theotown/resources/SoundPlayer;

    return-object v0
.end method

.method public static init()V
    .registers 2

    .line 104
    sget-object v0, Linfo/flowersoft/theotown/resources/SoundPlayer;->instance:Linfo/flowersoft/theotown/resources/SoundPlayer;

    if-eqz v0, :cond_5

    return-void

    .line 105
    :cond_5
    new-instance v0, Linfo/flowersoft/theotown/resources/SoundPlayer;

    invoke-direct {v0}, Linfo/flowersoft/theotown/resources/SoundPlayer;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/resources/SoundPlayer;->instance:Linfo/flowersoft/theotown/resources/SoundPlayer;

    .line 107
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Linfo/flowersoft/theotown/resources/SoundPlayer$1;

    invoke-direct {v1}, Linfo/flowersoft/theotown/resources/SoundPlayer$1;-><init>()V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->addLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 3

    .line 125
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/SoundPlayer;->loadedSounds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/audio/Sound;

    if-eqz v1, :cond_6

    .line 127
    invoke-interface {v1}, Lcom/badlogic/gdx/audio/Sound;->pause()V

    .line 128
    invoke-interface {v1}, Lcom/badlogic/gdx/audio/Sound;->dispose()V

    goto :goto_6

    .line 131
    :cond_1b
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/SoundPlayer;->loadedSounds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 132
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/SoundPlayer;->soundPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public declared-synchronized loadSound(Lcom/badlogic/gdx/files/FileHandle;)I
    .registers 5

    monitor-enter p0

    .line 28
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/SoundPlayer;->soundPathList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/SoundPlayer;->loadedSounds:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/SoundPlayer;->soundPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_20

    add-int/lit8 v0, v0, -0x1

    .line 32
    :try_start_14
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/SoundPlayer;->loadedSounds:Ljava/util/List;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    invoke-interface {v2, p1}, Lcom/badlogic/gdx/Audio;->newSound(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Sound;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_1f} :catch_22
    .catchall {:try_start_14 .. :try_end_1f} :catchall_20

    goto :goto_26

    :catchall_20
    move-exception p1

    goto :goto_28

    :catch_22
    move-exception p1

    .line 34
    :try_start_23
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_20

    .line 36
    :goto_26
    monitor-exit p0

    return v0

    :goto_28
    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_20

    throw p1
.end method

.method public declared-synchronized onPause()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 85
    :goto_2
    :try_start_2
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/SoundPlayer;->loadedSounds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 86
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/SoundPlayer;->loadedSounds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/audio/Sound;

    if-eqz v1, :cond_1a

    .line 88
    invoke-interface {v1}, Lcom/badlogic/gdx/audio/Sound;->stop()V
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_18

    goto :goto_1a

    :catchall_18
    move-exception v0

    goto :goto_1f

    :cond_1a
    :goto_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 93
    :cond_1d
    monitor-exit p0

    return-void

    :goto_1f
    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_18

    throw v0
.end method

.method public declared-synchronized onResume()V
    .registers 1

    monitor-enter p0

    .line 101
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized play(ILinfo/flowersoft/theotown/resources/SoundType;)Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;
    .registers 11

    monitor-enter p0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    .line 40
    :try_start_b
    invoke-virtual/range {v1 .. v7}, Linfo/flowersoft/theotown/resources/SoundPlayer;->play(ILinfo/flowersoft/theotown/resources/SoundType;FFZF)Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_11

    monitor-exit p0

    return-object p1

    :catchall_11
    move-exception v0

    move-object p1, v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_11

    throw p1
.end method

.method public declared-synchronized play(ILinfo/flowersoft/theotown/resources/SoundType;FFZF)Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;
    .registers 16

    move v2, p6

    monitor-enter p0

    .line 44
    :try_start_2
    invoke-virtual {p2}, Linfo/flowersoft/theotown/resources/SoundType;->getVolume()F

    move-result v3

    const-wide/16 v4, -0x1

    if-ltz p1, :cond_7e

    .line 48
    iget-object v6, p0, Linfo/flowersoft/theotown/resources/SoundPlayer;->loadedSounds:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge p1, v6, :cond_7e

    .line 49
    iget-object v6, p0, Linfo/flowersoft/theotown/resources/SoundPlayer;->loadedSounds:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/audio/Sound;

    if-nez v6, :cond_39

    .line 51
    iget-object v7, p0, Linfo/flowersoft/theotown/resources/SoundPlayer;->soundPathList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/files/FileHandle;
    :try_end_24
    .catchall {:try_start_2 .. :try_end_24} :catchall_32

    if-eqz v7, :cond_39

    .line 54
    :try_start_26
    sget-object v8, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    invoke-interface {v8, v7}, Lcom/badlogic/gdx/Audio;->newSound(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Sound;

    move-result-object v6

    .line 55
    iget-object v7, p0, Linfo/flowersoft/theotown/resources/SoundPlayer;->loadedSounds:Ljava/util/List;

    invoke-interface {v7, p1, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_31} :catch_35
    .catchall {:try_start_26 .. :try_end_31} :catchall_32

    goto :goto_39

    :catchall_32
    move-exception v0

    goto/16 :goto_8f

    :catch_35
    move-exception v0

    .line 57
    :try_start_36
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_39
    :goto_39
    if-eqz v6, :cond_6e

    .line 62
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v3

    cmpl-float v3, p3, p4

    const/high16 v4, 0x3f800000    # 1.0f

    if-lez v3, :cond_4a

    div-float v5, p4, p3

    sub-float/2addr v5, v4

    goto :goto_4e

    :cond_4a
    div-float v5, p3, p4

    sub-float v5, v4, v5

    :goto_4e
    const/high16 v7, -0x40800000    # -1.0f

    .line 64
    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/4 v8, 0x0

    if-nez v3, :cond_5c

    move v5, v8

    :cond_5c
    cmpl-float v3, p3, v8

    if-nez v3, :cond_61

    goto :goto_62

    :cond_61
    move v4, v5

    :goto_62
    cmpl-float v3, p4, v8

    if-nez v3, :cond_67

    goto :goto_68

    :cond_67
    move v7, v4

    :goto_68
    if-eqz p5, :cond_70

    .line 69
    invoke-interface {v6, v0, p6, v7}, Lcom/badlogic/gdx/audio/Sound;->loop(FFF)J

    move-result-wide v4

    :cond_6e
    :goto_6e
    move-wide v2, v4

    goto :goto_75

    .line 71
    :cond_70
    invoke-interface {v6, v0, p6, v7}, Lcom/badlogic/gdx/audio/Sound;->play(FFF)J

    move-result-wide v4

    goto :goto_6e

    .line 74
    :goto_75
    new-instance v0, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

    move-object v1, p0

    move-object v4, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;-><init>(Linfo/flowersoft/theotown/resources/SoundPlayer;JLinfo/flowersoft/theotown/resources/SoundType;Lcom/badlogic/gdx/audio/Sound;)V

    goto :goto_87

    .line 76
    :cond_7e
    new-instance v0, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

    move-wide v2, v4

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;-><init>(Linfo/flowersoft/theotown/resources/SoundPlayer;JLinfo/flowersoft/theotown/resources/SoundType;Lcom/badlogic/gdx/audio/Sound;)V

    .line 79
    :goto_87
    invoke-static {v0, p3}, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->access$002(Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;F)F

    .line 80
    invoke-static {v0, p4}, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->access$102(Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;F)F
    :try_end_8d
    .catchall {:try_start_36 .. :try_end_8d} :catchall_32

    .line 81
    monitor-exit p0

    return-object v0

    :goto_8f
    :try_start_8f
    monitor-exit p0
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_32

    throw v0
.end method

###### Class info.flowersoft.theotown.resources.SoundPlayer.AnonymousClass1 (info.flowersoft.theotown.resources.SoundPlayer$1)
.class public Linfo/flowersoft/theotown/resources/SoundPlayer$1;
.super Ljava/lang/Object;
.source "SoundPlayer.java"

# interfaces
.implements Lcom/badlogic/gdx/LifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/resources/SoundPlayer;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 1

    .line 0
    return-void
.end method

.method public pause()V
    .registers 2

    .line 110
    invoke-static {}, Linfo/flowersoft/theotown/resources/SoundPlayer;->access$200()Linfo/flowersoft/theotown/resources/SoundPlayer;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/SoundPlayer;->onPause()V

    return-void
.end method

.method public resume()V
    .registers 2

    .line 115
    invoke-static {}, Linfo/flowersoft/theotown/resources/SoundPlayer;->access$200()Linfo/flowersoft/theotown/resources/SoundPlayer;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/SoundPlayer;->onResume()V

    return-void
.end method

###### Class info.flowersoft.theotown.resources.SoundPlayer.SoundStream (info.flowersoft.theotown.resources.SoundPlayer$SoundStream)
.class public Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;
.super Ljava/lang/Object;
.source "SoundPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/resources/SoundPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SoundStream"
.end annotation


# instance fields
.field public id:J

.field public lastUpdate:J

.field public rate:F

.field public setPan:F

.field public setVol:F

.field public sound:Lcom/badlogic/gdx/audio/Sound;

.field public final synthetic this$0:Linfo/flowersoft/theotown/resources/SoundPlayer;

.field public type:Linfo/flowersoft/theotown/resources/SoundType;

.field public volumeLeft:F

.field public volumeRight:F


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/resources/SoundPlayer;JLinfo/flowersoft/theotown/resources/SoundType;Lcom/badlogic/gdx/audio/Sound;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 150
    iput-object p1, p0, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->this$0:Linfo/flowersoft/theotown/resources/SoundPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-wide p2, p0, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->id:J

    .line 152
    iput-object p4, p0, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->type:Linfo/flowersoft/theotown/resources/SoundType;

    .line 153
    iput-object p5, p0, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->sound:Lcom/badlogic/gdx/audio/Sound;

    return-void
.end method

.method public static synthetic access$002(Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;F)F
    .registers 2

    .line 139
    iput p1, p0, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->volumeLeft:F

    return p1
.end method

.method public static synthetic access$102(Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;F)F
    .registers 2

    .line 139
    iput p1, p0, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->volumeRight:F

    return p1
.end method


# virtual methods
.method public getVolumeLeft()F
    .registers 2

    .line 200
    iget v0, p0, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->volumeLeft:F

    return v0
.end method

.method public getVolumeRight()F
    .registers 2

    .line 204
    iget v0, p0, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->volumeRight:F

    return v0
.end method

.method public isValid()Z
    .registers 5

    .line 157
    iget-wide v0, p0, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public setRate(F)V
    .registers 6

    .line 181
    iget-wide v0, p0, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->id:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_f

    iget-object v2, p0, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->sound:Lcom/badlogic/gdx/audio/Sound;

    if-eqz v2, :cond_f

    .line 182
    invoke-interface {v2, v0, v1, p1}, Lcom/badlogic/gdx/audio/Sound;->setPitch(JF)V

    .line 184
    :cond_f
    iput p1, p0, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->rate:F

    return-void
.end method

.method public setVolume(FF)V
    .registers 11

    .line 161
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->type:Linfo/flowersoft/theotown/resources/SoundType;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/SoundType;->getVolume()F

    move-result v0

    .line 162
    iget-wide v1, p0, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->id:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_77

    iget-object v1, p0, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->sound:Lcom/badlogic/gdx/audio/Sound;

    if-eqz v1, :cond_77

    .line 163
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v1, v0

    cmpl-float v0, p1, p2

    const/high16 v2, 0x3f800000    # 1.0f

    if-lez v0, :cond_21

    div-float v3, p2, p1

    sub-float/2addr v3, v2

    goto :goto_25

    :cond_21
    div-float v3, p1, p2

    sub-float v3, v2, v3

    :goto_25
    const/high16 v4, -0x40800000    # -1.0f

    .line 165
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/4 v5, 0x0

    cmpl-float v6, p1, v5

    if-nez v6, :cond_35

    goto :goto_36

    :cond_35
    move v2, v3

    :goto_36
    cmpl-float v3, p2, v5

    if-nez v3, :cond_3b

    goto :goto_3c

    :cond_3b
    move v4, v2

    :goto_3c
    if-nez v0, :cond_3f

    goto :goto_40

    :cond_3f
    move v5, v4

    .line 169
    :goto_40
    iget v0, p0, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->setPan:F

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_66

    iget v0, p0, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->setVol:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_66

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v2

    iget-wide v6, p0, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->lastUpdate:J

    sub-long/2addr v2, v6

    const-wide/16 v6, 0x2710

    cmp-long v0, v2, v6

    if-lez v0, :cond_77

    .line 170
    :cond_66
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->sound:Lcom/badlogic/gdx/audio/Sound;

    iget-wide v2, p0, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->id:J

    invoke-interface {v0, v2, v3, v5, v1}, Lcom/badlogic/gdx/audio/Sound;->setPan(JFF)V

    .line 171
    iput v5, p0, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->setPan:F

    .line 172
    iput v1, p0, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->setVol:F

    .line 173
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->lastUpdate:J

    .line 176
    :cond_77
    iput p1, p0, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->volumeLeft:F

    .line 177
    iput p2, p0, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->volumeRight:F

    return-void
.end method

.method public stop()V
    .registers 7

    .line 188
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->sound:Lcom/badlogic/gdx/audio/Sound;

    if-eqz v0, :cond_13

    iget-wide v1, p0, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_13

    .line 189
    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/audio/Sound;->stop(J)V

    .line 190
    iput-wide v3, p0, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->id:J

    .line 191
    iput-wide v3, p0, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->lastUpdate:J

    :cond_13
    return-void
.end method
