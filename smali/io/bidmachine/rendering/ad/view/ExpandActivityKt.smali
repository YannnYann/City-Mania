###### Class io.bidmachine.rendering.ad.view.ExpandActivityKt (io.bidmachine.rendering.ad.view.ExpandActivityKt)
.class public final Lio/bidmachine/rendering/ad/view/ExpandActivityKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lio/bidmachine/rendering/ad/view/ExpandActivityKt;->a:Ljava/util/Map;

    return-void
.end method

.method public static final a(Lio/bidmachine/rendering/ad/view/AdView;)V
    .registers 2

    .line 1
    sget-object v0, Lio/bidmachine/rendering/ad/view/ExpandActivityKt;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$getTEMP_AD_VIEW_MAP$p()Ljava/util/Map;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/rendering/ad/view/ExpandActivityKt;->a:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$removeFromCache(Lio/bidmachine/rendering/ad/view/AdView;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lio/bidmachine/rendering/ad/view/ExpandActivityKt;->a(Lio/bidmachine/rendering/ad/view/AdView;)V

    return-void
.end method

.method public static final startExpandActivity(Lio/bidmachine/rendering/ad/view/AdView;Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/rendering/ad/view/AdView;",
            "Lio/bidmachine/rendering/model/animation/AnimationParams;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_a
    invoke-virtual {p0}, Lio/bidmachine/rendering/ad/view/AdView;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lio/bidmachine/rendering/ad/view/ExpandActivityKt;->a:Ljava/util/Map;

    new-instance v2, Lio/bidmachine/rendering/ad/view/a;

    invoke-direct {v2, v0, p1, p2}, Lio/bidmachine/rendering/ad/view/a;-><init>(Ljava/lang/String;Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v2, Lio/bidmachine/rendering/ad/view/ExpandActivity;

    invoke-static {v1, v2}, Lio/bidmachine/rendering/internal/a;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 9
    const-string v2, "ad_view_tag"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_33
    .catchall {:try_start_a .. :try_end_33} :catchall_34

    return-void

    .line 17
    :catchall_34
    :try_start_34
    invoke-static {p0}, Lio/bidmachine/rendering/ad/view/ExpandActivityKt;->a(Lio/bidmachine/rendering/ad/view/AdView;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, p1, p2, v0}, Lio/bidmachine/rendering/ad/view/AdView;->collapse(Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;Z)V

    .line 23
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3e
    .catchall {:try_start_34 .. :try_end_3e} :catchall_3e

    :catchall_3e
    return-void
.end method
