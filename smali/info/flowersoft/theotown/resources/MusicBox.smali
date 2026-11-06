###### Class info.flowersoft.theotown.resources.MusicBox (info.flowersoft.theotown.resources.MusicBox)
.class public Linfo/flowersoft/theotown/resources/MusicBox;
.super Ljava/lang/Object;
.source "MusicBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/resources/MusicBox$Type;,
        Linfo/flowersoft/theotown/resources/MusicBox$MusicFile;
    }
.end annotation


# static fields
.field public static instance:Linfo/flowersoft/theotown/resources/MusicBox;


# instance fields
.field public currentIndex:I

.field public currentMusic:Lcom/badlogic/gdx/audio/Music;

.field public currentType:Linfo/flowersoft/theotown/resources/MusicBox$Type;

.field public final disabledMusicIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/resources/MusicBox$MusicFile;",
            ">;"
        }
    .end annotation
.end field

.field public final musicTypesById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Linfo/flowersoft/theotown/resources/MusicBox$Type;",
            ">;"
        }
    .end annotation
.end field

.field public paused:Z


# direct methods
.method public static synthetic $r8$lambda$ig6xhY0wUtqMDFquPti6h4QK4PQ(Linfo/flowersoft/theotown/resources/MusicBox;Lcom/badlogic/gdx/audio/Music;)V
    .registers 2

    .line 310
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/MusicBox;->changeMusic()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->files:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->disabledMusicIds:Ljava/util/Set;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->musicTypesById:Ljava/util/Map;

    const/4 v0, -0x1

    .line 82
    iput v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->currentIndex:I

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    .line 84
    iput-object v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->currentType:Linfo/flowersoft/theotown/resources/MusicBox$Type;

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->paused:Z

    return-void
.end method

.method public static synthetic access$000()Linfo/flowersoft/theotown/resources/MusicBox;
    .registers 1

    .line 30
    sget-object v0, Linfo/flowersoft/theotown/resources/MusicBox;->instance:Linfo/flowersoft/theotown/resources/MusicBox;

    return-object v0
.end method

.method public static getInstance()Linfo/flowersoft/theotown/resources/MusicBox;
    .registers 1

    .line 370
    sget-object v0, Linfo/flowersoft/theotown/resources/MusicBox;->instance:Linfo/flowersoft/theotown/resources/MusicBox;

    return-object v0
.end method

