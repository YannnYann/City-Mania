###### Class io.bidmachine.rendering.ad.view.ExpandActivity (io.bidmachine.rendering.ad.view.ExpandActivity)
.class public final Lio/bidmachine/rendering/ad/view/ExpandActivity;
.super Lio/bidmachine/rendering/internal/AdActivity;
.source "SourceFile"


# instance fields
.field public a:Lio/bidmachine/rendering/ad/view/AdView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/AdActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 7

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/ExpandActivity;->a:Lio/bidmachine/rendering/ad/view/AdView;

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {v0}, Lio/bidmachine/rendering/ad/view/AdView;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 3
    :cond_a
    invoke-static {p0}, Lio/bidmachine/util/UiUtilsKt;->finishActivityWithoutAnimationSafely(Landroid/app/Activity;)V

    if-eqz v0, :cond_17

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    invoke-static/range {v0 .. v5}, Lio/bidmachine/rendering/ad/view/AdView;->collapse$default(Lio/bidmachine/rendering/ad/view/AdView;Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;ZILjava/lang/Object;)V

    :cond_17
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/rendering/internal/AdActivity;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "ad_view_tag"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_75

    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_16

    goto :goto_75

    .line 8
    :cond_16
    invoke-static {}, Lio/bidmachine/rendering/ad/view/ExpandActivityKt;->access$getTEMP_AD_VIEW_MAP$p()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/rendering/ad/view/a;

    invoke-virtual {v3}, Lio/bidmachine/rendering/ad/view/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_42

    :cond_41
    move-object v1, v2

    .line 10
    :goto_42
    check-cast v1, Ljava/util/Map$Entry;

    if-nez v1, :cond_4a

    .line 14
    invoke-static {p0}, Lio/bidmachine/util/UiUtilsKt;->finishActivityWithoutAnimationSafely(Landroid/app/Activity;)V

    return-void

    .line 18
    :cond_4a
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/ad/view/a;

    .line 19
    invoke-virtual {p1}, Lio/bidmachine/rendering/ad/view/a;->a()Lio/bidmachine/rendering/model/animation/AnimationParams;

    move-result-object v0

    .line 20
    invoke-virtual {p1}, Lio/bidmachine/rendering/ad/view/a;->b()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    .line 21
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/rendering/ad/view/AdView;

    .line 22
    invoke-virtual {v1}, Lio/bidmachine/rendering/ad/view/AdView;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 23
    invoke-static {p0}, Lio/bidmachine/util/UiUtilsKt;->finishActivityWithoutAnimationSafely(Landroid/app/Activity;)V

    const/4 v0, 0x1

    .line 24
    invoke-virtual {v1, v2, p1, v0}, Lio/bidmachine/rendering/ad/view/AdView;->collapse(Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;Z)V

    return-void

    .line 31
    :cond_6c
    iput-object v1, p0, Lio/bidmachine/rendering/ad/view/ExpandActivity;->a:Lio/bidmachine/rendering/ad/view/AdView;

    .line 32
    invoke-virtual {v1, p0, v0, p1}, Lio/bidmachine/rendering/ad/view/AdView;->showInActivity(Landroid/app/Activity;Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V

    .line 37
    invoke-virtual {v1}, Lio/bidmachine/rendering/ad/view/AdView;->onExpanded()V

    return-void

    .line 38
    :cond_75
    :goto_75
    invoke-static {p0}, Lio/bidmachine/util/UiUtilsKt;->finishActivityWithoutAnimationSafely(Landroid/app/Activity;)V

    return-void
.end method

.method public onDestroy()V
    .registers 8

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 7
    :cond_a
    iget-object v1, p0, Lio/bidmachine/rendering/ad/view/ExpandActivity;->a:Lio/bidmachine/rendering/ad/view/AdView;

    if-eqz v1, :cond_19

    .line 8
    invoke-static {v1}, Lio/bidmachine/rendering/ad/view/ExpandActivityKt;->access$removeFromCache(Lio/bidmachine/rendering/ad/view/AdView;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 9
    invoke-static/range {v1 .. v6}, Lio/bidmachine/rendering/ad/view/AdView;->collapse$default(Lio/bidmachine/rendering/ad/view/AdView;Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;ZILjava/lang/Object;)V

    :cond_19
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lio/bidmachine/rendering/ad/view/ExpandActivity;->a:Lio/bidmachine/rendering/ad/view/AdView;

    return-void
.end method
