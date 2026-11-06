###### Class io.bidmachine.rendering.internal.adform.progress.a (io.bidmachine.rendering.internal.adform.progress.a)
.class public final Lio/bidmachine/rendering/internal/adform/progress/a;
.super Lio/bidmachine/rendering/internal/adform/a;
.source "SourceFile"


# instance fields
.field public final x:Lio/bidmachine/rendering/internal/view/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lio/bidmachine/rendering/Repository;Lio/bidmachine/rendering/model/AdElementParams;Lio/bidmachine/rendering/internal/adform/c;Lio/bidmachine/rendering/internal/event/a;Lio/bidmachine/rendering/internal/detector/brokencreative/a;)V
    .registers 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetsHolder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adElementParams"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adFormListener"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventCallback"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p7}, Lio/bidmachine/rendering/internal/adform/a;-><init>(Landroid/content/Context;Ljava/lang/Object;Lio/bidmachine/rendering/Repository;Lio/bidmachine/rendering/model/AdElementParams;Lio/bidmachine/rendering/internal/adform/c;Lio/bidmachine/rendering/internal/event/a;Lio/bidmachine/rendering/internal/detector/brokencreative/a;)V

    move-object p2, p1

    move-object p1, p0

    .line 3
    new-instance p3, Lio/bidmachine/rendering/internal/view/c;

    invoke-direct {p3, p2}, Lio/bidmachine/rendering/internal/view/c;-><init>(Landroid/content/Context;)V

    iput-object p3, p1, Lio/bidmachine/rendering/internal/adform/progress/a;->x:Lio/bidmachine/rendering/internal/view/c;

    return-void
.end method


# virtual methods
.method public B()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/progress/a;->x:Lio/bidmachine/rendering/internal/view/c;

    return-object v0
.end method

.method public a()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->w()Lio/bidmachine/rendering/internal/adform/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/bidmachine/rendering/internal/adform/c;->b(Lio/bidmachine/rendering/internal/adform/a;)V

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->D()V

    return-void
.end method

.method public a(JJF)V
    .registers 12

    .line 3
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/progress/a;->x:Lio/bidmachine/rendering/internal/view/c;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/rendering/internal/view/c;->a(JJF)V

    return-void
.end method