.method public static init()V
    .registers 2

    .line 374
    sget-object v0, Linfo/flowersoft/theotown/resources/MusicBox;->instance:Linfo/flowersoft/theotown/resources/MusicBox;

    if-eqz v0, :cond_5

    return-void

    .line 375
    :cond_5
    new-instance v0, Linfo/flowersoft/theotown/resources/MusicBox;

    invoke-direct {v0}, Linfo/flowersoft/theotown/resources/MusicBox;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/resources/MusicBox;->instance:Linfo/flowersoft/theotown/resources/MusicBox;

    .line 377
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Linfo/flowersoft/theotown/resources/MusicBox$1;

    invoke-direct {v1}, Linfo/flowersoft/theotown/resources/MusicBox$1;-><init>()V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->addLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized addMusic(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/resources/MusicBox$Type;Lcom/badlogic/gdx/files/FileHandle;)V
    .registers 7

    monitor-enter p0

    .line 173
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->files:Ljava/util/List;

    new-instance v1, Linfo/flowersoft/theotown/resources/MusicBox$MusicFile;

    invoke-direct {v1, p1, p2, p3, p4}, Linfo/flowersoft/theotown/resources/MusicBox$MusicFile;-><init>(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/resources/MusicBox$Type;Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 174
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1
.end method

.method public declared-synchronized changeMusic()V
    .registers 3

    monitor-enter p0

    .line 263
    :try_start_1
    iget-boolean v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->paused:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_21

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 264
    :cond_7
    :try_start_7
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->currentType:Linfo/flowersoft/theotown/resources/MusicBox$Type;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_21

    if-nez v0, :cond_d

    monitor-exit p0

    return-void

    .line 265
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/MusicBox;->getVolume()F

    move-result v0
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_21

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_18

    monitor-exit p0

    return-void

    .line 267
    :cond_18
    :try_start_18
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/MusicBox;->getNextTape()I

    move-result v0

    .line 268
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/resources/MusicBox;->playTape(I)V
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_21

    .line 269
    monitor-exit p0

    return-void

    :catchall_21
    move-exception v0

    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public dispose()V
    .registers 3

    .line 395
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 396
    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->stop()V

    .line 397
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->dispose()V

    .line 398
    iput-object v1, p0, Linfo/flowersoft/theotown/resources/MusicBox;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    .line 400
    :cond_f
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->files:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 401
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->disabledMusicIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, -0x1

    .line 402
    iput v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->currentIndex:I

    .line 403
    iput-object v1, p0, Linfo/flowersoft/theotown/resources/MusicBox;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    .line 404
    iput-object v1, p0, Linfo/flowersoft/theotown/resources/MusicBox;->currentType:Linfo/flowersoft/theotown/resources/MusicBox$Type;

    const/4 v0, 0x0

    .line 405
    iput-boolean v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->paused:Z

    return-void
.end method

.method public declared-synchronized getCurrentIndex()I
    .registers 2

    monitor-enter p0

    .line 168
    :try_start_1
    iget v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->currentIndex:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getCurrentType(I)Linfo/flowersoft/theotown/resources/MusicBox$Type;
    .registers 4

    .line 222
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->musicTypesById:Ljava/util/Map;

    iget-object v1, p0, Linfo/flowersoft/theotown/resources/MusicBox;->files:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/resources/MusicBox$MusicFile;

    iget-object v1, v1, Linfo/flowersoft/theotown/resources/MusicBox$MusicFile;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/resources/MusicBox$Type;

    if-eqz v0, :cond_15

    return-object v0

    .line 225
    :cond_15
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/resources/MusicBox;->getDefaultType(I)Linfo/flowersoft/theotown/resources/MusicBox$Type;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultType(I)Linfo/flowersoft/theotown/resources/MusicBox$Type;
    .registers 3

    .line 218
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->files:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/resources/MusicBox$MusicFile;

    iget-object p1, p1, Linfo/flowersoft/theotown/resources/MusicBox$MusicFile;->defaultType:Linfo/flowersoft/theotown/resources/MusicBox$Type;

    return-object p1
.end method

.method public getDisplayName(I)Ljava/lang/String;
    .registers 3

    .line 214
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->files:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/resources/MusicBox$MusicFile;

    iget-object p1, p1, Linfo/flowersoft/theotown/resources/MusicBox$MusicFile;->displayName:Ljava/lang/String;

    return-object p1
.end method

.method public getFile(I)Lcom/badlogic/gdx/files/FileHandle;
    .registers 3

    .line 239
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->files:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/resources/MusicBox$MusicFile;

    iget-object p1, p1, Linfo/flowersoft/theotown/resources/MusicBox$MusicFile;->file:Lcom/badlogic/gdx/files/FileHandle;

    return-object p1
.end method

.method public getId(I)Ljava/lang/String;
    .registers 3

    .line 210
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->files:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/resources/MusicBox$MusicFile;

    iget-object p1, p1, Linfo/flowersoft/theotown/resources/MusicBox$MusicFile;->id:Ljava/lang/String;

    return-object p1
.end method

.method public final getNextTape()I
    .registers 15

    .line 323
    new-instance v0, Lio/blueflower/stapel2d/util/ProbabilitySelector;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/ProbabilitySelector;-><init>()V

    .line 324
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 327
    :goto_a
    iget-object v4, p0, Linfo/flowersoft/theotown/resources/MusicBox;->files:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4b

    .line 328
    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/resources/MusicBox;->getCurrentType(I)Linfo/flowersoft/theotown/resources/MusicBox$Type;

    move-result-object v4

    iget-object v5, p0, Linfo/flowersoft/theotown/resources/MusicBox;->currentType:Linfo/flowersoft/theotown/resources/MusicBox$Type;

    if-ne v4, v5, :cond_48

    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/resources/MusicBox;->isReady(I)Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/resources/MusicBox;->isActive(I)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 329
    iget-object v4, p0, Linfo/flowersoft/theotown/resources/MusicBox;->files:Ljava/util/List;

    .line 330
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/resources/MusicBox$MusicFile;

    iget-wide v4, v4, Linfo/flowersoft/theotown/resources/MusicBox$MusicFile;->lastPlayedMS:J

    sub-long v4, v1, v4

    const-wide/16 v6, 0x3e8

    div-long v8, v4, v6

    const-wide/16 v10, 0x0

    const/16 v4, 0xe10

    int-to-long v12, v4

    .line 329
    invoke-static/range {v8 .. v13}, Lcom/badlogic/gdx/math/MathUtils;->clamp(JJJ)J

    move-result-wide v4

    long-to-int v4, v4

    .line 333
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    int-to-float v4, v4

    invoke-virtual {v0, v5, v4}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    :cond_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 337
    :cond_4b
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->hasResult()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 338
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_5c
    const/4 v0, -0x1

    return v0
.end method

.method public final getVolume()F
    .registers 3

    .line 244
    sget v0, Linfo/flowersoft/theotown/resources/Settings;->generalSoundLevel:I

    sget v1, Linfo/flowersoft/theotown/resources/Settings;->musicLevel:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public isActive(I)Z
    .registers 4

    .line 198
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->disabledMusicIds:Ljava/util/Set;

    iget-object v1, p0, Linfo/flowersoft/theotown/resources/MusicBox;->files:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/resources/MusicBox$MusicFile;

    iget-object p1, p1, Linfo/flowersoft/theotown/resources/MusicBox$MusicFile;->id:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public declared-synchronized isPlaying()Z
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 138
    :try_start_2
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/MusicBox;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    if-eqz v1, :cond_29

    .line 139
    invoke-interface {v1}, Lcom/badlogic/gdx/audio/Music;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_15

    iget v1, p0, Linfo/flowersoft/theotown/resources/MusicBox;->currentIndex:I

    if-gez v1, :cond_29

    goto :goto_15

    :catchall_11
    move-exception v0

    goto :goto_32

    :catch_13
    move-exception v1

    goto :goto_24

    .line 140
    :cond_15
    :goto_15
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/MusicBox;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    if-eqz v1, :cond_29

    .line 141
    invoke-interface {v1}, Lcom/badlogic/gdx/audio/Music;->stop()V

    .line 142
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/MusicBox;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v1}, Lcom/badlogic/gdx/audio/Music;->dispose()V

    .line 143
    iput-object v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->currentMusic:Lcom/badlogic/gdx/audio/Music;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_23} :catch_13
    .catchall {:try_start_2 .. :try_end_23} :catchall_11

    goto :goto_29

    .line 148
    :goto_24
    :try_start_24
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 149
    iput-object v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    .line 151
    :cond_29
    :goto_29
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->currentMusic:Lcom/badlogic/gdx/audio/Music;
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_11

    if-eqz v0, :cond_2f

    const/4 v0, 0x1

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    monitor-exit p0

    return v0

    :goto_32
    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_11

    throw v0
