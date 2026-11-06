###### Class io.bidmachine.rendering.measurer.BaseCompositeMeasurer (io.bidmachine.rendering.measurer.BaseCompositeMeasurer)
.class public Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/measurer/Measurer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MeasurerType::",
        "Lio/bidmachine/rendering/measurer/Measurer<",
        "TViewType;>;ViewType:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Lio/bidmachine/rendering/measurer/Measurer<",
        "TViewType;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$mQsi2Kh5BMRY54AAYljwyXX1NZo(Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;->a(Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TMeasurerType;>;)V"
        }
    .end annotation

    const-string v0, "measurerList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;->a:Ljava/util/List;

    return-void
.end method

.method public static final a(Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 2
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public destroy(Ljava/lang/Runnable;)V
    .registers 6

    if-eqz p1, :cond_17

    .line 1
    invoke-static {}, Lio/bidmachine/util/Utils;->createHandlerWithMyOrMainLooper()Landroid/os/Handler;

    move-result-object v0

    .line 2
    new-instance v1, Lio/bidmachine/rendering/utils/CountDownPostback;

    iget-object v2, p0, Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, p1}, Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-direct {v1, v2, v3}, Lio/bidmachine/rendering/utils/CountDownPostback;-><init>(ILjava/lang/Runnable;)V

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    .line 7
    :goto_18
    iget-object p1, p0, Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;->a:Ljava/util/List;

    .line 25
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/rendering/measurer/Measurer;

    .line 26
    invoke-interface {v0, v1}, Lio/bidmachine/rendering/measurer/Measurer;->destroy(Ljava/lang/Runnable;)V

    goto :goto_1e

    :cond_2e
    return-void
.end method

.method public final getMeasurerList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TMeasurerType;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;->a:Ljava/util/List;

    return-object v0
.end method

.method public onClicked()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;->a:Ljava/util/List;

    .line 34
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/rendering/measurer/Measurer;

    .line 35
    invoke-interface {v1}, Lio/bidmachine/rendering/measurer/Measurer;->onClicked()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onError(Lio/bidmachine/util/Error;)V
    .registers 4

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;->a:Ljava/util/List;

    .line 30
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/rendering/measurer/Measurer;

    .line 31
    invoke-interface {v1, p1}, Lio/bidmachine/rendering/measurer/Measurer;->onError(Lio/bidmachine/util/Error;)V

    goto :goto_b

    :cond_1b
    return-void
.end method

.method public onShown()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;->a:Ljava/util/List;

    .line 38
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/rendering/measurer/Measurer;

    .line 39
    invoke-interface {v1}, Lio/bidmachine/rendering/measurer/Measurer;->onShown()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onViewAddedToContainer(Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TViewType;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;->a:Ljava/util/List;

    .line 42
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/rendering/measurer/Measurer;

    .line 43
    invoke-interface {v1, p1, p2}, Lio/bidmachine/rendering/measurer/Measurer;->onViewAddedToContainer(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_10

    :cond_20
    return-void
.end method

.method public onViewCreated(Landroid/view/View;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TViewType;)V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;->a:Ljava/util/List;

    .line 50
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/rendering/measurer/Measurer;

    .line 51
    invoke-interface {v1, p1}, Lio/bidmachine/rendering/measurer/Measurer;->onViewCreated(Landroid/view/View;)V

    goto :goto_b

    :cond_1b
    return-void
.end method

.method public onViewReady(Landroid/view/View;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TViewType;)V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;->a:Ljava/util/List;

    .line 46
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/rendering/measurer/Measurer;

    .line 47
    invoke-interface {v1, p1}, Lio/bidmachine/rendering/measurer/Measurer;->onViewReady(Landroid/view/View;)V

    goto :goto_b

    :cond_1b
    return-void
.end method

###### Class io.bidmachine.rendering.measurer.BaseCompositeMeasurer$$ExternalSyntheticLambda0 (io.bidmachine.rendering.measurer.BaseCompositeMeasurer$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;

.field public final synthetic f$1:Landroid/os/Handler;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;

    iput-object p2, p0, Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer$$ExternalSyntheticLambda0;->f$1:Landroid/os/Handler;

    iput-object p3, p0, Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;

    iget-object v1, p0, Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer$$ExternalSyntheticLambda0;->f$1:Landroid/os/Handler;

    iget-object v2, p0, Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;->$r8$lambda$mQsi2Kh5BMRY54AAYljwyXX1NZo(Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method
