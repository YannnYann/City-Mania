###### Class io.bidmachine.rendering.internal.adform.countdown.a (io.bidmachine.rendering.internal.adform.countdown.a)
.class public final Lio/bidmachine/rendering/internal/adform/countdown/a;
.super Lio/bidmachine/rendering/internal/adform/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/adform/countdown/a$a;
    }
.end annotation


# instance fields
.field public final x:Lio/bidmachine/rendering/internal/view/b;


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
    new-instance p3, Lio/bidmachine/rendering/internal/view/b;

    invoke-direct {p3, p2}, Lio/bidmachine/rendering/internal/view/b;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance p2, Lio/bidmachine/rendering/internal/adform/countdown/a$a;

    invoke-direct {p2, p0}, Lio/bidmachine/rendering/internal/adform/countdown/a$a;-><init>(Lio/bidmachine/rendering/internal/adform/countdown/a;)V

    invoke-virtual {p3, p2}, Lio/bidmachine/rendering/internal/view/b;->setListener(Lio/bidmachine/rendering/internal/view/b$d;)V

    .line 5
    iput-object p3, p1, Lio/bidmachine/rendering/internal/adform/countdown/a;->x:Lio/bidmachine/rendering/internal/view/b;

    return-void
.end method


# virtual methods
.method public B()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/countdown/a;->x:Lio/bidmachine/rendering/internal/view/b;

    return-object v0
.end method

.method public E()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/countdown/a;->x:Lio/bidmachine/rendering/internal/view/b;

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/view/b;->b()V

    return-void
.end method

.method public I()V
    .registers 2

    .line 1
    invoke-super {p0}, Lio/bidmachine/rendering/internal/adform/a;->I()V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/internal/adform/a;->b(Z)V

    return-void
.end method

.method public J()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/internal/adform/a;->b(Z)V

    .line 3
    invoke-super {p0}, Lio/bidmachine/rendering/internal/adform/a;->J()V

    return-void
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

.method public a(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    invoke-static {p1, v0, v1, v0}, Lio/bidmachine/util/UtilsKt;->toLongOrDefault$default(Ljava/lang/Object;Ljava/lang/Long;ILjava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_25

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t obtain time to start ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lio/bidmachine/rendering/internal/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_25
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/countdown/a;->x:Lio/bidmachine/rendering/internal/view/b;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lio/bidmachine/rendering/internal/view/b;->setDurationMs(J)V

    .line 10
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/countdown/a;->x:Lio/bidmachine/rendering/internal/view/b;

    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/view/b;->f()V

    return-void
.end method

.method public c(Z)V
    .registers 2

    if-eqz p1, :cond_8

    .line 1
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/countdown/a;->x:Lio/bidmachine/rendering/internal/view/b;

    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/view/b;->e()V

    return-void

    .line 3
    :cond_8
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/countdown/a;->x:Lio/bidmachine/rendering/internal/view/b;

    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/view/b;->d()V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.adform.countdown.a.C1166a (io.bidmachine.rendering.internal.adform.countdown.a$a)
.class public final Lio/bidmachine/rendering/internal/adform/countdown/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/internal/view/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/adform/countdown/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/adform/countdown/a;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/adform/countdown/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/countdown/a$a;->a:Lio/bidmachine/rendering/internal/adform/countdown/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/countdown/a$a;->a:Lio/bidmachine/rendering/internal/adform/countdown/a;

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/G;->q()Lio/bidmachine/rendering/internal/event/a;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/rendering/internal/event/a;->a()V

    return-void
.end method