.end method

.method public isReady(I)Z
    .registers 6

    .line 193
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->files:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/resources/MusicBox$MusicFile;

    .line 194
    iget-object v0, p1, Linfo/flowersoft/theotown/resources/MusicBox$MusicFile;->file:Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object p1, p1, Linfo/flowersoft/theotown/resources/MusicBox$MusicFile;->file:Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    return p1

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method

.method public loadSettings()V
    .registers 6

    .line 91
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->disabledMusicIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 92
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->musicTypesById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 94
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "music"

    invoke-static {v1}, Linfo/flowersoft/theotown/util/SSP;->migratePrefFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->getPreferences(Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;

    move-result-object v0

    .line 96
    :try_start_16
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONArray;

    const-string v2, "disabled ids"

    const-string v3, "[]"

    invoke-interface {v0, v2, v3}, Lcom/badlogic/gdx/Preferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 97
    :goto_24
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_38

    .line 98
    iget-object v3, p0, Linfo/flowersoft/theotown/resources/MusicBox;->disabledMusicIds:Ljava/util/Set;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :catch_36
    move-exception v0

    goto :goto_65

    .line 101
    :cond_38
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "types by id"

    const-string v3, "{}"

    invoke-interface {v0, v2, v3}, Lcom/badlogic/gdx/Preferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :cond_49
    :goto_49
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_68

    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 104
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Linfo/flowersoft/theotown/resources/MusicBox$Type;->resolveLegacy(I)Linfo/flowersoft/theotown/resources/MusicBox$Type;

    move-result-object v3

    if-eqz v3, :cond_49

    .line 106
    iget-object v4, p0, Linfo/flowersoft/theotown/resources/MusicBox;->musicTypesById:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_64
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_16 .. :try_end_64} :catch_36

    goto :goto_49

    .line 110
    :goto_65
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_68
    return-void
