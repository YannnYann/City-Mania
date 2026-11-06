###### Class ads_mobile_sdk.p21 (ads_mobile_sdk.p21)
.class public abstract Lads_mobile_sdk/p21;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .registers 26

    .line 615
    const-string v24, ".ota"

    const-string v25, ".imy"

    const-string v1, ".mp4"

    const-string v2, ".webm"

    const-string v3, ".mkv"

    const-string v4, ".3gp"

    const-string v5, ".m4v"

    const-string v6, ".ts"

    const-string v7, ".flv"

    const-string v8, ".ogv"

    const-string v9, ".avi"

    const-string v10, ".mov"

    const-string v11, ".qt"

    const-string v12, ".wmv"

    const-string v13, ".mp3"

    const-string v14, ".aac"

    const-string v15, ".wav"

    const-string v16, ".flac"

    const-string v17, ".ogg"

    const-string v18, ".m4a"

    const-string v19, ".mid"

    const-string v20, ".xmf"

    const-string v21, ".mxmf"

    const-string v22, ".rtttl"

    const-string v23, ".rtx"

    filled-new-array/range {v1 .. v25}, [Ljava/lang/String;

    move-result-object v0

    .line 616
    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/p21;->a:Ljava/util/Set;

    return-void
.end method

.method public static final a(Landroid/net/Uri;)Z
    .registers 5

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 581
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_d

    return v0

    .line 582
    :cond_d
    sget-object v1, Lads_mobile_sdk/p21;->a:Ljava/util/Set;

    .line 618
    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_32

    .line 619
    :cond_1a
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    .line 620
    invoke-static {p0, v2, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1e

    return v3

    :cond_32
    :goto_32
    return v0
.end method
