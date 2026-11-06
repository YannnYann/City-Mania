###### Class com.vungle.ads.internal.network.i (com.vungle.ads.internal.network.i)
.class public final Lcom/vungle/ads/internal/network/i;
.super Lokio/ForwardingSource;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/network/j;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/network/j;Lokio/BufferedSource;)V
    .registers 3

    iput-object p1, p0, Lcom/vungle/ads/internal/network/i;->a:Lcom/vungle/ads/internal/network/j;

    .line 1
    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    return-void
.end method


# virtual methods
.method public final read(Lokio/Buffer;J)J
    .registers 5

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_5
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide p1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_a

    return-wide p1

    :catch_a
    move-exception p1

    .line 3
    iget-object p2, p0, Lcom/vungle/ads/internal/network/i;->a:Lcom/vungle/ads/internal/network/j;

    invoke-virtual {p2, p1}, Lcom/vungle/ads/internal/network/j;->a(Ljava/io/IOException;)V

    .line 4
    throw p1
.end method