.end method

.method public declared-synchronized onPause()V
    .registers 3

    monitor-enter p0

    .line 353
    :try_start_1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_20

    if-ne v0, v1, :cond_d

    monitor-exit p0

    return-void

    :cond_d
    const/4 v0, 0x1

    .line 355
    :try_start_e
    iput-boolean v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->paused:Z

    .line 356
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    if-eqz v0, :cond_22

    .line 357
    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->stop()V

    .line 358
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->dispose()V

    const/4 v0, 0x0

    .line 359
    iput-object v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->currentMusic:Lcom/badlogic/gdx/audio/Music;
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_20

    goto :goto_22

    :catchall_20
    move-exception v0

    goto :goto_24

    .line 361
    :cond_22
    :goto_22
    monitor-exit p0

    return-void

    :goto_24
    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_20

    throw v0
.end method

.method public declared-synchronized onResume()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 364
    :try_start_2
    iput-boolean v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->paused:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 365
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public declared-synchronized playTape(I)V
    .registers 6

    monitor-enter p0

    if-ltz p1, :cond_65

    .line 280
    :try_start_3
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->files:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_c

    goto :goto_65

    .line 281
    :cond_c
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/MusicBox;->stopTape()V

    .line 283
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/resources/MusicBox;->isReady(I)Z

    move-result v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_55

    if-nez v0, :cond_17

    .line 284
    monitor-exit p0

    return-void

    .line 287
    :cond_17
    :try_start_17
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/MusicBox;->getVolume()F

    move-result v0
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_55

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_22

    .line 289
    monitor-exit p0

    return-void

    :cond_22
    const/4 v1, -0x1

    .line 292
    :try_start_23
    iput v1, p0, Linfo/flowersoft/theotown/resources/MusicBox;->currentIndex:I

    const/4 v1, 0x0

    .line 293
    iput-object v1, p0, Linfo/flowersoft/theotown/resources/MusicBox;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    .line 295
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/MusicBox;->files:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/resources/MusicBox$MusicFile;

    .line 296
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v2

    iput-wide v2, v1, Linfo/flowersoft/theotown/resources/MusicBox$MusicFile;->lastPlayedMS:J
    :try_end_36
    .catchall {:try_start_23 .. :try_end_36} :catchall_55

    .line 300
    :try_start_36
    sget-object v2, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    iget-object v1, v1, Linfo/flowersoft/theotown/resources/MusicBox$MusicFile;->file:Lcom/badlogic/gdx/files/FileHandle;

    invoke-interface {v2, v1}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v1
    :try_end_3e
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_36 .. :try_end_3e} :catch_5d
    .catchall {:try_start_36 .. :try_end_3e} :catchall_55

    if-nez v1, :cond_42

    .line 306
    monitor-exit p0

    return-void

    .line 309
    :cond_42
    :try_start_42
    invoke-interface {v1, v0}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    .line 310
    new-instance v0, Linfo/flowersoft/theotown/resources/MusicBox$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/resources/MusicBox$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/resources/MusicBox;)V

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V
    :try_end_4d
    .catchall {:try_start_42 .. :try_end_4d} :catchall_55

    .line 313
    :try_start_4d
    invoke-interface {v1}, Lcom/badlogic/gdx/audio/Music;->play()V

    .line 315
    iput p1, p0, Linfo/flowersoft/theotown/resources/MusicBox;->currentIndex:I

    .line 316
    iput-object v1, p0, Linfo/flowersoft/theotown/resources/MusicBox;->currentMusic:Lcom/badlogic/gdx/audio/Music;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_54} :catch_57
    .catchall {:try_start_4d .. :try_end_54} :catchall_55

    goto :goto_5b

    :catchall_55
    move-exception p1

    goto :goto_63

    :catch_57
    move-exception p1

    .line 318
    :try_start_58
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_55

    .line 320
    :goto_5b
    monitor-exit p0

    return-void

    :catch_5d
    move-exception p1

    .line 302
    :try_start_5e
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_55

    .line 303
    monitor-exit p0

    return-void

    :goto_63
    :try_start_63
    monitor-exit p0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_55

    throw p1

    .line 280
    :cond_65
    :goto_65
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removeAt(I)V
    .registers 3

    monitor-enter p0

    .line 177
    :try_start_1
    iget v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->currentIndex:I

    if-ne v0, p1, :cond_b

    .line 178
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/MusicBox;->stopTape()V

    goto :goto_11

    :catchall_9
    move-exception p1

    goto :goto_25

    :cond_b
    if-le v0, p1, :cond_11

    add-int/lit8 v0, v0, -0x1

    .line 180
    iput v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->currentIndex:I

    .line 183
    :cond_11
    :goto_11
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->files:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/resources/MusicBox$MusicFile;

    .line 184
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->disabledMusicIds:Ljava/util/Set;

    iget-object p1, p1, Linfo/flowersoft/theotown/resources/MusicBox$MusicFile;->id:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 185
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/MusicBox;->saveSettings()V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_9

    .line 186
    monitor-exit p0

    return-void

    :goto_25
    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_9

    throw p1
