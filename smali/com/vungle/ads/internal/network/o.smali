###### Class com.vungle.ads.internal.network.o (com.vungle.ads.internal.network.o)
.class public final Lcom/vungle/ads/internal/network/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lokhttp3/Response;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lokhttp3/Response;Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/ads/internal/network/o;->a:Lokhttp3/Response;

    .line 3
    iput-object p2, p0, Lcom/vungle/ads/internal/network/o;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lokhttp3/Response;Ljava/lang/Object;I)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/vungle/ads/internal/network/o;-><init>(Lokhttp3/Response;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/o;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final b()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/o;->a:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    return v0
.end method

.method public final c()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/o;->a:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/o;->a:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lokhttp3/Response;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/o;->a:Lokhttp3/Response;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/o;->a:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
