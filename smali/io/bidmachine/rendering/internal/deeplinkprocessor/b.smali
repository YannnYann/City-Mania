###### Class io.bidmachine.rendering.internal.deeplinkprocessor.b (io.bidmachine.rendering.internal.deeplinkprocessor.b)
.class public interface abstract Lio/bidmachine/rendering/internal/deeplinkprocessor/b;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Landroid/content/Context;Landroid/net/Uri;Lio/bidmachine/util/Executable;)V
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/util/Executable;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2}, Lio/bidmachine/util/UrlUtilsKt;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 2
    invoke-interface {p0, p1, p2, p3}, Lio/bidmachine/rendering/internal/deeplinkprocessor/b;->a(Landroid/content/Context;Landroid/net/Uri;Lio/bidmachine/util/Executable;)V

    return-void
.end method

.method public abstract a(Landroid/net/Uri;)Z
.end method
