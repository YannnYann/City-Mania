###### Class io.bidmachine.rendering.ad.view.a (io.bidmachine.rendering.ad.view.a)
.class public final Lio/bidmachine/rendering/ad/view/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lio/bidmachine/rendering/model/animation/AnimationParams;

.field public final c:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V
    .registers 5

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/rendering/ad/view/a;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lio/bidmachine/rendering/ad/view/a;->b:Lio/bidmachine/rendering/model/animation/AnimationParams;

    .line 4
    iput-object p3, p0, Lio/bidmachine/rendering/ad/view/a;->c:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/rendering/model/animation/AnimationParams;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/a;->b:Lio/bidmachine/rendering/model/animation/AnimationParams;

    return-object v0
.end method

.method public final b()Lkotlin/jvm/functions/Function0;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/a;->c:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/a;->a:Ljava/lang/String;

    return-object v0
.end method
