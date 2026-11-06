###### Class io.bidmachine.rendering.model.MediaSourceKt (io.bidmachine.rendering.model.MediaSourceKt)
.class public final Lio/bidmachine/rendering/model/MediaSourceKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final urlsToMediaSource(Ljava/util/List;)Lio/bidmachine/rendering/model/MediaSource;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/rendering/model/MediaSource;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p0

    .line 2
    sget-object v0, Lio/bidmachine/rendering/model/MediaSourceKt$a;->a:Lio/bidmachine/rendering/model/MediaSourceKt$a;

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt___SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    .line 4
    sget-object v0, Lio/bidmachine/rendering/model/MediaSourceKt$b;->a:Lio/bidmachine/rendering/model/MediaSourceKt$b;

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lkotlin/sequences/SequencesKt___SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    return-object v1

    .line 30
    :cond_21
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 31
    :try_start_32
    invoke-static {v3}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 32
    const-string v4, "m3u8"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->contentEquals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_3e

    goto :goto_3f

    :catchall_3e
    const/4 v3, 0x0

    :goto_3f
    if-eqz v3, :cond_25

    move-object v1, v2

    .line 33
    :cond_42
    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_4e

    .line 42
    new-instance p0, Lio/bidmachine/rendering/model/UrlMediaSource;

    .line 44
    sget-object v0, Lio/bidmachine/rendering/model/MediaSource$DeliveryType;->STREAM:Lio/bidmachine/rendering/model/MediaSource$DeliveryType;

    .line 45
    invoke-direct {p0, v1, v0}, Lio/bidmachine/rendering/model/UrlMediaSource;-><init>(Ljava/lang/String;Lio/bidmachine/rendering/model/MediaSource$DeliveryType;)V

    goto :goto_56

    .line 50
    :cond_4e
    new-instance v0, Lio/bidmachine/rendering/model/UrlMediaSource;

    .line 52
    sget-object v1, Lio/bidmachine/rendering/model/MediaSource$DeliveryType;->PRELOAD:Lio/bidmachine/rendering/model/MediaSource$DeliveryType;

    .line 53
    invoke-direct {v0, p0, v1}, Lio/bidmachine/rendering/model/UrlMediaSource;-><init>(Ljava/util/List;Lio/bidmachine/rendering/model/MediaSource$DeliveryType;)V

    move-object p0, v0

    :goto_56
    return-object p0
.end method

###### Class io.bidmachine.rendering.model.MediaSourceKt.a (io.bidmachine.rendering.model.MediaSourceKt$a)
.class public final Lio/bidmachine/rendering/model/MediaSourceKt$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/model/MediaSourceKt;->urlsToMediaSource(Ljava/util/List;)Lio/bidmachine/rendering/model/MediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/rendering/model/MediaSourceKt$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/rendering/model/MediaSourceKt$a;

    invoke-direct {v0}, Lio/bidmachine/rendering/model/MediaSourceKt$a;-><init>()V

    sput-object v0, Lio/bidmachine/rendering/model/MediaSourceKt$a;->a:Lio/bidmachine/rendering/model/MediaSourceKt$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lio/bidmachine/util/Utils;->getValidUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/model/MediaSourceKt$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.rendering.model.MediaSourceKt.b (io.bidmachine.rendering.model.MediaSourceKt$b)
.class public final Lio/bidmachine/rendering/model/MediaSourceKt$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/model/MediaSourceKt;->urlsToMediaSource(Ljava/util/List;)Lio/bidmachine/rendering/model/MediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/rendering/model/MediaSourceKt$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/rendering/model/MediaSourceKt$b;

    invoke-direct {v0}, Lio/bidmachine/rendering/model/MediaSourceKt$b;-><init>()V

    sput-object v0, Lio/bidmachine/rendering/model/MediaSourceKt$b;->a:Lio/bidmachine/rendering/model/MediaSourceKt$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lio/bidmachine/util/UtilsKt;->isHttpUrl(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/model/MediaSourceKt$b;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
