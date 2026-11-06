###### Class info.flowersoft.theotown.resources.PostponedPixmapLoader (info.flowersoft.theotown.resources.PostponedPixmapLoader)
.class public Linfo/flowersoft/theotown/resources/PostponedPixmapLoader;
.super Ljava/lang/Object;
.source "PostponedPixmapLoader.java"


# instance fields
.field public final executor:Ljava/util/concurrent/Executor;

.field public final loadedPixmaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/graphics/Pixmap;",
            ">;"
        }
    .end annotation
.end field

.field public final loadingPixmapKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$HsySAeArasV3BkhZT4ygU6OkG1M(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 2

    .line 17
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$yB6nc06VCoRC3R3PLkI-E8smq6U(Linfo/flowersoft/theotown/resources/PostponedPixmapLoader;[BLjava/lang/String;)V
    .registers 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 49
    :try_start_4
    new-instance v1, Lcom/badlogic/gdx/graphics/Pixmap;

    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    array-length v3, p1

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-direct {v2, p1, v5, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;-><init>([BIII)V

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_11} :catch_23
    .catchall {:try_start_4 .. :try_end_11} :catchall_21

    .line 53
    monitor-enter p0

    .line 54
    :try_start_12
    iget-object p1, p0, Linfo/flowersoft/theotown/resources/PostponedPixmapLoader;->loadingPixmapKeys:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 55
    iget-object p1, p0, Linfo/flowersoft/theotown/resources/PostponedPixmapLoader;->loadedPixmaps:Ljava/util/Map;

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_1e

    throw p1

    :catchall_21
    move-exception p1

    goto :goto_37

    :catch_23
    move-exception p1

    .line 51
    :try_start_24
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_21

    .line 53
    monitor-enter p0

    .line 54
    :try_start_28
    iget-object p1, p0, Linfo/flowersoft/theotown/resources/PostponedPixmapLoader;->loadingPixmapKeys:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 55
    iget-object p1, p0, Linfo/flowersoft/theotown/resources/PostponedPixmapLoader;->loadedPixmaps:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    monitor-exit p0

    return-void

    :catchall_34
    move-exception p1

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_28 .. :try_end_36} :catchall_34

    throw p1

    .line 53
    :goto_37
    monitor-enter p0

    .line 54
    :try_start_38
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/PostponedPixmapLoader;->loadingPixmapKeys:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 55
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/PostponedPixmapLoader;->loadedPixmaps:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_38 .. :try_end_43} :catchall_44

    .line 57
    throw p1

    :catchall_44
    move-exception p1

    .line 56
    :try_start_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw p1
.end method

.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Linfo/flowersoft/theotown/resources/PostponedPixmapLoader$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Linfo/flowersoft/theotown/resources/PostponedPixmapLoader$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/PostponedPixmapLoader;->executor:Ljava/util/concurrent/Executor;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/PostponedPixmapLoader;->loadedPixmaps:Ljava/util/Map;

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/PostponedPixmapLoader;->loadingPixmapKeys:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public declared-synchronized loadPixmap(Ljava/lang/String;[BZ)Lcom/badlogic/gdx/graphics/Pixmap;
    .registers 9

    monitor-enter p0

    .line 27
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/PostponedPixmapLoader;->loadedPixmaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Pixmap;

    if-eqz v0, :cond_15

    .line 28
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->isDisposed()Z

    move-result v1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_13

    if-nez v1, :cond_15

    .line 29
    monitor-exit p0

    return-object v0

    :catchall_13
    move-exception p1

    goto :goto_7b

    .line 30
    :cond_15
    :try_start_15
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/PostponedPixmapLoader;->loadingPixmapKeys:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    if-eqz p2, :cond_78

    array-length v1, p2
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_13

    if-lez v1, :cond_78

    if-nez p3, :cond_69

    .line 33
    :try_start_24
    new-instance p3, Lcom/badlogic/gdx/graphics/Pixmap;

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    array-length v2, p2

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-direct {v1, p2, v4, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;-><init>([BIII)V

    invoke-direct {p3, v1}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_31} :catch_44
    .catchall {:try_start_24 .. :try_end_31} :catchall_42

    .line 37
    :try_start_31
    monitor-enter p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_13

    .line 38
    :try_start_32
    iget-object p2, p0, Linfo/flowersoft/theotown/resources/PostponedPixmapLoader;->loadingPixmapKeys:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 39
    iget-object p2, p0, Linfo/flowersoft/theotown/resources/PostponedPixmapLoader;->loadedPixmaps:Ljava/util/Map;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    monitor-exit p0

    move-object v0, p3

    goto :goto_54

    :catchall_3f
    move-exception p1

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_32 .. :try_end_41} :catchall_3f

    :try_start_41
    throw p1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_13

    :catchall_42
    move-exception p2

    goto :goto_59

    :catch_44
    move-exception p2

    .line 35
    :try_start_45
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_42

    .line 37
    :try_start_48
    monitor-enter p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_13

    .line 38
    :try_start_49
    iget-object p2, p0, Linfo/flowersoft/theotown/resources/PostponedPixmapLoader;->loadingPixmapKeys:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 39
    iget-object p2, p0, Linfo/flowersoft/theotown/resources/PostponedPixmapLoader;->loadedPixmaps:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_49 .. :try_end_54} :catchall_56

    .line 42
    :goto_54
    monitor-exit p0

    return-object v0

    :catchall_56
    move-exception p1

    .line 40
    :try_start_57
    monitor-exit p0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    :try_start_58
    throw p1

    .line 37
    :goto_59
    monitor-enter p0
    :try_end_5a
    .catchall {:try_start_58 .. :try_end_5a} :catchall_13

    .line 38
    :try_start_5a
    iget-object p3, p0, Linfo/flowersoft/theotown/resources/PostponedPixmapLoader;->loadingPixmapKeys:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 39
    iget-object p3, p0, Linfo/flowersoft/theotown/resources/PostponedPixmapLoader;->loadedPixmaps:Ljava/util/Map;

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    monitor-exit p0
    :try_end_65
    .catchall {:try_start_5a .. :try_end_65} :catchall_66

    .line 41
    :try_start_65
    throw p2
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_13

    :catchall_66
    move-exception p1

    .line 40
    :try_start_67
    monitor-exit p0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    :try_start_68
    throw p1

    .line 44
    :cond_69
    iget-object p3, p0, Linfo/flowersoft/theotown/resources/PostponedPixmapLoader;->loadingPixmapKeys:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object p3, p0, Linfo/flowersoft/theotown/resources/PostponedPixmapLoader;->executor:Ljava/util/concurrent/Executor;

    new-instance v0, Linfo/flowersoft/theotown/resources/PostponedPixmapLoader$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2, p1}, Linfo/flowersoft/theotown/resources/PostponedPixmapLoader$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/resources/PostponedPixmapLoader;[BLjava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_78
    .catchall {:try_start_68 .. :try_end_78} :catchall_13

    .line 61
    :cond_78
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_7b
    :try_start_7b
    monitor-exit p0
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_13

    throw p1
.end method

###### Class info.flowersoft.theotown.resources.PostponedPixmapLoader$$ExternalSyntheticLambda0 (info.flowersoft.theotown.resources.PostponedPixmapLoader$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/resources/PostponedPixmapLoader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 2

    .line 0
    invoke-static {p1}, Linfo/flowersoft/theotown/resources/PostponedPixmapLoader;->$r8$lambda$HsySAeArasV3BkhZT4ygU6OkG1M(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.resources.PostponedPixmapLoader$$ExternalSyntheticLambda1 (info.flowersoft.theotown.resources.PostponedPixmapLoader$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/resources/PostponedPixmapLoader$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/resources/PostponedPixmapLoader;

.field public final synthetic f$1:[B

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/resources/PostponedPixmapLoader;[BLjava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/resources/PostponedPixmapLoader$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/resources/PostponedPixmapLoader;

    iput-object p2, p0, Linfo/flowersoft/theotown/resources/PostponedPixmapLoader$$ExternalSyntheticLambda1;->f$1:[B

    iput-object p3, p0, Linfo/flowersoft/theotown/resources/PostponedPixmapLoader$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/PostponedPixmapLoader$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/resources/PostponedPixmapLoader;

    iget-object v1, p0, Linfo/flowersoft/theotown/resources/PostponedPixmapLoader$$ExternalSyntheticLambda1;->f$1:[B

    iget-object v2, p0, Linfo/flowersoft/theotown/resources/PostponedPixmapLoader$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/resources/PostponedPixmapLoader;->$r8$lambda$yB6nc06VCoRC3R3PLkI-E8smq6U(Linfo/flowersoft/theotown/resources/PostponedPixmapLoader;[BLjava/lang/String;)V

    return-void
.end method
