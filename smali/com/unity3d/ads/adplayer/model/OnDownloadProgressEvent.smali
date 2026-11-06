###### Class com.unity3d.ads.adplayer.model.OnDownloadProgressEvent (com.unity3d.ads.adplayer.model.OnDownloadProgressEvent)
.class public final Lcom/unity3d/ads/adplayer/model/OnDownloadProgressEvent;
.super Ljava/lang/Object;
.source "WebViewEvent.kt"

# interfaces
.implements Lcom/unity3d/ads/adplayer/model/WebViewEvent;


# instance fields
.field private final category:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final parameters:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;JLjava/lang/Long;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 10

    const-string v0, "downloadId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const-string v0, "ADVIEWER"

    iput-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnDownloadProgressEvent;->category:Ljava/lang/String;

    .line 121
    const-string v0, "ON_DOWNLOAD_PROGRESS"

    iput-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnDownloadProgressEvent;->name:Ljava/lang/String;

    .line 122
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    move-object p6, p5

    move-object p5, p4

    move-object p4, p6

    move-object p6, p7

    move-object p7, p8

    filled-new-array/range {p1 .. p7}, [Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/ads/adplayer/model/OnDownloadProgressEvent;->parameters:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnDownloadProgressEvent;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnDownloadProgressEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()[Ljava/lang/Object;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnDownloadProgressEvent;->parameters:[Ljava/lang/Object;

    return-object v0
.end method