.end method

.method public saveSettings()V
    .registers 6

    .line 115
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "music"

    invoke-static {v1}, Linfo/flowersoft/theotown/util/SSP;->migratePrefFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->getPreferences(Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;

    move-result-object v0

    .line 117
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    .line 118
    iget-object v2, p0, Linfo/flowersoft/theotown/resources/MusicBox;->disabledMusicIds:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 119
    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    goto :goto_17

    .line 121
    :cond_27
    const-string v2, "disabled ids"

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/Preferences;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;

    .line 123
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v1}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 124
    iget-object v2, p0, Linfo/flowersoft/theotown/resources/MusicBox;->musicTypesById:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_62

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 126
    :try_start_4b
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/resources/MusicBox$Type;

    iget v3, v3, Linfo/flowersoft/theotown/resources/MusicBox$Type;->legacyIndex:I

    invoke-virtual {v1, v4, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;
    :try_end_5c
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_4b .. :try_end_5c} :catch_5d

    goto :goto_3f

    :catch_5d
    move-exception v3

    .line 128
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3f

    .line 131
    :cond_62
    const-string v2, "types by id"

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/Preferences;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;

    .line 133
    invoke-interface {v0}, Lcom/badlogic/gdx/Preferences;->flush()V

    return-void
.end method

.method public declared-synchronized selectType(Linfo/flowersoft/theotown/resources/MusicBox$Type;)V
    .registers 3

    monitor-enter p0

    .line 155
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->currentType:Linfo/flowersoft/theotown/resources/MusicBox$Type;

    if-ne p1, v0, :cond_e

    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/MusicBox;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_e

    :catchall_c
    move-exception p1

    goto :goto_25

    .line 156
    :cond_e
    :goto_e
    iput-object p1, p0, Linfo/flowersoft/theotown/resources/MusicBox;->currentType:Linfo/flowersoft/theotown/resources/MusicBox$Type;

    .line 158
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/MusicBox;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_20

    iget v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->currentIndex:I

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/resources/MusicBox;->getCurrentType(I)Linfo/flowersoft/theotown/resources/MusicBox$Type;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_c

    if-ne v0, p1, :cond_20

    .line 160
    monitor-exit p0

    return-void

    .line 163
    :cond_20
    :try_start_20
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/MusicBox;->changeMusic()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_c

    .line 165
    :cond_23
    monitor-exit p0

    return-void

    :goto_25
    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_c

    throw p1
