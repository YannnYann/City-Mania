###### Class info.flowersoft.theotown.store.LightStoreQuery (info.flowersoft.theotown.store.LightStoreQuery)
.class public Linfo/flowersoft/theotown/store/LightStoreQuery;
.super Ljava/lang/Object;
.source "LightStoreQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/store/LightStoreQuery$CachedTexture;
    }
.end annotation


# instance fields
.field public final cachedTextures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/store/LightStoreQuery$CachedTexture;",
            ">;"
        }
    .end annotation
.end field

.field public final context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final engine:Lio/blueflower/stapel2d/drawing/Engine;

.field public final mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

.field public final ofs:Linfo/flowersoft/theotown/util/OnlineFileStore;

.field public final pixmapLoader:Linfo/flowersoft/theotown/resources/PostponedPixmapLoader;

.field public final textureMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Linfo/flowersoft/theotown/store/LightStoreQuery$CachedTexture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/store/LightStoreQuery;->cachedTextures:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/store/LightStoreQuery;->textureMap:Ljava/util/Map;

    .line 37
    new-instance v0, Linfo/flowersoft/theotown/resources/PostponedPixmapLoader;

    invoke-direct {v0}, Linfo/flowersoft/theotown/resources/PostponedPixmapLoader;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/store/LightStoreQuery;->pixmapLoader:Linfo/flowersoft/theotown/resources/PostponedPixmapLoader;

    .line 43
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getEngine()Lio/blueflower/stapel2d/drawing/Engine;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/store/LightStoreQuery;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 44
    iput-object p1, p0, Linfo/flowersoft/theotown/store/LightStoreQuery;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 46
    new-instance p1, Linfo/flowersoft/theotown/util/OnlineFileStore;

    invoke-direct {p1}, Linfo/flowersoft/theotown/util/OnlineFileStore;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/store/LightStoreQuery;->ofs:Linfo/flowersoft/theotown/util/OnlineFileStore;

    .line 47
    invoke-static {}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getInstance()Linfo/flowersoft/theotown/store/ManagedPluginsController;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/store/LightStoreQuery;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/store/LightStoreQuery;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;
    .registers 1

    .line 29
    iget-object p0, p0, Linfo/flowersoft/theotown/store/LightStoreQuery;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized clearTextureCache()V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 104
    :goto_2
    :try_start_2
    iget-object v1, p0, Linfo/flowersoft/theotown/store/LightStoreQuery;->cachedTextures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 105
    iget-object v1, p0, Linfo/flowersoft/theotown/store/LightStoreQuery;->cachedTextures:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/store/LightStoreQuery$CachedTexture;

    .line 106
    iget-object v2, p0, Linfo/flowersoft/theotown/store/LightStoreQuery;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v1, v1, Linfo/flowersoft/theotown/store/LightStoreQuery$CachedTexture;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    invoke-virtual {v2, v1}, Lio/blueflower/stapel2d/drawing/Engine;->releaseTexture(Lio/blueflower/stapel2d/drawing/Texture;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catchall_1c
    move-exception v0

    goto :goto_2a

    .line 108
    :cond_1e
    iget-object v0, p0, Linfo/flowersoft/theotown/store/LightStoreQuery;->cachedTextures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 109
    iget-object v0, p0, Linfo/flowersoft/theotown/store/LightStoreQuery;->textureMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_28
    .catchall {:try_start_2 .. :try_end_28} :catchall_1c

    .line 110
    monitor-exit p0

    return-void

    :goto_2a
    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_1c

    throw v0
.end method

.method public fetch(Linfo/flowersoft/theotown/store/StoreMode;IILio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/store/StoreMode;",
            "II",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/store/StorePluginWrapper;",
            ">;>;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Linfo/flowersoft/theotown/store/LightStoreQuery;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    new-instance v1, Linfo/flowersoft/theotown/store/LightStoreQuery$1;

    invoke-direct {v1, p0, p4, p5}, Linfo/flowersoft/theotown/store/LightStoreQuery$1;-><init>(Linfo/flowersoft/theotown/store/LightStoreQuery;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;)V

    iget-object p4, p0, Linfo/flowersoft/theotown/store/LightStoreQuery;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    .line 80
    invoke-virtual {p4}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getAcquiredPluginIds()Lio/blueflower/stapel2d/util/IntList;

    move-result-object v3

    const-string v4, ""

    const/4 v5, 0x1

    move-object v2, p1

    move v6, p2

    move v7, p3

    .line 54
    invoke-virtual/range {v0 .. v7}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->fetchStore(Linfo/flowersoft/theotown/backend/ResponseHandler;Linfo/flowersoft/theotown/store/StoreMode;Lio/blueflower/stapel2d/util/IntList;Ljava/lang/String;ZII)V

    return-void
.end method

.method public declared-synchronized getImage(Linfo/flowersoft/theotown/store/StorePlugin;)Lio/blueflower/stapel2d/drawing/Image;
    .registers 15

    monitor-enter p0

    .line 113
    :try_start_1
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/StorePlugin;->getImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/StorePlugin;->getImgThumb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_33
    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ge v2, v4, :cond_136

    .line 116
    aget-object v4, v0, v2

    .line 117
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/StorePlugin;->getPluginId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 121
    iget-object v6, p0, Linfo/flowersoft/theotown/store/LightStoreQuery;->textureMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/store/LightStoreQuery$CachedTexture;

    if-eqz v6, :cond_6e

    .line 123
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    iput-wide v0, v6, Linfo/flowersoft/theotown/store/LightStoreQuery$CachedTexture;->lastUsed:J

    .line 124
    iget-object p1, v6, Linfo/flowersoft/theotown/store/LightStoreQuery$CachedTexture;->imgage:Lio/blueflower/stapel2d/drawing/Image;
    :try_end_68
    .catchall {:try_start_1 .. :try_end_68} :catchall_6a

    monitor-exit p0

    return-object p1

    :catchall_6a
    move-exception v0

    move-object p1, v0

    goto/16 :goto_138

    .line 127
    :cond_6e
    :try_start_6e
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_83

    .line 128
    iget-object v6, p0, Linfo/flowersoft/theotown/store/LightStoreQuery;->ofs:Linfo/flowersoft/theotown/util/OnlineFileStore;

    iget-object v8, p0, Linfo/flowersoft/theotown/store/LightStoreQuery;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    invoke-virtual {v8, v4}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getFileUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4, v2}, Linfo/flowersoft/theotown/util/OnlineFileStore;->request(Ljava/lang/String;I)[B

    move-result-object v4

    move v6, v1

    goto :goto_d2

    .line 131
    :cond_83
    invoke-static {}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getInstance()Linfo/flowersoft/theotown/store/ManagedPluginsController;

    move-result-object v4

    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/StorePlugin;->getPluginId()I

    move-result v6

    invoke-virtual {v4, v6}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getManagedPluginFile(I)Linfo/flowersoft/theotown/store/ManagedPluginFile;

    move-result-object v4

    if-eqz v4, :cond_d0

    .line 133
    sget-object v6, Linfo/flowersoft/theotown/resources/ManagedCache;->INSTANCE:Linfo/flowersoft/theotown/resources/ManagedCache;

    const-string v8, "ct"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v4}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getPluginId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    invoke-virtual {v4}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getRevisionId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "+"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 133
    invoke-virtual {v6, v8, v9, v10}, Linfo/flowersoft/theotown/resources/ManagedCache;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v6

    if-nez v6, :cond_ce

    .line 139
    invoke-virtual {v4}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getImageData()[B

    move-result-object v4

    :goto_cc
    move v6, v7

    goto :goto_d2

    :cond_ce
    move-object v4, v6

    goto :goto_cc

    :cond_d0
    move-object v4, v3

    goto :goto_cc

    :goto_d2
    if-eqz v4, :cond_132

    .line 145
    iget-object v8, p0, Linfo/flowersoft/theotown/store/LightStoreQuery;->pixmapLoader:Linfo/flowersoft/theotown/resources/PostponedPixmapLoader;

    xor-int/2addr v6, v7

    invoke-virtual {v8, v5, v4, v6}, Linfo/flowersoft/theotown/resources/PostponedPixmapLoader;->loadPixmap(Ljava/lang/String;[BZ)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v4

    if-eqz v4, :cond_132

    .line 147
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/LightStoreQuery;->tidyUpImageCache()V

    .line 149
    new-instance p1, Linfo/flowersoft/theotown/store/LightStoreQuery$CachedTexture;

    invoke-direct {p1, v3}, Linfo/flowersoft/theotown/store/LightStoreQuery$CachedTexture;-><init>(Linfo/flowersoft/theotown/store/LightStoreQuery$1;)V

    .line 150
    new-instance v0, Lio/blueflower/stapel2d/drawing/Texture;

    new-instance v2, Lio/blueflower/stapel2d/drawing/StaticBitmapTextureSource;

    invoke-direct {v2, v4, v1}, Lio/blueflower/stapel2d/drawing/StaticBitmapTextureSource;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Z)V

    invoke-direct {v0, v2}, Lio/blueflower/stapel2d/drawing/Texture;-><init>(Lio/blueflower/stapel2d/drawing/TextureSource;)V

    iput-object v0, p1, Linfo/flowersoft/theotown/store/LightStoreQuery$CachedTexture;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    const/16 v1, 0x2601

    .line 151
    invoke-virtual {v0, v1, v1}, Lio/blueflower/stapel2d/drawing/Texture;->setFiltering(II)V

    .line 152
    new-instance v6, Lio/blueflower/stapel2d/drawing/Image;

    iget-object v0, p1, Linfo/flowersoft/theotown/store/LightStoreQuery$CachedTexture;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    invoke-direct {v6, v0}, Lio/blueflower/stapel2d/drawing/Image;-><init>(Lio/blueflower/stapel2d/drawing/Texture;)V

    iput-object v6, p1, Linfo/flowersoft/theotown/store/LightStoreQuery$CachedTexture;->imgage:Lio/blueflower/stapel2d/drawing/Image;

    .line 155
    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v0

    int-to-float v9, v0

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v0

    int-to-float v10, v0

    .line 156
    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v11, v0

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v12, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 153
    invoke-virtual/range {v6 .. v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    .line 157
    iput-object v5, p1, Linfo/flowersoft/theotown/store/LightStoreQuery$CachedTexture;->name:Ljava/lang/String;

    .line 158
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    iput-wide v0, p1, Linfo/flowersoft/theotown/store/LightStoreQuery$CachedTexture;->lastUsed:J

    .line 159
    iget-object v0, p0, Linfo/flowersoft/theotown/store/LightStoreQuery;->cachedTextures:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, p0, Linfo/flowersoft/theotown/store/LightStoreQuery;->textureMap:Ljava/util/Map;

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object p1, p1, Linfo/flowersoft/theotown/store/LightStoreQuery$CachedTexture;->imgage:Lio/blueflower/stapel2d/drawing/Image;
    :try_end_130
    .catchall {:try_start_6e .. :try_end_130} :catchall_6a

    monitor-exit p0

    return-object p1

    :cond_132
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_33

    .line 165
    :cond_136
    monitor-exit p0

    return-object v3

    :goto_138
    :try_start_138
    monitor-exit p0
    :try_end_139
    .catchall {:try_start_138 .. :try_end_139} :catchall_6a

    throw p1
.end method

.method public declared-synchronized tidyUpImageCache()V
    .registers 8

    monitor-enter p0

    .line 169
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/store/LightStoreQuery;->cachedTextures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_41

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 171
    :goto_d
    iget-object v2, p0, Linfo/flowersoft/theotown/store/LightStoreQuery;->cachedTextures:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 172
    iget-object v2, p0, Linfo/flowersoft/theotown/store/LightStoreQuery;->cachedTextures:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/store/LightStoreQuery$CachedTexture;

    if-eqz v0, :cond_2a

    .line 173
    iget-wide v3, v0, Linfo/flowersoft/theotown/store/LightStoreQuery$CachedTexture;->lastUsed:J

    iget-wide v5, v2, Linfo/flowersoft/theotown/store/LightStoreQuery$CachedTexture;->lastUsed:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_2b

    goto :goto_2a

    :catchall_28
    move-exception v0

    goto :goto_43

    :cond_2a
    :goto_2a
    move-object v0, v2

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 177
    :cond_2e
    iget-object v1, p0, Linfo/flowersoft/theotown/store/LightStoreQuery;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v2, v0, Linfo/flowersoft/theotown/store/LightStoreQuery$CachedTexture;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->releaseTexture(Lio/blueflower/stapel2d/drawing/Texture;)V

    .line 178
    iget-object v1, p0, Linfo/flowersoft/theotown/store/LightStoreQuery;->cachedTextures:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 179
    iget-object v1, p0, Linfo/flowersoft/theotown/store/LightStoreQuery;->textureMap:Ljava/util/Map;

    iget-object v0, v0, Linfo/flowersoft/theotown/store/LightStoreQuery$CachedTexture;->name:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_28

    .line 181
    :cond_41
    monitor-exit p0

    return-void

    :goto_43
    :try_start_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_28

    throw v0
.end method

.method public wrap(ILinfo/flowersoft/theotown/store/StorePlugin;Lio/blueflower/stapel2d/util/Setter;)Linfo/flowersoft/theotown/store/StorePluginWrapper;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Linfo/flowersoft/theotown/store/StorePlugin;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Linfo/flowersoft/theotown/store/StorePlugin;",
            ">;)",
            "Linfo/flowersoft/theotown/store/StorePluginWrapper;"
        }
    .end annotation

    .line 84
    new-instance v0, Linfo/flowersoft/theotown/store/LightStoreQuery$2;

    iget-object v4, p0, Linfo/flowersoft/theotown/store/LightStoreQuery;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-object v6, p2

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/store/LightStoreQuery$2;-><init>(Linfo/flowersoft/theotown/store/LightStoreQuery;ILinfo/flowersoft/theotown/store/StorePlugin;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;Linfo/flowersoft/theotown/store/StorePlugin;)V

    return-object v0
.end method

###### Class info.flowersoft.theotown.store.LightStoreQuery.AnonymousClass1 (info.flowersoft.theotown.store.LightStoreQuery$1)
.class public Linfo/flowersoft/theotown/store/LightStoreQuery$1;
.super Ljava/lang/Object;
.source "LightStoreQuery.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/store/LightStoreQuery;->fetch(Linfo/flowersoft/theotown/store/StoreMode;IILio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Linfo/flowersoft/theotown/backend/ResponseHandler<",
        "Linfo/flowersoft/theotown/util/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/store/LightStoreQuery;

.field public final synthetic val$onError:Lio/blueflower/stapel2d/util/Setter;

.field public final synthetic val$onResult:Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/store/LightStoreQuery;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Linfo/flowersoft/theotown/store/LightStoreQuery$1;->this$0:Linfo/flowersoft/theotown/store/LightStoreQuery;

    iput-object p2, p0, Linfo/flowersoft/theotown/store/LightStoreQuery$1;->val$onResult:Lio/blueflower/stapel2d/util/Setter;

    iput-object p3, p0, Linfo/flowersoft/theotown/store/LightStoreQuery$1;->val$onError:Lio/blueflower/stapel2d/util/Setter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Exception;)V
    .registers 3

    .line 78
    iget-object v0, p0, Linfo/flowersoft/theotown/store/LightStoreQuery$1;->val$onError:Lio/blueflower/stapel2d/util/Setter;

    invoke-interface {v0, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public handle(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 10

    .line 58
    const-string v0, "plugins"

    :try_start_2
    new-instance v1, Linfo/flowersoft/theotown/store/LightStoreQuery$1$1;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/store/LightStoreQuery$1$1;-><init>(Linfo/flowersoft/theotown/store/LightStoreQuery$1;)V

    .line 63
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 64
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object p1

    const/4 v3, 0x0

    .line 65
    :goto_11
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_36

    .line 66
    invoke-virtual {p1, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->getJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v4

    .line 67
    iget-object v5, p0, Linfo/flowersoft/theotown/store/LightStoreQuery$1;->this$0:Linfo/flowersoft/theotown/store/LightStoreQuery;

    new-instance v6, Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-static {v5}, Linfo/flowersoft/theotown/store/LightStoreQuery;->access$000(Linfo/flowersoft/theotown/store/LightStoreQuery;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v7

    invoke-virtual {v7}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v7

    invoke-direct {v6, v4, v7}, Linfo/flowersoft/theotown/store/StorePlugin;-><init>(Linfo/flowersoft/theotown/util/json/JSONObject;Lio/blueflower/stapel2d/gamestack/Translator;)V

    invoke-virtual {v5, v3, v6, v1}, Linfo/flowersoft/theotown/store/LightStoreQuery;->wrap(ILinfo/flowersoft/theotown/store/StorePlugin;Lio/blueflower/stapel2d/util/Setter;)Linfo/flowersoft/theotown/store/StorePluginWrapper;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :catch_34
    move-exception p1

    goto :goto_56

    .line 69
    :cond_36
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Linfo/flowersoft/theotown/store/LightStoreQuery$1;->val$onResult:Lio/blueflower/stapel2d/util/Setter;

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_55} :catch_34

    return-void

    .line 72
    :goto_56
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/store/LightStoreQuery$1;->error(Ljava/lang/Exception;)V

    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 54
    check-cast p1, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/store/LightStoreQuery$1;->handle(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.LightStoreQuery.AnonymousClass1.C10891 (info.flowersoft.theotown.store.LightStoreQuery$1$1)
.class public Linfo/flowersoft/theotown/store/LightStoreQuery$1$1;
.super Ljava/lang/Object;
.source "LightStoreQuery.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/store/LightStoreQuery$1;->handle(Linfo/flowersoft/theotown/util/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Setter<",
        "Linfo/flowersoft/theotown/store/StorePlugin;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/store/LightStoreQuery$1;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/store/LightStoreQuery$1;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 58
    iput-object p1, p0, Linfo/flowersoft/theotown/store/LightStoreQuery$1$1;->this$1:Linfo/flowersoft/theotown/store/LightStoreQuery$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Linfo/flowersoft/theotown/store/StorePlugin;)V
    .registers 2

    .line 0
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 58
    check-cast p1, Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/store/LightStoreQuery$1$1;->set(Linfo/flowersoft/theotown/store/StorePlugin;)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.LightStoreQuery.AnonymousClass2 (info.flowersoft.theotown.store.LightStoreQuery$2)
.class public Linfo/flowersoft/theotown/store/LightStoreQuery$2;
.super Linfo/flowersoft/theotown/store/StorePluginWrapper;
.source "LightStoreQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/store/LightStoreQuery;->wrap(ILinfo/flowersoft/theotown/store/StorePlugin;Lio/blueflower/stapel2d/util/Setter;)Linfo/flowersoft/theotown/store/StorePluginWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/store/LightStoreQuery;

.field public final synthetic val$authorVisitor:Lio/blueflower/stapel2d/util/Setter;

.field public final synthetic val$storePlugin:Linfo/flowersoft/theotown/store/StorePlugin;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/store/LightStoreQuery;ILinfo/flowersoft/theotown/store/StorePlugin;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;Linfo/flowersoft/theotown/store/StorePlugin;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 84
    iput-object p1, p0, Linfo/flowersoft/theotown/store/LightStoreQuery$2;->this$0:Linfo/flowersoft/theotown/store/LightStoreQuery;

    iput-object p5, p0, Linfo/flowersoft/theotown/store/LightStoreQuery$2;->val$authorVisitor:Lio/blueflower/stapel2d/util/Setter;

    iput-object p6, p0, Linfo/flowersoft/theotown/store/LightStoreQuery$2;->val$storePlugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-direct {p0, p2, p3, p4}, Linfo/flowersoft/theotown/store/StorePluginWrapper;-><init>(ILinfo/flowersoft/theotown/store/StorePlugin;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    return-void
.end method


# virtual methods
.method public getFrame()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getImage()Lio/blueflower/stapel2d/drawing/Image;
    .registers 3

    .line 92
    iget-object v0, p0, Linfo/flowersoft/theotown/store/LightStoreQuery$2;->this$0:Linfo/flowersoft/theotown/store/LightStoreQuery;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/LightStoreQuery$2;->val$storePlugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/store/LightStoreQuery;->getImage(Linfo/flowersoft/theotown/store/StorePlugin;)Lio/blueflower/stapel2d/drawing/Image;

    move-result-object v0

    return-object v0
.end method

.method public visitAuthor()V
    .registers 3

    .line 87
    iget-object v0, p0, Linfo/flowersoft/theotown/store/LightStoreQuery$2;->val$authorVisitor:Lio/blueflower/stapel2d/util/Setter;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/LightStoreQuery$2;->val$storePlugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.LightStoreQuery.CachedTexture (info.flowersoft.theotown.store.LightStoreQuery$CachedTexture)
.class public Linfo/flowersoft/theotown/store/LightStoreQuery$CachedTexture;
.super Ljava/lang/Object;
.source "LightStoreQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/store/LightStoreQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CachedTexture"
.end annotation


# instance fields
.field public imgage:Lio/blueflower/stapel2d/drawing/Image;

.field public lastUsed:J

.field public name:Ljava/lang/String;

.field public texture:Lio/blueflower/stapel2d/drawing/Texture;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/store/LightStoreQuery$1;)V
    .registers 2

    .line 184
    invoke-direct {p0}, Linfo/flowersoft/theotown/store/LightStoreQuery$CachedTexture;-><init>()V

    return-void
.end method
