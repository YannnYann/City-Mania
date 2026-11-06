###### Class io.bidmachine.rendering.internal.meanbackground.l (io.bidmachine.rendering.internal.meanbackground.l)
.class public final Lio/bidmachine/rendering/internal/meanbackground/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/meanbackground/l$a;
    }
.end annotation


# static fields
.field public static final b:Lio/bidmachine/rendering/internal/meanbackground/l$a;


# instance fields
.field public final a:Lio/bidmachine/util/log/LoggerInstance;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/meanbackground/l$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/rendering/internal/meanbackground/l$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/rendering/internal/meanbackground/l;->b:Lio/bidmachine/rendering/internal/meanbackground/l$a;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/util/log/LoggerInstance;)V
    .registers 3

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/l;->a:Lio/bidmachine/util/log/LoggerInstance;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10

    instance-of v0, p3, Lio/bidmachine/rendering/internal/meanbackground/l$b;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lio/bidmachine/rendering/internal/meanbackground/l$b;

    iget v1, v0, Lio/bidmachine/rendering/internal/meanbackground/l$b;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/bidmachine/rendering/internal/meanbackground/l$b;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/bidmachine/rendering/internal/meanbackground/l$b;

    invoke-direct {v0, p0, p3}, Lio/bidmachine/rendering/internal/meanbackground/l$b;-><init>(Lio/bidmachine/rendering/internal/meanbackground/l;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lio/bidmachine/rendering/internal/meanbackground/l$b;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lio/bidmachine/rendering/internal/meanbackground/l$b;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_3d

    if-ne v2, v3, :cond_35

    iget-wide p1, v0, Lio/bidmachine/rendering/internal/meanbackground/l$b;->c:J

    iget-object v1, v0, Lio/bidmachine/rendering/internal/meanbackground/l$b;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Lio/bidmachine/rendering/internal/meanbackground/l$b;->a:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/rendering/internal/meanbackground/l;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide v4, p1

    move-object p1, v1

    goto :goto_54

    :cond_35
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3d
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 3
    iput-object p0, v0, Lio/bidmachine/rendering/internal/meanbackground/l$b;->a:Ljava/lang/Object;

    iput-object p1, v0, Lio/bidmachine/rendering/internal/meanbackground/l$b;->b:Ljava/lang/Object;

    iput-wide v4, v0, Lio/bidmachine/rendering/internal/meanbackground/l$b;->c:J

    iput v3, v0, Lio/bidmachine/rendering/internal/meanbackground/l$b;->f:I

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_53

    return-object v1

    :cond_53
    move-object v0, p0

    .line 4
    :goto_54
    iget-object p2, v0, Lio/bidmachine/rendering/internal/meanbackground/l;->a:Lio/bidmachine/util/log/LoggerInstance;

    new-instance v0, Lio/bidmachine/rendering/internal/meanbackground/l$c;

    invoke-direct {v0, p1, v4, v5}, Lio/bidmachine/rendering/internal/meanbackground/l$c;-><init>(Ljava/lang/String;J)V

    const-string p1, "MeanPerformanceMeasurer"

    invoke-interface {p2, p1, v0}, Lio/bidmachine/util/log/LoggerInstance;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    return-object p3
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.l.a (io.bidmachine.rendering.internal.meanbackground.l$a)
.class public final Lio/bidmachine/rendering/internal/meanbackground/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/meanbackground/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/meanbackground/l$a;-><init>()V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.l.b (io.bidmachine.rendering.internal.meanbackground.l$b)
.class public final Lio/bidmachine/rendering/internal/meanbackground/l$b;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/meanbackground/l;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:J

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lio/bidmachine/rendering/internal/meanbackground/l;

.field public f:I


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/meanbackground/l;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/l$b;->e:Lio/bidmachine/rendering/internal/meanbackground/l;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/l$b;->d:Ljava/lang/Object;

    iget p1, p0, Lio/bidmachine/rendering/internal/meanbackground/l$b;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/bidmachine/rendering/internal/meanbackground/l$b;->f:I

    iget-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/l$b;->e:Lio/bidmachine/rendering/internal/meanbackground/l;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lio/bidmachine/rendering/internal/meanbackground/l;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.l.c (io.bidmachine.rendering.internal.meanbackground.l$c)
.class public final Lio/bidmachine/rendering/internal/meanbackground/l$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/meanbackground/l;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .registers 4

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/l$c;->a:Ljava/lang/String;

    iput-wide p2, p0, Lio/bidmachine/rendering/internal/meanbackground/l$c;->b:J

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/l$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " took "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lio/bidmachine/rendering/internal/meanbackground/l$c;->b:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/meanbackground/l$c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
