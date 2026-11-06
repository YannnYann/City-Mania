###### Class io.bidmachine.rendering.internal.state.d (io.bidmachine.rendering.internal.state.d)
.class public final Lio/bidmachine/rendering/internal/state/d;
.super Lio/bidmachine/rendering/internal/state/c;
.source "SourceFile"


# instance fields
.field public final r:Lio/bidmachine/rendering/internal/j;

.field public final s:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/bidmachine/rendering/internal/j;)V
    .registers 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineDispatchers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/internal/state/c;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Lio/bidmachine/rendering/internal/state/d;->r:Lio/bidmachine/rendering/internal/j;

    .line 5
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lio/bidmachine/rendering/internal/state/d$a;

    invoke-direct {p2, p0}, Lio/bidmachine/rendering/internal/state/d$a;-><init>(Lio/bidmachine/rendering/internal/state/d;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/rendering/internal/state/d;->s:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final u()Lio/bidmachine/rendering/internal/j;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/d;->r:Lio/bidmachine/rendering/internal/j;

    return-object v0
.end method

.method public final v()Lio/bidmachine/rendering/internal/state/b;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/d;->s:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/rendering/internal/state/b;

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.state.d.a (io.bidmachine.rendering.internal.state.d$a)
.class public final Lio/bidmachine/rendering/internal/state/d$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/state/d;-><init>(Ljava/lang/String;Lio/bidmachine/rendering/internal/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/state/d;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/state/d;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/state/d$a;->a:Lio/bidmachine/rendering/internal/state/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/rendering/internal/state/b;
    .registers 4

    .line 1
    new-instance v0, Lio/bidmachine/rendering/internal/state/b;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/state/d$a;->a:Lio/bidmachine/rendering/internal/state/d;

    invoke-virtual {v1}, Lio/bidmachine/rendering/internal/state/d;->u()Lio/bidmachine/rendering/internal/j;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/bidmachine/rendering/internal/state/b;-><init>(Lio/bidmachine/rendering/internal/state/a;Lio/bidmachine/rendering/internal/j;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/state/d$a;->a()Lio/bidmachine/rendering/internal/state/b;

    move-result-object v0

    return-object v0
.end method
