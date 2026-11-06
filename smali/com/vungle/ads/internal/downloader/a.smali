###### Class com.vungle.ads.internal.downloader.a (com.vungle.ads.internal.downloader.a)
.class public abstract Lcom/vungle/ads/internal/downloader/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/vungle/ads/internal/downloader/c;)Z
    .registers 3

    const-string v0, "error"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/downloader/c;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 3
    invoke-virtual {p0}, Lcom/vungle/ads/internal/downloader/c;->c()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1f

    const/16 v0, 0x198

    if-eq p0, v0, :cond_1f

    const/16 v0, 0x1f4

    if-eq p0, v0, :cond_1f

    packed-switch p0, :pswitch_data_22

    goto :goto_20

    :cond_1f
    :pswitch_1f
    return v1

    :cond_20
    :goto_20
    const/4 p0, 0x0

    return p0

    :pswitch_data_22
    .packed-switch 0x1f6
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch
.end method
