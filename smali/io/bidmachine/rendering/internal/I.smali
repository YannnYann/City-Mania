###### Class io.bidmachine.rendering.internal.I (io.bidmachine.rendering.internal.I)
.class public abstract Lio/bidmachine/rendering/internal/I;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lio/bidmachine/rendering/model/Background;Landroid/content/Context;Lio/bidmachine/rendering/Repository;)Lio/bidmachine/rendering/internal/H;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lio/bidmachine/rendering/internal/H;

    invoke-direct {v0, p1, p2, p0}, Lio/bidmachine/rendering/internal/H;-><init>(Landroid/content/Context;Lio/bidmachine/rendering/Repository;Lio/bidmachine/rendering/model/Background;)V

    return-object v0
.end method
