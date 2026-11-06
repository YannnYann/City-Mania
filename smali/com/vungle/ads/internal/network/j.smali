###### Class com.vungle.ads.internal.network.j (com.vungle.ads.internal.network.j)
.class public final Lcom/vungle/ads/internal/network/j;
.super Lokhttp3/ResponseBody;
.source "SourceFile"


# instance fields
.field public final a:Lokhttp3/ResponseBody;

.field public final b:Lokio/BufferedSource;

.field public c:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Lokhttp3/ResponseBody;)V
    .registers 3

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/ads/internal/network/j;->a:Lokhttp3/ResponseBody;

    .line 30
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object p1

    new-instance v0, Lcom/vungle/ads/internal/network/i;

    invoke-direct {v0, p0, p1}, Lcom/vungle/ads/internal/network/i;-><init>(Lcom/vungle/ads/internal/network/j;Lokio/BufferedSource;)V

    .line 40
    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/vungle/ads/internal/network/j;->b:Lokio/BufferedSource;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/internal/network/j;->c:Ljava/io/IOException;

    if-nez v0, :cond_5

    return-void

    .line 3
    :cond_5
    throw v0
.end method

.method public final a(Ljava/io/IOException;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/network/j;->c:Ljava/io/IOException;

    return-void
.end method

.method public final close()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/j;->a:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    return-void
.end method

.method public final contentLength()J
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/j;->a:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public final contentType()Lokhttp3/MediaType;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/j;->a:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public final source()Lokio/BufferedSource;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/j;->b:Lokio/BufferedSource;

    return-object v0
.end method