.end method

.method public setActive(IZ)V
    .registers 4

    if-eqz p2, :cond_12

    .line 203
    iget-object p2, p0, Linfo/flowersoft/theotown/resources/MusicBox;->disabledMusicIds:Ljava/util/Set;

    iget-object v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->files:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/resources/MusicBox$MusicFile;

    iget-object p1, p1, Linfo/flowersoft/theotown/resources/MusicBox$MusicFile;->id:Ljava/lang/String;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    .line 205
    :cond_12
    iget-object p2, p0, Linfo/flowersoft/theotown/resources/MusicBox;->disabledMusicIds:Ljava/util/Set;

    iget-object v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->files:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/resources/MusicBox$MusicFile;

    iget-object p1, p1, Linfo/flowersoft/theotown/resources/MusicBox$MusicFile;->id:Ljava/lang/String;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCurrentType(ILinfo/flowersoft/theotown/resources/MusicBox$Type;)V
    .registers 5

    .line 229
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/resources/MusicBox;->getDefaultType(I)Linfo/flowersoft/theotown/resources/MusicBox$Type;

    move-result-object v0

    if-ne p2, v0, :cond_16

    .line 231
    iget-object p2, p0, Linfo/flowersoft/theotown/resources/MusicBox;->musicTypesById:Ljava/util/Map;

    iget-object v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->files:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/resources/MusicBox$MusicFile;

    iget-object p1, p1, Linfo/flowersoft/theotown/resources/MusicBox$MusicFile;->id:Ljava/lang/String;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 235
    :cond_16
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->musicTypesById:Ljava/util/Map;

    iget-object v1, p0, Linfo/flowersoft/theotown/resources/MusicBox;->files:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/resources/MusicBox$MusicFile;

    iget-object p1, p1, Linfo/flowersoft/theotown/resources/MusicBox$MusicFile;->id:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public size()I
    .registers 2

    .line 189
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->files:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized stopTape()V
    .registers 2

    monitor-enter p0

    .line 272
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    if-eqz v0, :cond_13

    .line 273
    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->stop()V

    .line 274
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->dispose()V

    const/4 v0, 0x0

    .line 275
    iput-object v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->currentMusic:Lcom/badlogic/gdx/audio/Music;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_11

    goto :goto_13

    :catchall_11
    move-exception v0

    goto :goto_15

    .line 277
    :cond_13
    :goto_13
    monitor-exit p0

    return-void

    :goto_15
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_11

    throw v0
.end method

