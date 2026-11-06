###### Class io.bidmachine.internal.C4223g (io.bidmachine.internal.g)
.class public final Lio/bidmachine/internal/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lio/bidmachine/internal/g;

.field public static final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final c:Lkotlin/Lazy;

.field public static final d:Ljava/lang/Object;

.field public static volatile e:Lio/bidmachine/util/cache/MediaFileCacheManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/bidmachine/internal/g;

    invoke-direct {v0}, Lio/bidmachine/internal/g;-><init>()V

    sput-object v0, Lio/bidmachine/internal/g;->a:Lio/bidmachine/internal/g;

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lio/bidmachine/internal/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    sget-object v0, Lio/bidmachine/internal/g$b;->a:Lio/bidmachine/internal/g$b;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/bidmachine/internal/g;->c:Lkotlin/Lazy;

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/bidmachine/internal/g;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;)Lio/bidmachine/util/cache/MediaFileCacheManager;
    .registers 13

    .line 2
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lio/bidmachine/internal/g;->e:Lio/bidmachine/util/cache/MediaFileCacheManager;

    if-eqz v0, :cond_a

    return-object v0

    .line 7
    :cond_a
    sget-object v1, Lio/bidmachine/internal/g;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 8
    :try_start_d
    sget-object v0, Lio/bidmachine/internal/g;->e:Lio/bidmachine/util/cache/MediaFileCacheManager;
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_4f

    if-eqz v0, :cond_13

    .line 10
    monitor-exit v1

    return-object v0

    .line 12
    :cond_13
    :try_start_13
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "bm/renderer/cache"

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    new-instance v6, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "bm/renderer/temp"

    invoke-direct {v6, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    new-instance v7, Lio/bidmachine/utils/log/UtilsLoggerInstance;

    invoke-direct {v7}, Lio/bidmachine/utils/log/UtilsLoggerInstance;-><init>()V

    .line 15
    sget-object v0, Lio/bidmachine/util/SdkDispatchers;->Companion:Lio/bidmachine/util/SdkDispatchers$Companion;

    invoke-virtual {v0}, Lio/bidmachine/util/SdkDispatchers$Companion;->getDefault()Lio/bidmachine/util/SdkDispatchers;

    move-result-object v8

    .line 16
    new-instance v4, Lio/bidmachine/util/download/DownloadManagerImpl;

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v9, v7

    const/4 v7, 0x0

    move-object v5, p0

    invoke-direct/range {v4 .. v11}, Lio/bidmachine/util/download/DownloadManagerImpl;-><init>(Landroid/content/Context;Ljava/io/File;Lkotlin/jvm/functions/Function3;Lio/bidmachine/util/SdkDispatchers;Lio/bidmachine/util/log/LoggerInstance;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v6, v8

    .line 17
    new-instance v2, Lio/bidmachine/util/cache/MediaFileCacheManager;

    .line 20
    sget-object p0, Lio/bidmachine/internal/g;->a:Lio/bidmachine/internal/g;

    invoke-virtual {p0}, Lio/bidmachine/internal/g;->a()Lio/bidmachine/util/file/StorageSpaceMonitor;

    move-result-object v5

    move-object v7, v9

    .line 21
    invoke-direct/range {v2 .. v7}, Lio/bidmachine/util/cache/MediaFileCacheManager;-><init>(Ljava/io/File;Lio/bidmachine/util/download/DownloadManager;Lio/bidmachine/util/file/StorageSpaceMonitor;Lio/bidmachine/util/SdkDispatchers;Lio/bidmachine/util/log/LoggerInstance;)V

    .line 28
    sput-object v2, Lio/bidmachine/internal/g;->e:Lio/bidmachine/util/cache/MediaFileCacheManager;
    :try_end_4d
    .catchall {:try_start_13 .. :try_end_4d} :catchall_4f

    .line 29
    monitor-exit v1

    return-object v2

    :catchall_4f
    move-exception v0

    move-object p0, v0

    monitor-exit v1

    throw p0
.end method


# virtual methods
.method public final a()Lio/bidmachine/util/file/StorageSpaceMonitor;
    .registers 2

    .line 1
    sget-object v0, Lio/bidmachine/internal/g;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/util/file/StorageSpaceMonitor;

    return-object v0
.end method

.method public final a(Landroid/content/Context;Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {p1}, Lio/bidmachine/internal/g;->a(Landroid/content/Context;)Lio/bidmachine/util/cache/MediaFileCacheManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager;->configure(Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;)V

    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lio/bidmachine/internal/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    .line 4
    :cond_10
    invoke-static {p1}, Lio/bidmachine/internal/g;->a(Landroid/content/Context;)Lio/bidmachine/util/cache/MediaFileCacheManager;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/internal/g;->a()Lio/bidmachine/util/file/StorageSpaceMonitor;

    move-result-object v0

    new-instance v1, Lio/bidmachine/internal/g$a;

    invoke-direct {v1, p1}, Lio/bidmachine/internal/g$a;-><init>(Lio/bidmachine/util/cache/MediaFileCacheManager;)V

    invoke-virtual {v0, v1}, Lio/bidmachine/util/file/StorageSpaceMonitor;->addListener(Lio/bidmachine/util/file/StorageSpaceMonitor$Listener;)V

    .line 10
    invoke-virtual {p0}, Lio/bidmachine/internal/g;->a()Lio/bidmachine/util/file/StorageSpaceMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/util/file/StorageSpaceMonitor;->start()V

    return-void
.end method

.method public final c(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lio/bidmachine/internal/g;->a(Landroid/content/Context;)Lio/bidmachine/util/cache/MediaFileCacheManager;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/util/cache/MediaFileCacheManager;->onSessionStarted()V

    return-void
.end method

###### Class io.bidmachine.internal.C4223g.a (io.bidmachine.internal.g$a)
.class public final Lio/bidmachine/internal/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/util/file/StorageSpaceMonitor$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/internal/g;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/util/cache/MediaFileCacheManager;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/cache/MediaFileCacheManager;)V
    .registers 2

    iput-object p1, p0, Lio/bidmachine/internal/g$a;->a:Lio/bidmachine/util/cache/MediaFileCacheManager;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLowSpace(Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStat;)V
    .registers 3

    const-string v0, "storageSpaceStat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lio/bidmachine/internal/g$a;->a:Lio/bidmachine/util/cache/MediaFileCacheManager;

    invoke-virtual {p1}, Lio/bidmachine/util/cache/MediaFileCacheManager;->onLowDiskSpace()V

    return-void
.end method

###### Class io.bidmachine.internal.C4223g.b (io.bidmachine.internal.g$b)
.class public final Lio/bidmachine/internal/g$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/internal/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/internal/g$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/internal/g$b;

    invoke-direct {v0}, Lio/bidmachine/internal/g$b;-><init>()V

    sput-object v0, Lio/bidmachine/internal/g$b;->a:Lio/bidmachine/internal/g$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/util/file/StorageSpaceMonitor;
    .registers 10

    .line 1
    new-instance v0, Lio/bidmachine/util/file/StorageSpaceMonitor;

    const/16 v7, 0xf

    const/4 v8, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lio/bidmachine/util/file/StorageSpaceMonitor;-><init>(DLio/bidmachine/util/SdkDispatchers;JLio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStatExtractor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/internal/g$b;->a()Lio/bidmachine/util/file/StorageSpaceMonitor;

    move-result-object v0

    return-object v0
.end method
