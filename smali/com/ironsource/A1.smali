###### Class com.ironsource.A1 (com.ironsource.A1)
.class public final Lcom/ironsource/A1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:J

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Z

.field private final f:Ljava/lang/String;

.field private final g:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JILjava/lang/String;IZLjava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;)V"
        }
    .end annotation

    const-string v0, "description"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "processName"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readMainThreadStack"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/ironsource/A1;->a:J

    .line 3
    iput p3, p0, Lcom/ironsource/A1;->b:I

    .line 4
    iput-object p4, p0, Lcom/ironsource/A1;->c:Ljava/lang/String;

    .line 5
    iput p5, p0, Lcom/ironsource/A1;->d:I

    .line 6
    iput-boolean p6, p0, Lcom/ironsource/A1;->e:Z

    .line 7
    iput-object p7, p0, Lcom/ironsource/A1;->f:Ljava/lang/String;

    .line 8
    iput-object p8, p0, Lcom/ironsource/A1;->g:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static synthetic a(Lcom/ironsource/A1;JILjava/lang/String;IZLjava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/ironsource/A1;
    .registers 20

    and-int/lit8 v0, p9, 0x1

    if-eqz v0, :cond_6

    .line 3
    iget-wide p1, p0, Lcom/ironsource/A1;->a:J

    :cond_6
    move-wide v1, p1

    and-int/lit8 p1, p9, 0x2

    if-eqz p1, :cond_d

    iget p3, p0, Lcom/ironsource/A1;->b:I

    :cond_d
    move v3, p3

    and-int/lit8 p1, p9, 0x4

    if-eqz p1, :cond_14

    iget-object p4, p0, Lcom/ironsource/A1;->c:Ljava/lang/String;

    :cond_14
    move-object v4, p4

    and-int/lit8 p1, p9, 0x8

    if-eqz p1, :cond_1b

    iget p5, p0, Lcom/ironsource/A1;->d:I

    :cond_1b
    move v5, p5

    and-int/lit8 p1, p9, 0x10

    if-eqz p1, :cond_22

    iget-boolean p6, p0, Lcom/ironsource/A1;->e:Z

    :cond_22
    move v6, p6

    and-int/lit8 p1, p9, 0x20

    if-eqz p1, :cond_2b

    iget-object p1, p0, Lcom/ironsource/A1;->f:Ljava/lang/String;

    move-object v7, p1

    goto :goto_2d

    :cond_2b
    move-object/from16 v7, p7

    :goto_2d
    and-int/lit8 p1, p9, 0x40

    if-eqz p1, :cond_36

    iget-object p1, p0, Lcom/ironsource/A1;->g:Lkotlin/jvm/functions/Function0;

    move-object v8, p1

    :goto_34
    move-object v0, p0

    goto :goto_39

    :cond_36
    move-object/from16 v8, p8

    goto :goto_34

    :goto_39
    invoke-virtual/range {v0 .. v8}, Lcom/ironsource/A1;->a(JILjava/lang/String;IZLjava/lang/String;Lkotlin/jvm/functions/Function0;)Lcom/ironsource/A1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/A1;->a:J

    return-wide v0
.end method

.method public final a(JILjava/lang/String;IZLjava/lang/String;Lkotlin/jvm/functions/Function0;)Lcom/ironsource/A1;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;)",
            "Lcom/ironsource/A1;"
        }
    .end annotation

    .line 2
    const-string v0, "description"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "processName"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readMainThreadStack"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/ironsource/A1;

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v9}, Lcom/ironsource/A1;-><init>(JILjava/lang/String;IZLjava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-object v1
.end method

.method public final b()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/A1;->b:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/A1;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/A1;->d:I

    return v0
.end method

.method public final e()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/A1;->e:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/A1;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Lkotlin/jvm/functions/Function0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/A1;->g:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/A1;->c:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final i()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/A1;->b:I

    return v0
.end method

.method public final j()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/A1;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Lkotlin/jvm/functions/Function0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/A1;->g:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final l()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/A1;->d:I

    return v0
.end method

.method public final m()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/A1;->a:J

    return-wide v0
.end method

.method public final n()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/A1;->e:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    .line 1
    iget-wide v0, p0, Lcom/ironsource/A1;->a:J

    iget v2, p0, Lcom/ironsource/A1;->b:I

    iget-object v3, p0, Lcom/ironsource/A1;->c:Ljava/lang/String;

    iget v4, p0, Lcom/ironsource/A1;->d:I

    iget-boolean v5, p0, Lcom/ironsource/A1;->e:Z

    iget-object v6, p0, Lcom/ironsource/A1;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/ironsource/A1;->g:Lkotlin/jvm/functions/Function0;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AnrExitRecord(timestampMillis="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", importance="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", description="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", reason="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isAnrReason="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", processName="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", readMainThreadStack="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