.method public declared-synchronized update()V
    .registers 4

    monitor-enter p0

    .line 248
    :try_start_1
    iget-boolean v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->paused:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1a

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 250
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/MusicBox;->getVolume()F

    move-result v0

    .line 251
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/MusicBox;->isPlaying()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1c

    cmpl-float v1, v0, v2

    if-lez v1, :cond_1c

    .line 252
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/MusicBox;->changeMusic()V

    goto :goto_3f

    :catchall_1a
    move-exception v0

    goto :goto_41

    .line 253
    :cond_1c
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/MusicBox;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_34

    cmpl-float v1, v0, v2

    if-nez v1, :cond_34

    .line 254
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->stop()V

    .line 255
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->dispose()V

    const/4 v0, 0x0

    .line 256
    iput-object v0, p0, Linfo/flowersoft/theotown/resources/MusicBox;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    goto :goto_3f

    .line 257
    :cond_34
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/MusicBox;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 258
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/MusicBox;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V
    :try_end_3f
    .catchall {:try_start_7 .. :try_end_3f} :catchall_1a

    .line 260
    :cond_3f
    :goto_3f
    monitor-exit p0

    return-void

    :goto_41
    :try_start_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_1a

    throw v0
.end method

###### Class info.flowersoft.theotown.resources.MusicBox.AnonymousClass1 (info.flowersoft.theotown.resources.MusicBox$1)
.class public Linfo/flowersoft/theotown/resources/MusicBox$1;
.super Ljava/lang/Object;
.source "MusicBox.java"

# interfaces
.implements Lcom/badlogic/gdx/LifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/resources/MusicBox;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 377
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

    .line 380
    invoke-static {}, Linfo/flowersoft/theotown/resources/MusicBox;->access$000()Linfo/flowersoft/theotown/resources/MusicBox;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/MusicBox;->onPause()V

    return-void
.end method

.method public resume()V
    .registers 2

    .line 385
    invoke-static {}, Linfo/flowersoft/theotown/resources/MusicBox;->access$000()Linfo/flowersoft/theotown/resources/MusicBox;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/MusicBox;->onResume()V

    return-void
.end method

###### Class info.flowersoft.theotown.resources.MusicBox.MusicFile (info.flowersoft.theotown.resources.MusicBox$MusicFile)
.class public Linfo/flowersoft/theotown/resources/MusicBox$MusicFile;
.super Ljava/lang/Object;
.source "MusicBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/resources/MusicBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MusicFile"
.end annotation


# instance fields
.field public final defaultType:Linfo/flowersoft/theotown/resources/MusicBox$Type;

.field public final displayName:Ljava/lang/String;

.field public final file:Lcom/badlogic/gdx/files/FileHandle;

.field public final id:Ljava/lang/String;

.field public lastPlayedMS:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/resources/MusicBox$Type;Lcom/badlogic/gdx/files/FileHandle;)V
    .registers 7

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 41
    iput-wide v0, p0, Linfo/flowersoft/theotown/resources/MusicBox$MusicFile;->lastPlayedMS:J

    .line 44
    iput-object p1, p0, Linfo/flowersoft/theotown/resources/MusicBox$MusicFile;->id:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Linfo/flowersoft/theotown/resources/MusicBox$MusicFile;->displayName:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Linfo/flowersoft/theotown/resources/MusicBox$MusicFile;->defaultType:Linfo/flowersoft/theotown/resources/MusicBox$Type;

    .line 47
    iput-object p4, p0, Linfo/flowersoft/theotown/resources/MusicBox$MusicFile;->file:Lcom/badlogic/gdx/files/FileHandle;

    return-void
.end method

###### Class info.flowersoft.theotown.resources.MusicBox.Type (info.flowersoft.theotown.resources.MusicBox$Type)
.class public final enum Linfo/flowersoft/theotown/resources/MusicBox$Type;
.super Ljava/lang/Enum;
.source "MusicBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/resources/MusicBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Linfo/flowersoft/theotown/resources/MusicBox$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Linfo/flowersoft/theotown/resources/MusicBox$Type;

.field public static final enum ACTION:Linfo/flowersoft/theotown/resources/MusicBox$Type;

.field public static final enum GAME:Linfo/flowersoft/theotown/resources/MusicBox$Type;


# instance fields
.field public final legacyIndex:I


