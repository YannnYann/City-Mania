###### Class io.bidmachine.nativead.AssetLoader (io.bidmachine.nativead.AssetLoader)
.class public final Lio/bidmachine/nativead/AssetLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/nativead/AssetLoader$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/nativead/AssetLoader$Companion;


# instance fields
.field public final adRequestParameters:Lio/bidmachine/nativead/NativeAdRequestParameters;

.field public final assetsHolder:Ljava/lang/Object;

.field public final callback:Lio/bidmachine/AdProcessCallback;

.field public final nativeData:Lio/bidmachine/nativead/NativeData;

.field public final nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

.field public final pendingTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final repository$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lio/bidmachine/nativead/AssetLoader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/nativead/AssetLoader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/nativead/AssetLoader;->Companion:Lio/bidmachine/nativead/AssetLoader$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lio/bidmachine/nativead/NativeAdRequestParameters;Lio/bidmachine/AdProcessCallback;Lio/bidmachine/nativead/NativeData;Lio/bidmachine/nativead/NativeMediaPrivateData;)V
    .registers 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetsHolder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRequestParameters"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeData"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeMediaData"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/bidmachine/nativead/AssetLoader;->assetsHolder:Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Lio/bidmachine/nativead/AssetLoader;->adRequestParameters:Lio/bidmachine/nativead/NativeAdRequestParameters;

    .line 4
    iput-object p4, p0, Lio/bidmachine/nativead/AssetLoader;->callback:Lio/bidmachine/AdProcessCallback;

    .line 5
    iput-object p5, p0, Lio/bidmachine/nativead/AssetLoader;->nativeData:Lio/bidmachine/nativead/NativeData;

    .line 6
    iput-object p6, p0, Lio/bidmachine/nativead/AssetLoader;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    .line 7
    new-instance p2, Lio/bidmachine/nativead/AssetLoader$c;

    invoke-direct {p2, p1}, Lio/bidmachine/nativead/AssetLoader$c;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/nativead/AssetLoader;->repository$delegate:Lkotlin/Lazy;

    .line 8
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lio/bidmachine/nativead/AssetLoader;->pendingTasks:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getNativeMediaData$p(Lio/bidmachine/nativead/AssetLoader;)Lio/bidmachine/nativead/NativeMediaPrivateData;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/nativead/AssetLoader;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    return-object p0
.end method

