###### Class io.bidmachine.internal.K (io.bidmachine.internal.K)
.class public final Lio/bidmachine/internal/K;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/internal/K$d;
    }
.end annotation


# static fields
.field public static final i:Lio/bidmachine/internal/K$d;


# instance fields
.field public final a:J

.field public final b:Lkotlin/jvm/functions/Function0;

.field public final c:Lkotlin/jvm/functions/Function1;

.field public final d:Lkotlin/jvm/functions/Function1;

.field public volatile e:J

.field public volatile f:I

.field public volatile g:Ljava/lang/ref/WeakReference;

.field public h:Lio/bidmachine/internal/J;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/internal/K$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/internal/K$d;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/internal/K;->i:Lio/bidmachine/internal/K$d;

    return-void
.end method

.method public constructor <init>(JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .registers 8

    const-string v0, "currentTimeProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sleeper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageFactory"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bm:s:0:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 7
    iput-wide p1, p0, Lio/bidmachine/internal/K;->a:J

    .line 8
    iput-object p3, p0, Lio/bidmachine/internal/K;->b:Lkotlin/jvm/functions/Function0;

    .line 9
    iput-object p4, p0, Lio/bidmachine/internal/K;->c:Lkotlin/jvm/functions/Function1;

    .line 10
    iput-object p5, p0, Lio/bidmachine/internal/K;->d:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 14

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_6

    .line 1
    sget-object p3, Lio/bidmachine/internal/K$a;->a:Lio/bidmachine/internal/K$a;

    :cond_6
    move-object v3, p3

    and-int/lit8 p3, p6, 0x4

    if-eqz p3, :cond_d

    .line 2
    sget-object p4, Lio/bidmachine/internal/K$b;->a:Lio/bidmachine/internal/K$b;

    :cond_d
    move-object v4, p4

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_14

    .line 3
    sget-object p5, Lio/bidmachine/internal/K$c;->a:Lio/bidmachine/internal/K$c;

    :cond_14
    move-object v0, p0

    move-wide v1, p1

    move-object v5, p5

    .line 4
    invoke-direct/range {v0 .. v5}, Lio/bidmachine/internal/K;-><init>(JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 8

    .line 2
    iget-object v0, p0, Lio/bidmachine/internal/K;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 3
    iget-wide v2, p0, Lio/bidmachine/internal/K;->e:J

    iget-wide v4, p0, Lio/bidmachine/internal/K;->a:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_17

    .line 4
    const-string v2, ""

    goto :goto_20

    .line 6
    :cond_17
    iget-wide v2, p0, Lio/bidmachine/internal/K;->e:J

    iget-wide v4, p0, Lio/bidmachine/internal/K;->a:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 8
    :goto_20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bm:s:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lio/bidmachine/internal/K;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lio/bidmachine/internal/K;->a:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lio/bidmachine/internal/K;->a:J

    sub-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .registers 4

    .line 9
    iget v0, p0, Lio/bidmachine/internal/K;->f:I

    if-ge p1, v0, :cond_5

    goto :goto_1d

    :cond_5
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1e

    .line 13
    iget-object v0, p0, Lio/bidmachine/internal/K;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/internal/K;->e:J

    .line 14
    iput p1, p0, Lio/bidmachine/internal/K;->f:I

    .line 15
    :try_start_18
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_1d

    :catchall_1d
    :goto_1d
    return-void

    .line 17
    :cond_1e
    iput p1, p0, Lio/bidmachine/internal/K;->f:I

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/bidmachine/internal/K;->g:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final b()Lio/bidmachine/internal/J;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/internal/K;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_d

    goto :goto_1d

    .line 2
    :cond_d
    iget-object v1, p0, Lio/bidmachine/internal/K;->h:Lio/bidmachine/internal/J;

    if-nez v1, :cond_1c

    iget-object v1, p0, Lio/bidmachine/internal/K;->d:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/internal/J;

    .line 3
    iput-object v0, p0, Lio/bidmachine/internal/K;->h:Lio/bidmachine/internal/J;

    return-object v0

    :cond_1c
    return-object v1

    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()V
    .registers 2

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Lio/bidmachine/internal/K;->a(I)V

    return-void
.end method

.method public final d()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lio/bidmachine/internal/K;->a(I)V

    return-void
.end method

.method public final e()Ljava/lang/Object;
    .registers 11

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/internal/K;->b()Lio/bidmachine/internal/J;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_33

    .line 3
    :cond_9
    iget-wide v1, p0, Lio/bidmachine/internal/K;->e:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_20

    .line 5
    iget-object v1, p0, Lio/bidmachine/internal/K;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    goto :goto_20

    :catchall_1e
    move-exception v0

    goto :goto_3a

    .line 9
    :cond_20
    :goto_20
    iget-wide v5, p0, Lio/bidmachine/internal/K;->a:J

    sub-long v7, v1, v5

    .line 10
    new-instance v4, Lio/bidmachine/internal/I;

    if-eqz v3, :cond_2b

    const/4 v1, 0x1

    :goto_29
    move v9, v1

    goto :goto_2d

    :cond_2b
    const/4 v1, 0x0

    goto :goto_29

    :goto_2d
    invoke-direct/range {v4 .. v9}, Lio/bidmachine/internal/I;-><init>(JJZ)V

    invoke-virtual {v0, v4}, Lio/bidmachine/internal/J;->a(Lio/bidmachine/internal/I;)Ljava/lang/Object;

    .line 11
    :goto_33
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_39
    .catchall {:try_start_0 .. :try_end_39} :catchall_1e

    return-object v0

    :goto_3a
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final f()V
    .registers 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lio/bidmachine/internal/K;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_7

    .line 4
    :catchall_7
    invoke-virtual {p0}, Lio/bidmachine/internal/K;->e()Ljava/lang/Object;

    return-void
.end method

.method public run()V
    .registers 5

    .line 1
    :cond_0
    :goto_0
    iget v0, p0, Lio/bidmachine/internal/K;->f:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_18

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/internal/K;->f()V

    .line 4
    :try_start_8
    iget-object v0, p0, Lio/bidmachine/internal/K;->c:Lkotlin/jvm/functions/Function1;

    const-wide/16 v2, 0xc8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_13} :catch_14

    goto :goto_0

    .line 6
    :catch_14
    iget v0, p0, Lio/bidmachine/internal/K;->f:I

    if-ne v0, v1, :cond_0

    .line 11
    :cond_18
    invoke-virtual {p0}, Lio/bidmachine/internal/K;->f()V

    .line 13
    :try_start_1b
    iget-object v0, p0, Lio/bidmachine/internal/K;->c:Lkotlin/jvm/functions/Function1;

    const-wide/16 v1, 0x1388

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_28

    :catchall_28
    return-void
.end method

###### Class io.bidmachine.internal.K.a (io.bidmachine.internal.K$a)
.class public final Lio/bidmachine/internal/K$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/internal/K;-><init>(JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/internal/K$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/bidmachine/internal/K$a;

    invoke-direct {v0}, Lio/bidmachine/internal/K$a;-><init>()V

    sput-object v0, Lio/bidmachine/internal/K$a;->a:Lio/bidmachine/internal/K$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Long;
    .registers 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/internal/K$a;->a()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.internal.K.b (io.bidmachine.internal.K$b)
.class public final Lio/bidmachine/internal/K$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/internal/K;-><init>(JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/internal/K$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/bidmachine/internal/K$b;

    invoke-direct {v0}, Lio/bidmachine/internal/K$b;-><init>()V

    sput-object v0, Lio/bidmachine/internal/K$b;->a:Lio/bidmachine/internal/K$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/internal/K$b;->a(J)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.internal.K.c (io.bidmachine.internal.K$c)
.class public final Lio/bidmachine/internal/K$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/internal/K;-><init>(JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/internal/K$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/bidmachine/internal/K$c;

    invoke-direct {v0}, Lio/bidmachine/internal/K$c;-><init>()V

    sput-object v0, Lio/bidmachine/internal/K$c;->a:Lio/bidmachine/internal/K$c;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lio/bidmachine/internal/J;
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lio/bidmachine/internal/J;

    invoke-direct {v0, p1}, Lio/bidmachine/internal/J;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lio/bidmachine/internal/K$c;->a(Landroid/content/Context;)Lio/bidmachine/internal/J;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.internal.K.d (io.bidmachine.internal.K$d)
.class public final Lio/bidmachine/internal/K$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/internal/K;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
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
    invoke-direct {p0}, Lio/bidmachine/internal/K$d;-><init>()V

    return-void
.end method
