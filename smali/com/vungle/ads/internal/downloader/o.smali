###### Class com.vungle.ads.internal.downloader.o (com.vungle.ads.internal.downloader.o)
.class public final Lcom/vungle/ads/internal/downloader/o;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final a:Lcom/vungle/ads/internal/downloader/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/vungle/ads/internal/downloader/c;)V
    .registers 5

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadError"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Template download failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", error: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/vungle/ads/internal/downloader/c;->a()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iput-object p2, p0, Lcom/vungle/ads/internal/downloader/o;->a:Lcom/vungle/ads/internal/downloader/c;

    return-void
.end method


# virtual methods
.method public final a()Lcom/vungle/ads/internal/downloader/c;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/downloader/o;->a:Lcom/vungle/ads/internal/downloader/c;

    return-object v0
.end method