.method public static final synthetic access$removePendingTask(Lio/bidmachine/nativead/AssetLoader;Ljava/lang/Runnable;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/nativead/AssetLoader;->removePendingTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final synthetic access$retrieveAndSaveImageFrame(Lio/bidmachine/nativead/AssetLoader;Landroid/content/Context;Landroid/net/Uri;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/nativead/AssetLoader;->retrieveAndSaveImageFrame(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public final checkTasksCount()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader;->pendingTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/nativead/AssetLoader;->notifyNativeCallback()V

    :cond_b
    return-void
.end method

.method public final createIconTask(Lio/bidmachine/ImageData;)V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/nativead/AssetLoader$a;

    invoke-direct {v0, p0}, Lio/bidmachine/nativead/AssetLoader$a;-><init>(Lio/bidmachine/nativead/AssetLoader;)V

    invoke-virtual {p0, p1, v0}, Lio/bidmachine/nativead/AssetLoader;->createImageTask(Lio/bidmachine/ImageData;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final createImageTask(Lio/bidmachine/ImageData;)V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/nativead/AssetLoader$b;

    invoke-direct {v0, p0}, Lio/bidmachine/nativead/AssetLoader$b;-><init>(Lio/bidmachine/nativead/AssetLoader;)V

    invoke-virtual {p0, p1, v0}, Lio/bidmachine/nativead/AssetLoader;->createImageTask(Lio/bidmachine/ImageData;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final createImageTask(Lio/bidmachine/ImageData;Lkotlin/jvm/functions/Function1;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ImageData;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    goto :goto_30

    .line 2
    :cond_3
    invoke-interface {p1}, Lio/bidmachine/ImageData;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_a

    goto :goto_30

    .line 5
    :cond_a
    invoke-interface {p1}, Lio/bidmachine/ImageData;->getRemoteUrl()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_30

    .line 6
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_17

    goto :goto_30

    .line 10
    :cond_17
    new-instance v4, Lio/bidmachine/nativead/AssetLoader$createImageTask$listener$1;

    invoke-direct {v4, p2, p0}, Lio/bidmachine/nativead/AssetLoader$createImageTask$listener$1;-><init>(Lkotlin/jvm/functions/Function1;Lio/bidmachine/nativead/AssetLoader;)V

    .line 20
    iget-object p1, p0, Lio/bidmachine/nativead/AssetLoader;->pendingTasks:Ljava/util/List;

    .line 21
    new-instance v1, Lio/bidmachine/nativead/tasks/DownloadImageTask;

    .line 22
    iget-object v2, p0, Lio/bidmachine/nativead/AssetLoader;->assetsHolder:Ljava/lang/Object;

    .line 23
    invoke-virtual {p0}, Lio/bidmachine/nativead/AssetLoader;->getRepository()Lio/bidmachine/rendering/Repository;

    move-result-object v3

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 24
    invoke-direct/range {v1 .. v8}, Lio/bidmachine/nativead/tasks/DownloadImageTask;-><init>(Ljava/lang/Object;Lio/bidmachine/rendering/Repository;Lio/bidmachine/nativead/tasks/DownloadImageTask$OnCacheImageListener;Ljava/lang/String;Lio/bidmachine/util/SdkDispatchers;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 25
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_30
    :goto_30
    return-void
.end method

.method public final createVastVideoTask(Landroid/content/Context;Ljava/lang/String;)V
    .registers 13

    if-eqz p2, :cond_24

    .line 1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_24

    .line 5
    :cond_9
    new-instance v5, Lio/bidmachine/nativead/AssetLoader$createVastVideoTask$listener$1;

    invoke-direct {v5, p0, p1}, Lio/bidmachine/nativead/AssetLoader$createVastVideoTask$listener$1;-><init>(Lio/bidmachine/nativead/AssetLoader;Landroid/content/Context;)V

    .line 17
    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader;->pendingTasks:Ljava/util/List;

    new-instance v1, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;

    iget-object v3, p0, Lio/bidmachine/nativead/AssetLoader;->assetsHolder:Ljava/lang/Object;

    invoke-virtual {p0}, Lio/bidmachine/nativead/AssetLoader;->getRepository()Lio/bidmachine/rendering/Repository;

    move-result-object v4

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v9}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;-><init>(Landroid/content/Context;Ljava/lang/Object;Lio/bidmachine/rendering/Repository;Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$OnLoadedListener;Ljava/lang/String;Lio/bidmachine/util/SdkDispatchers;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    :goto_24
    return-void
.end method

.method public final createVideoTask(Landroid/content/Context;Ljava/lang/String;)V
    .registers 12

    if-eqz p2, :cond_23

    .line 1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_23

    .line 5
    :cond_9
    new-instance v4, Lio/bidmachine/nativead/AssetLoader$createVideoTask$listener$1;

    invoke-direct {v4, p0, p1}, Lio/bidmachine/nativead/AssetLoader$createVideoTask$listener$1;-><init>(Lio/bidmachine/nativead/AssetLoader;Landroid/content/Context;)V

    .line 16
    iget-object p1, p0, Lio/bidmachine/nativead/AssetLoader;->pendingTasks:Ljava/util/List;

    .line 17
    new-instance v1, Lio/bidmachine/nativead/tasks/DownloadVideoTask;

    .line 18
    iget-object v2, p0, Lio/bidmachine/nativead/AssetLoader;->assetsHolder:Ljava/lang/Object;

    .line 19
    invoke-virtual {p0}, Lio/bidmachine/nativead/AssetLoader;->getRepository()Lio/bidmachine/rendering/Repository;

    move-result-object v3

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v5, p2

    .line 20
    invoke-direct/range {v1 .. v8}, Lio/bidmachine/nativead/tasks/DownloadVideoTask;-><init>(Ljava/lang/Object;Lio/bidmachine/rendering/Repository;Lio/bidmachine/nativead/tasks/DownloadVideoTask$OnLoadedListener;Ljava/lang/String;Lio/bidmachine/util/SdkDispatchers;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 21
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    :goto_23
    return-void
.end method

.method public final downloadNativeAdsImages(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/nativead/AssetLoader;->startDownloadTask(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/nativead/AssetLoader;->checkTasksCount()V

    return-void
.end method

.method public final getRepository()Lio/bidmachine/rendering/Repository;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader;->repository$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/rendering/Repository;

    return-object v0
.end method

.method public final isAssetsValid()Z
    .registers 3

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Lio/bidmachine/nativead/AssetLoader;->isIconValid()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Lio/bidmachine/nativead/AssetLoader;->isImageValid()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Lio/bidmachine/nativead/AssetLoader;->isVideoValid()Z

    move-result v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_15

    if-eqz v1, :cond_17

    const/4 v0, 0x1

    return v0

    :catch_15
    move-exception v1

    goto :goto_18

    :cond_17
    return v0

    .line 3
    :goto_18
    invoke-static {v1}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    return v0
.end method

.method public final isIconValid()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader;->adRequestParameters:Lio/bidmachine/nativead/NativeAdRequestParameters;

    sget-object v1, Lio/bidmachine/MediaAssetType;->Icon:Lio/bidmachine/MediaAssetType;

    invoke-virtual {v0, v1}, Lio/bidmachine/nativead/NativeAdRequestParameters;->containsAssetType(Lio/bidmachine/MediaAssetType;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1e

    .line 2
    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    invoke-interface {v0}, Lio/bidmachine/nativead/NativeMediaPublicData;->getIconUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 3
    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    invoke-interface {v0}, Lio/bidmachine/nativead/NativeMediaPublicData;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v0, 0x0

    return v0

    :cond_1e
    :goto_1e
    return v1
.end method

.method public final isImageValid()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader;->adRequestParameters:Lio/bidmachine/nativead/NativeAdRequestParameters;

    sget-object v1, Lio/bidmachine/MediaAssetType;->Image:Lio/bidmachine/MediaAssetType;

    invoke-virtual {v0, v1}, Lio/bidmachine/nativead/NativeAdRequestParameters;->containsAssetType(Lio/bidmachine/MediaAssetType;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1e

    .line 2
    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    invoke-interface {v0}, Lio/bidmachine/nativead/NativeMediaPublicData;->getImageUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 3
    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    invoke-interface {v0}, Lio/bidmachine/nativead/NativeMediaPublicData;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v0, 0x0

    return v0

    :cond_1e
    :goto_1e
    return v1
.end method

.method public final isVideoValid()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader;->adRequestParameters:Lio/bidmachine/nativead/NativeAdRequestParameters;

    sget-object v1, Lio/bidmachine/MediaAssetType;->Video:Lio/bidmachine/MediaAssetType;

    invoke-virtual {v0, v1}, Lio/bidmachine/nativead/NativeAdRequestParameters;->containsAssetType(Lio/bidmachine/MediaAssetType;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2
    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader;->nativeData:Lio/bidmachine/nativead/NativeData;

    invoke-interface {v0}, Lio/bidmachine/nativead/NativePublicData;->hasVideo()Z

    move-result v0

    return v0

    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized notifyNativeCallback()V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader;->adRequestParameters:Lio/bidmachine/nativead/NativeAdRequestParameters;

    invoke-virtual {v0}, Lio/bidmachine/nativead/NativeAdRequestParameters;->isValidateAssets()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lio/bidmachine/nativead/AssetLoader;->isAssetsValid()Z

    move-result v0

    if-nez v0, :cond_22

    .line 2
    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader;->callback:Lio/bidmachine/AdProcessCallback;

    const-string v1, "Native assets are invalid"

    invoke-static {v1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object v1

    const-string v2, "internal(\"Native assets are invalid\")"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lio/bidmachine/AdProcessCallback;->processLoadFail(Lio/bidmachine/utils/BMError;)V

    goto :goto_27

    :catchall_20
    move-exception v0

    goto :goto_29

    .line 4
    :cond_22
    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader;->callback:Lio/bidmachine/AdProcessCallback;

    invoke-interface {v0}, Lio/bidmachine/AdProcessCallback;->processLoadSuccess()V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_20

    :goto_27
    monitor-exit p0

    return-void

    :goto_29
    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_20

    throw v0
.end method

.method public final removePendingTask(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader;->pendingTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/nativead/AssetLoader;->checkTasksCount()V

    return-void
.end method

.method public final retrieveAndSaveImageFrame(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader;->nativeData:Lio/bidmachine/nativead/NativeData;

    invoke-interface {v0}, Lio/bidmachine/nativead/NativePublicData;->getMainImage()Lio/bidmachine/ImageData;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 2
    invoke-interface {v0}, Lio/bidmachine/ImageData;->getRemoteUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_e
    move-object v0, v1

    :goto_f
    if-eqz p2, :cond_3c

    .line 3
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_18

    goto :goto_3c

    :cond_18
    if-eqz v0, :cond_20

    .line 4
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3c

    :cond_20
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 5
    const-string v0, "native_video_thumb"

    invoke-static {p1, p2, v0}, Lio/bidmachine/core/Utils;->retrieveAndSaveFrame(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lio/bidmachine/nativead/AssetLoader;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    if-eqz p1, :cond_39

    invoke-static {p1}, Lio/bidmachine/util/file/FileUtilsKt;->toUri(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    :cond_39
    invoke-interface {p2, v1}, Lio/bidmachine/nativead/NativeMediaPrivateData;->setImageUri(Landroid/net/Uri;)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public final startDownloadTask(Landroid/content/Context;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader;->nativeData:Lio/bidmachine/nativead/NativeData;

    invoke-interface {v0}, Lio/bidmachine/nativead/NativeData;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/bidmachine/nativead/AssetLoader;->nativeData:Lio/bidmachine/nativead/NativeData;

    invoke-interface {v1}, Lio/bidmachine/nativead/NativeData;->getVideoAdm()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lio/bidmachine/nativead/AssetLoader;->adRequestParameters:Lio/bidmachine/nativead/NativeAdRequestParameters;

    sget-object v3, Lio/bidmachine/MediaAssetType;->Icon:Lio/bidmachine/MediaAssetType;

    invoke-virtual {v2, v3}, Lio/bidmachine/nativead/NativeAdRequestParameters;->containsAssetType(Lio/bidmachine/MediaAssetType;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 4
    iget-object v2, p0, Lio/bidmachine/nativead/AssetLoader;->nativeData:Lio/bidmachine/nativead/NativeData;

    invoke-interface {v2}, Lio/bidmachine/nativead/NativePublicData;->getIcon()Lio/bidmachine/ImageData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/bidmachine/nativead/AssetLoader;->createIconTask(Lio/bidmachine/ImageData;)V

    .line 6
    :cond_1f
    iget-object v2, p0, Lio/bidmachine/nativead/AssetLoader;->adRequestParameters:Lio/bidmachine/nativead/NativeAdRequestParameters;

    sget-object v3, Lio/bidmachine/MediaAssetType;->Image:Lio/bidmachine/MediaAssetType;

    invoke-virtual {v2, v3}, Lio/bidmachine/nativead/NativeAdRequestParameters;->containsAssetType(Lio/bidmachine/MediaAssetType;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 7
    iget-object v2, p0, Lio/bidmachine/nativead/AssetLoader;->nativeData:Lio/bidmachine/nativead/NativeData;

    invoke-interface {v2}, Lio/bidmachine/nativead/NativePublicData;->getMainImage()Lio/bidmachine/ImageData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/bidmachine/nativead/AssetLoader;->createImageTask(Lio/bidmachine/ImageData;)V

    .line 9
    :cond_32
    iget-object v2, p0, Lio/bidmachine/nativead/AssetLoader;->adRequestParameters:Lio/bidmachine/nativead/NativeAdRequestParameters;

    sget-object v3, Lio/bidmachine/MediaAssetType;->Video:Lio/bidmachine/MediaAssetType;

    invoke-virtual {v2, v3}, Lio/bidmachine/nativead/NativeAdRequestParameters;->containsAssetType(Lio/bidmachine/MediaAssetType;)Z

    move-result v2

    if-eqz v2, :cond_55

    if-eqz v0, :cond_49

    .line 10
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_45

    goto :goto_49

    .line 11
    :cond_45
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/nativead/AssetLoader;->createVideoTask(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_55

    :cond_49
    :goto_49
    if-eqz v1, :cond_55

    .line 12
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_52

    goto :goto_55

    .line 13
    :cond_52
    invoke-virtual {p0, p1, v1}, Lio/bidmachine/nativead/AssetLoader;->createVastVideoTask(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    :cond_55
    :goto_55
    iget-object p1, p0, Lio/bidmachine/nativead/AssetLoader;->pendingTasks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_61

    .line 17
    invoke-virtual {p0}, Lio/bidmachine/nativead/AssetLoader;->checkTasksCount()V

    return-void

    .line 19
    :cond_61
    iget-object p1, p0, Lio/bidmachine/nativead/AssetLoader;->pendingTasks:Ljava/util/List;

    .line 185
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_67
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 186
    invoke-static {}, Lio/bidmachine/nativead/utils/NativeNetworkExecutor;->getInstance()Lio/bidmachine/nativead/utils/NativeNetworkExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/bidmachine/nativead/utils/NativeNetworkExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_67

    :cond_7b
    return-void
.end method

###### Class io.bidmachine.nativead.AssetLoader.Companion (io.bidmachine.nativead.AssetLoader$Companion)
.class public final Lio/bidmachine/nativead/AssetLoader$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/nativead/AssetLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/nativead/AssetLoader$Companion;-><init>()V

    return-void
.end method

###### Class io.bidmachine.nativead.AssetLoader.a (io.bidmachine.nativead.AssetLoader$a)
.class public final Lio/bidmachine/nativead/AssetLoader$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/AssetLoader;->createIconTask(Lio/bidmachine/ImageData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/nativead/AssetLoader;


# direct methods
.method public constructor <init>(Lio/bidmachine/nativead/AssetLoader;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/nativead/AssetLoader$a;->a:Lio/bidmachine/nativead/AssetLoader;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)V
    .registers 3

    const-string v0, "imagePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader$a;->a:Lio/bidmachine/nativead/AssetLoader;

    invoke-static {v0}, Lio/bidmachine/nativead/AssetLoader;->access$getNativeMediaData$p(Lio/bidmachine/nativead/AssetLoader;)Lio/bidmachine/nativead/NativeMediaPrivateData;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/bidmachine/nativead/NativeMediaPrivateData;->setIconUri(Landroid/net/Uri;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lio/bidmachine/nativead/AssetLoader$a;->a(Landroid/net/Uri;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.nativead.AssetLoader.b (io.bidmachine.nativead.AssetLoader$b)
.class public final Lio/bidmachine/nativead/AssetLoader$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/AssetLoader;->createImageTask(Lio/bidmachine/ImageData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/nativead/AssetLoader;


# direct methods
.method public constructor <init>(Lio/bidmachine/nativead/AssetLoader;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/nativead/AssetLoader$b;->a:Lio/bidmachine/nativead/AssetLoader;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)V
    .registers 3

    const-string v0, "imagePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader$b;->a:Lio/bidmachine/nativead/AssetLoader;

    invoke-static {v0}, Lio/bidmachine/nativead/AssetLoader;->access$getNativeMediaData$p(Lio/bidmachine/nativead/AssetLoader;)Lio/bidmachine/nativead/NativeMediaPrivateData;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/bidmachine/nativead/NativeMediaPrivateData;->setImageUri(Landroid/net/Uri;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lio/bidmachine/nativead/AssetLoader$b;->a(Landroid/net/Uri;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.nativead.AssetLoader.c (io.bidmachine.nativead.AssetLoader$c)
.class public final Lio/bidmachine/nativead/AssetLoader$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/AssetLoader;-><init>(Landroid/content/Context;Ljava/lang/Object;Lio/bidmachine/nativead/NativeAdRequestParameters;Lio/bidmachine/AdProcessCallback;Lio/bidmachine/nativead/NativeData;Lio/bidmachine/nativead/NativeMediaPrivateData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/nativead/AssetLoader$c;->a:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/rendering/Repository;
    .registers 3

    .line 1
    sget-object v0, Lio/bidmachine/rendering/Rendering;->INSTANCE:Lio/bidmachine/rendering/Rendering;

    iget-object v1, p0, Lio/bidmachine/nativead/AssetLoader$c;->a:Landroid/content/Context;

    invoke-static {v1}, Lio/bidmachine/internal/g;->a(Landroid/content/Context;)Lio/bidmachine/util/cache/MediaFileCacheManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/rendering/Rendering;->createRepository(Lio/bidmachine/util/cache/MediaFileCacheManager;)Lio/bidmachine/rendering/Repository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/nativead/AssetLoader$c;->a()Lio/bidmachine/rendering/Repository;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.nativead.AssetLoader$createImageTask$listener$1 (io.bidmachine.nativead.AssetLoader$createImageTask$listener$1)
.class public final Lio/bidmachine/nativead/AssetLoader$createImageTask$listener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/nativead/tasks/DownloadImageTask$OnCacheImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/AssetLoader;->createImageTask(Lio/bidmachine/ImageData;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $onSuccess:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lio/bidmachine/nativead/AssetLoader;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lio/bidmachine/nativead/AssetLoader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;",
            "Lio/bidmachine/nativead/AssetLoader;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lio/bidmachine/nativead/AssetLoader$createImageTask$listener$1;->$onSuccess:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lio/bidmachine/nativead/AssetLoader$createImageTask$listener$1;->this$0:Lio/bidmachine/nativead/AssetLoader;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lio/bidmachine/nativead/tasks/DownloadImageTask;)V
    .registers 3

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader$createImageTask$listener$1;->this$0:Lio/bidmachine/nativead/AssetLoader;

    invoke-static {v0, p1}, Lio/bidmachine/nativead/AssetLoader;->access$removePendingTask(Lio/bidmachine/nativead/AssetLoader;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPathSuccess(Lio/bidmachine/nativead/tasks/DownloadImageTask;Landroid/net/Uri;)V
    .registers 4

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imagePath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader$createImageTask$listener$1;->$onSuccess:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p2, p0, Lio/bidmachine/nativead/AssetLoader$createImageTask$listener$1;->this$0:Lio/bidmachine/nativead/AssetLoader;

    invoke-static {p2, p1}, Lio/bidmachine/nativead/AssetLoader;->access$removePendingTask(Lio/bidmachine/nativead/AssetLoader;Ljava/lang/Runnable;)V

    return-void
.end method

###### Class io.bidmachine.nativead.AssetLoader$createVastVideoTask$listener$1 (io.bidmachine.nativead.AssetLoader$createVastVideoTask$listener$1)
.class public final Lio/bidmachine/nativead/AssetLoader$createVastVideoTask$listener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$OnLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/AssetLoader;->createVastVideoTask(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic this$0:Lio/bidmachine/nativead/AssetLoader;


# direct methods
.method public constructor <init>(Lio/bidmachine/nativead/AssetLoader;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lio/bidmachine/nativead/AssetLoader$createVastVideoTask$listener$1;->this$0:Lio/bidmachine/nativead/AssetLoader;

    iput-object p2, p0, Lio/bidmachine/nativead/AssetLoader$createVastVideoTask$listener$1;->$context:Landroid/content/Context;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoLoaded(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;Landroid/net/Uri;Lio/bidmachine/iab/vast/VastRequest;)V
    .registers 5

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoFileUri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vastRequest"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader$createVastVideoTask$listener$1;->this$0:Lio/bidmachine/nativead/AssetLoader;

    invoke-static {v0}, Lio/bidmachine/nativead/AssetLoader;->access$getNativeMediaData$p(Lio/bidmachine/nativead/AssetLoader;)Lio/bidmachine/nativead/NativeMediaPrivateData;

    move-result-object v0

    invoke-interface {v0, p3}, Lio/bidmachine/nativead/NativeMediaPrivateData;->setVastRequest(Lio/bidmachine/iab/vast/VastRequest;)V

    .line 2
    iget-object p3, p0, Lio/bidmachine/nativead/AssetLoader$createVastVideoTask$listener$1;->this$0:Lio/bidmachine/nativead/AssetLoader;

    invoke-static {p3}, Lio/bidmachine/nativead/AssetLoader;->access$getNativeMediaData$p(Lio/bidmachine/nativead/AssetLoader;)Lio/bidmachine/nativead/NativeMediaPrivateData;

    move-result-object p3

    invoke-interface {p3, p2}, Lio/bidmachine/nativead/NativeMediaPrivateData;->setVideoUri(Landroid/net/Uri;)V

    .line 3
    iget-object p3, p0, Lio/bidmachine/nativead/AssetLoader$createVastVideoTask$listener$1;->this$0:Lio/bidmachine/nativead/AssetLoader;

    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader$createVastVideoTask$listener$1;->$context:Landroid/content/Context;

    invoke-static {p3, v0, p2}, Lio/bidmachine/nativead/AssetLoader;->access$retrieveAndSaveImageFrame(Lio/bidmachine/nativead/AssetLoader;Landroid/content/Context;Landroid/net/Uri;)V

    .line 4
    iget-object p2, p0, Lio/bidmachine/nativead/AssetLoader$createVastVideoTask$listener$1;->this$0:Lio/bidmachine/nativead/AssetLoader;

    invoke-static {p2, p1}, Lio/bidmachine/nativead/AssetLoader;->access$removePendingTask(Lio/bidmachine/nativead/AssetLoader;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onVideoLoadingError(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;)V
    .registers 3

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader$createVastVideoTask$listener$1;->this$0:Lio/bidmachine/nativead/AssetLoader;

    invoke-static {v0, p1}, Lio/bidmachine/nativead/AssetLoader;->access$removePendingTask(Lio/bidmachine/nativead/AssetLoader;Ljava/lang/Runnable;)V

    return-void
.end method

###### Class io.bidmachine.nativead.AssetLoader$createVideoTask$listener$1 (io.bidmachine.nativead.AssetLoader$createVideoTask$listener$1)
.class public final Lio/bidmachine/nativead/AssetLoader$createVideoTask$listener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/nativead/tasks/DownloadVideoTask$OnLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/AssetLoader;->createVideoTask(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic this$0:Lio/bidmachine/nativead/AssetLoader;


# direct methods
.method public constructor <init>(Lio/bidmachine/nativead/AssetLoader;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lio/bidmachine/nativead/AssetLoader$createVideoTask$listener$1;->this$0:Lio/bidmachine/nativead/AssetLoader;

    iput-object p2, p0, Lio/bidmachine/nativead/AssetLoader$createVideoTask$listener$1;->$context:Landroid/content/Context;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoLoaded(Lio/bidmachine/nativead/tasks/DownloadVideoTask;Landroid/net/Uri;)V
    .registers 5

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoFileUri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader$createVideoTask$listener$1;->this$0:Lio/bidmachine/nativead/AssetLoader;

    invoke-static {v0}, Lio/bidmachine/nativead/AssetLoader;->access$getNativeMediaData$p(Lio/bidmachine/nativead/AssetLoader;)Lio/bidmachine/nativead/NativeMediaPrivateData;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/bidmachine/nativead/NativeMediaPrivateData;->setVideoUri(Landroid/net/Uri;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader$createVideoTask$listener$1;->this$0:Lio/bidmachine/nativead/AssetLoader;

    iget-object v1, p0, Lio/bidmachine/nativead/AssetLoader$createVideoTask$listener$1;->$context:Landroid/content/Context;

    invoke-static {v0, v1, p2}, Lio/bidmachine/nativead/AssetLoader;->access$retrieveAndSaveImageFrame(Lio/bidmachine/nativead/AssetLoader;Landroid/content/Context;Landroid/net/Uri;)V

    .line 3
    iget-object p2, p0, Lio/bidmachine/nativead/AssetLoader$createVideoTask$listener$1;->this$0:Lio/bidmachine/nativead/AssetLoader;

    invoke-static {p2, p1}, Lio/bidmachine/nativead/AssetLoader;->access$removePendingTask(Lio/bidmachine/nativead/AssetLoader;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onVideoLoadingError(Lio/bidmachine/nativead/tasks/DownloadVideoTask;)V
    .registers 3

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader$createVideoTask$listener$1;->this$0:Lio/bidmachine/nativead/AssetLoader;

    invoke-static {v0, p1}, Lio/bidmachine/nativead/AssetLoader;->access$removePendingTask(Lio/bidmachine/nativead/AssetLoader;Ljava/lang/Runnable;)V

    return-void
.end method