# direct methods
.method public static synthetic $values()[Linfo/flowersoft/theotown/resources/MusicBox$Type;
    .registers 2

    .line 51
    sget-object v0, Linfo/flowersoft/theotown/resources/MusicBox$Type;->GAME:Linfo/flowersoft/theotown/resources/MusicBox$Type;

    sget-object v1, Linfo/flowersoft/theotown/resources/MusicBox$Type;->ACTION:Linfo/flowersoft/theotown/resources/MusicBox$Type;

    filled-new-array {v0, v1}, [Linfo/flowersoft/theotown/resources/MusicBox$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 52
    new-instance v0, Linfo/flowersoft/theotown/resources/MusicBox$Type;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "GAME"

    invoke-direct {v0, v3, v1, v2}, Linfo/flowersoft/theotown/resources/MusicBox$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Linfo/flowersoft/theotown/resources/MusicBox$Type;->GAME:Linfo/flowersoft/theotown/resources/MusicBox$Type;

    .line 53
    new-instance v0, Linfo/flowersoft/theotown/resources/MusicBox$Type;

    const/4 v1, 0x1

    const/4 v2, 0x3

    const-string v3, "ACTION"

    invoke-direct {v0, v3, v1, v2}, Linfo/flowersoft/theotown/resources/MusicBox$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Linfo/flowersoft/theotown/resources/MusicBox$Type;->ACTION:Linfo/flowersoft/theotown/resources/MusicBox$Type;

    .line 51
    invoke-static {}, Linfo/flowersoft/theotown/resources/MusicBox$Type;->$values()[Linfo/flowersoft/theotown/resources/MusicBox$Type;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/resources/MusicBox$Type;->$VALUES:[Linfo/flowersoft/theotown/resources/MusicBox$Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    iput p3, p0, Linfo/flowersoft/theotown/resources/MusicBox$Type;->legacyIndex:I

    return-void
.end method

.method public static resolveLegacy(I)Linfo/flowersoft/theotown/resources/MusicBox$Type;
    .registers 7

    const/4 v0, 0x0

    if-gez p0, :cond_4

    return-object v0

    .line 69
    :cond_4
    invoke-static {}, Linfo/flowersoft/theotown/resources/MusicBox$Type;->values()[Linfo/flowersoft/theotown/resources/MusicBox$Type;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_16

    aget-object v4, v1, v3

    .line 70
    iget v5, v4, Linfo/flowersoft/theotown/resources/MusicBox$Type;->legacyIndex:I

    if-ne v5, p0, :cond_13

    return-object v4

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_16
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Linfo/flowersoft/theotown/resources/MusicBox$Type;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 51
    const-class v0, Linfo/flowersoft/theotown/resources/MusicBox$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/resources/MusicBox$Type;

    return-object p0
.end method

.method public static values()[Linfo/flowersoft/theotown/resources/MusicBox$Type;
    .registers 1

    .line 51
    sget-object v0, Linfo/flowersoft/theotown/resources/MusicBox$Type;->$VALUES:[Linfo/flowersoft/theotown/resources/MusicBox$Type;

    invoke-virtual {v0}, [Linfo/flowersoft/theotown/resources/MusicBox$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linfo/flowersoft/theotown/resources/MusicBox$Type;

    return-object v0
.end method

###### Class info.flowersoft.theotown.resources.MusicBox$$ExternalSyntheticLambda0 (info.flowersoft.theotown.resources.MusicBox$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/resources/MusicBox$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/badlogic/gdx/audio/Music$OnCompletionListener;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/resources/MusicBox;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/resources/MusicBox;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/resources/MusicBox$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/resources/MusicBox;

    return-void
.end method


# virtual methods
.method public final onCompletion(Lcom/badlogic/gdx/audio/Music;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/MusicBox$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/resources/MusicBox;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/resources/MusicBox;->$r8$lambda$ig6xhY0wUtqMDFquPti6h4QK4PQ(Linfo/flowersoft/theotown/resources/MusicBox;Lcom/badlogic/gdx/audio/Music;)V

    return-void
.end method
