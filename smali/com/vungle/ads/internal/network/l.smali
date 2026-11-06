###### Class com.vungle.ads.internal.network.l (com.vungle.ads.internal.network.l)
.class public final Lcom/vungle/ads/internal/network/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/network/m;

.field public final synthetic b:Lcom/vungle/ads/internal/network/a;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/network/m;Lcom/vungle/ads/internal/network/a;)V
    .registers 3

    iput-object p1, p0, Lcom/vungle/ads/internal/network/l;->a:Lcom/vungle/ads/internal/network/m;

    iput-object p2, p0, Lcom/vungle/ads/internal/network/l;->b:Lcom/vungle/ads/internal/network/a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 4

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_a
    iget-object p1, p0, Lcom/vungle/ads/internal/network/l;->b:Lcom/vungle/ads/internal/network/a;

    invoke-interface {p1, p2}, Lcom/vungle/ads/internal/network/a;->a(Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/vungle/ads/internal/network/h;->a(Ljava/lang/Throwable;)V

    .line 4
    sget-boolean p2, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string p2, "OkHttpCall"

    const-string v0, "Cannot pass failure to callback"

    invoke-static {p2, v0, p1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 5

    const-string v0, "OkHttpCall"

    const-string v1, "call"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_c
    iget-object p1, p0, Lcom/vungle/ads/internal/network/l;->a:Lcom/vungle/ads/internal/network/m;

    invoke-static {p1, p2}, Lcom/vungle/ads/internal/network/m;->a(Lcom/vungle/ads/internal/network/m;Lokhttp3/Response;)Lcom/vungle/ads/internal/network/o;

    move-result-object p1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_24

    .line 9
    :try_start_12
    iget-object p2, p0, Lcom/vungle/ads/internal/network/l;->b:Lcom/vungle/ads/internal/network/a;

    invoke-interface {p2, p1}, Lcom/vungle/ads/internal/network/a;->a(Lcom/vungle/ads/internal/network/o;)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception p1

    .line 11
    invoke-static {p1}, Lcom/vungle/ads/internal/network/h;->a(Ljava/lang/Throwable;)V

    .line 12
    sget-boolean p2, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string p2, "Cannot pass response to callback"

    invoke-static {v0, p2, p1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4f

    :catchall_24
    move-exception p1

    .line 13
    sget-boolean p2, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 14
    const-string p2, "[enqueue] Failed to parse response: "

    invoke-static {p2}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 68
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {p1}, Lcom/vungle/ads/internal/network/h;->a(Ljava/lang/Throwable;)V

    .line 70
    :try_start_3e
    iget-object p2, p0, Lcom/vungle/ads/internal/network/l;->b:Lcom/vungle/ads/internal/network/a;

    invoke-interface {p2, p1}, Lcom/vungle/ads/internal/network/a;->a(Ljava/lang/Throwable;)V
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_44

    goto :goto_4f

    :catchall_44
    move-exception p1

    .line 72
    invoke-static {p1}, Lcom/vungle/ads/internal/network/h;->a(Ljava/lang/Throwable;)V

    .line 73
    sget-boolean p2, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string p2, "Cannot pass failure to callback"

    invoke-static {v0, p2, p1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4f
    return-void
.end method
