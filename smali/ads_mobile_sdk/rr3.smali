###### Class ads_mobile_sdk.rr3 (ads_mobile_sdk.rr3)
.class public abstract Lads_mobile_sdk/rr3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public a:Lads_mobile_sdk/ks3;

.field public final b:Lads_mobile_sdk/rr3;

.field public final c:J

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final e:Ljava/util/concurrent/atomic/AtomicLong;

.field public final f:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/s11;Lads_mobile_sdk/ks3;Ljava/util/UUID;Lads_mobile_sdk/rr3;JZ)V
    .registers 8

    .line 1
    const-string p7, "cuiName"

    invoke-static {p1, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p7, "traceMetaSet"

    invoke-static {p2, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p7, "rootTraceId"

    invoke-static {p3, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lads_mobile_sdk/rr3;->a:Lads_mobile_sdk/ks3;

    .line 21
    iput-object p4, p0, Lads_mobile_sdk/rr3;->b:Lads_mobile_sdk/rr3;

    .line 22
    iput-wide p5, p0, Lads_mobile_sdk/rr3;->c:J

    .line 30
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p4, 0x0

    invoke-direct {p2, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lads_mobile_sdk/rr3;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p2, p0, Lads_mobile_sdk/rr3;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 32
    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p2, p0, Lads_mobile_sdk/rr3;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 35
    invoke-static {p1, p3}, Lads_mobile_sdk/cl0;->a(Lads_mobile_sdk/s11;Ljava/util/UUID;)V

    return-void
.end method


# virtual methods
.method public abstract a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;
.end method

.method public a()V
    .registers 6

    .line 87
    iget-object v0, p0, Lads_mobile_sdk/rr3;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 89
    invoke-virtual {p0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v0

    iget-object v0, v0, Lads_mobile_sdk/uj2;->c:Lads_mobile_sdk/s11;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This trace "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " has already finished, can\'t finish again"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {v0}, Lads_mobile_sdk/sr3;->a(Ljava/lang/String;)V

    return-void

    .line 96
    :cond_2d
    invoke-virtual {p0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v0

    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object v1, p0, Lads_mobile_sdk/rr3;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    sget-object v3, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v1, v2, v3}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lads_mobile_sdk/uj2;->b(J)V

    .line 97
    invoke-virtual {p0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v0

    iget-object v1, p0, Lads_mobile_sdk/rr3;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-static {v1, v2, v3}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lads_mobile_sdk/uj2;->a(J)V

    .line 98
    iget-object v0, p0, Lads_mobile_sdk/rr3;->b:Lads_mobile_sdk/rr3;

    if-eqz v0, :cond_74

    invoke-virtual {p0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v1

    invoke-virtual {v1}, Lads_mobile_sdk/uj2;->b()J

    move-result-wide v1

    invoke-virtual {p0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v3

    invoke-virtual {v3}, Lads_mobile_sdk/uj2;->a()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v1

    .line 99
    iget-object v0, v0, Lads_mobile_sdk/rr3;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v1, v2}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 100
    :cond_74
    invoke-virtual {p0}, Lads_mobile_sdk/rr3;->h()V

    .line 101
    invoke-virtual {p0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v0

    iget-object v1, p0, Lads_mobile_sdk/rr3;->a:Lads_mobile_sdk/ks3;

    invoke-static {v0, v1}, Lads_mobile_sdk/cl0;->a(Lads_mobile_sdk/uj2;Lads_mobile_sdk/ks3;)V

    return-void
.end method

.method public final a(Lads_mobile_sdk/ks3;)V
    .registers 3

    .line 175
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    iput-object p1, p0, Lads_mobile_sdk/rr3;->a:Lads_mobile_sdk/ks3;

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .registers 4

    .line 102
    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lads_mobile_sdk/rr3;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 167
    invoke-virtual {p0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object p1

    iget-object p1, p1, Lads_mobile_sdk/uj2;->c:Lads_mobile_sdk/s11;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This trace "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has already finished, can\'t set causing exception"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 168
    invoke-static {p1}, Lads_mobile_sdk/sr3;->a(Ljava/lang/String;)V

    return-void

    .line 173
    :cond_31
    invoke-virtual {p0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lads_mobile_sdk/uj2;->m:Z

    .line 174
    invoke-virtual {p0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v0

    iput-object p1, v0, Lads_mobile_sdk/uj2;->o:Ljava/lang/Throwable;

    return-void
.end method

.method public final b()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    .line 30
    iget-object v0, p0, Lads_mobile_sdk/rr3;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public final b(Ljava/lang/Throwable;)V
    .registers 4

    .line 31
    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lads_mobile_sdk/rr3;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 80
    invoke-virtual {p0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object p1

    iget-object p1, p1, Lads_mobile_sdk/uj2;->c:Lads_mobile_sdk/s11;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This trace "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has already finished, can\'t set exception"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-static {p1}, Lads_mobile_sdk/sr3;->a(Ljava/lang/String;)V

    return-void

    .line 86
    :cond_31
    invoke-virtual {p0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lads_mobile_sdk/uj2;->m:Z

    .line 87
    invoke-virtual {p0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v0

    iput-object p1, v0, Lads_mobile_sdk/uj2;->n:Ljava/lang/Throwable;

    return-void
.end method

.method public final c()I
    .registers 2

    .line 26
    invoke-virtual {p0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v0

    iget v0, v0, Lads_mobile_sdk/uj2;->a:I

    return v0
.end method

.method public final close()V
    .registers 1

    .line 83
    invoke-static {p0}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/rr3;)V

    return-void
.end method

.method public final d()Lads_mobile_sdk/rr3;
    .registers 2

    .line 21
    iget-object v0, p0, Lads_mobile_sdk/rr3;->b:Lads_mobile_sdk/rr3;

    return-object v0
.end method

.method public abstract e()Lads_mobile_sdk/uj2;
.end method

.method public final f()J
    .registers 3

    .line 22
    iget-wide v0, p0, Lads_mobile_sdk/rr3;->c:J

    return-wide v0
.end method

.method public final g()Lads_mobile_sdk/ks3;
    .registers 2

    .line 19
    iget-object v0, p0, Lads_mobile_sdk/rr3;->a:Lads_mobile_sdk/ks3;

    return-object v0
.end method

.method public abstract h()V
.end method
