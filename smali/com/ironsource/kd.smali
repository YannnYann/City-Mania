###### Class com.ironsource.C3693kd (com.ironsource.kd)
.class public final Lcom/ironsource/kd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:I

.field private e:[I

.field private f:[I


# direct methods
.method public constructor <init>()V
    .registers 10

    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v8}, Lcom/ironsource/kd;-><init>(ZLjava/lang/String;ZI[I[IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;ZI[I[I)V
    .registers 8

    const-string v0, "pixelEventsUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/ironsource/kd;->a:Z

    .line 4
    iput-object p2, p0, Lcom/ironsource/kd;->b:Ljava/lang/String;

    .line 5
    iput-boolean p3, p0, Lcom/ironsource/kd;->c:Z

    .line 6
    iput p4, p0, Lcom/ironsource/kd;->d:I

    .line 7
    iput-object p5, p0, Lcom/ironsource/kd;->e:[I

    .line 8
    iput-object p6, p0, Lcom/ironsource/kd;->f:[I

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;ZI[I[IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 10

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_5

    const/4 p1, 0x1

    :cond_5
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_b

    .line 9
    const-string p2, "https://o-sdk.mediation.unity3d.com/mediation?adUnit=3"

    :cond_b
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_10

    const/4 p3, 0x0

    :cond_10
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_15

    const/4 p4, -0x1

    :cond_15
    and-int/lit8 p8, p7, 0x10

    const/4 v0, 0x0

    if-eqz p8, :cond_1b

    move-object p5, v0

    :cond_1b
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_27

    move-object p8, v0

    move p6, p4

    move-object p7, p5

    move-object p4, p2

    move p5, p3

    move-object p2, p0

    move p3, p1

    goto :goto_2e

    :cond_27
    move-object p8, p6

    move-object p7, p5

    move p5, p3

    move p6, p4

    move p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 10
    :goto_2e
    invoke-direct/range {p2 .. p8}, Lcom/ironsource/kd;-><init>(ZLjava/lang/String;ZI[I[I)V

    return-void
.end method

.method public static synthetic a(Lcom/ironsource/kd;ZLjava/lang/String;ZI[I[IILjava/lang/Object;)Lcom/ironsource/kd;
    .registers 9

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_6

    .line 3
    iget-boolean p1, p0, Lcom/ironsource/kd;->a:Z

    :cond_6
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_c

    iget-object p2, p0, Lcom/ironsource/kd;->b:Ljava/lang/String;

    :cond_c
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_12

    iget-boolean p3, p0, Lcom/ironsource/kd;->c:Z

    :cond_12
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_18

    iget p4, p0, Lcom/ironsource/kd;->d:I

    :cond_18
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_1e

    iget-object p5, p0, Lcom/ironsource/kd;->e:[I

    :cond_1e
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_24

    iget-object p6, p0, Lcom/ironsource/kd;->f:[I

    :cond_24
    move-object p7, p5

    move-object p8, p6

    move p5, p3

    move p6, p4

    move p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lcom/ironsource/kd;->a(ZLjava/lang/String;ZI[I[I)Lcom/ironsource/kd;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(ZLjava/lang/String;ZI[I[I)Lcom/ironsource/kd;
    .registers 15

    .line 2
    const-string v0, "pixelEventsUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/ironsource/kd;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/ironsource/kd;-><init>(ZLjava/lang/String;ZI[I[I)V

    return-object v1
.end method

.method public final a(I)V
    .registers 2

    .line 6
    iput p1, p0, Lcom/ironsource/kd;->d:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/ironsource/kd;->b:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .registers 2

    .line 5
    iput-boolean p1, p0, Lcom/ironsource/kd;->c:Z

    return-void
.end method

.method public final a([I)V
    .registers 2

    .line 7
    iput-object p1, p0, Lcom/ironsource/kd;->f:[I

    return-void
.end method

.method public final a()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/kd;->a:Z

    return v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/kd;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Z)V
    .registers 2

    .line 2
    iput-boolean p1, p0, Lcom/ironsource/kd;->a:Z

    return-void
.end method

.method public final b([I)V
    .registers 2

    .line 3
    iput-object p1, p0, Lcom/ironsource/kd;->e:[I

    return-void
.end method

.method public final c()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/kd;->c:Z

    return v0
.end method

.method public final d()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/kd;->d:I

    return v0
.end method

.method public final e()[I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/kd;->e:[I

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/ironsource/kd;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/ironsource/kd;

    iget-boolean v1, p0, Lcom/ironsource/kd;->a:Z

    iget-boolean v3, p1, Lcom/ironsource/kd;->a:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/ironsource/kd;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/ironsource/kd;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-boolean v1, p0, Lcom/ironsource/kd;->c:Z

    iget-boolean v3, p1, Lcom/ironsource/kd;->c:Z

    if-eq v1, v3, :cond_25

    return v2

    :cond_25
    iget v1, p0, Lcom/ironsource/kd;->d:I

    iget v3, p1, Lcom/ironsource/kd;->d:I

    if-eq v1, v3, :cond_2c

    return v2

    :cond_2c
    iget-object v1, p0, Lcom/ironsource/kd;->e:[I

    iget-object v3, p1, Lcom/ironsource/kd;->e:[I

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    return v2

    :cond_37
    iget-object v1, p0, Lcom/ironsource/kd;->f:[I

    iget-object p1, p1, Lcom/ironsource/kd;->f:[I

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_42

    return v2

    :cond_42
    return v0
.end method

.method public final f()[I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/kd;->f:[I

    return-object v0
.end method

.method public final g()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/kd;->c:Z

    return v0
.end method

.method public final h()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/kd;->d:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/kd;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/kd;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/ironsource/kd;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/ironsource/kd;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/kd;->e:[I

    const/4 v2, 0x0

    if-nez v1, :cond_2a

    move v1, v2

    goto :goto_2e

    :cond_2a
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    :goto_2e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/kd;->f:[I

    if-nez v1, :cond_36

    goto :goto_3a

    :cond_36
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    :goto_3a
    add-int/2addr v0, v2

    return v0
.end method

.method public final i()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/kd;->a:Z

    return v0
.end method

.method public final j()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/kd;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final k()[I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/kd;->f:[I

    return-object v0
.end method

.method public final l()[I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/kd;->e:[I

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/kd;->a:Z

    iget-object v1, p0, Lcom/ironsource/kd;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/ironsource/kd;->c:Z

    iget v3, p0, Lcom/ironsource/kd;->d:I

    iget-object v4, p0, Lcom/ironsource/kd;->e:[I

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ironsource/kd;->f:[I

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PixelSettings(pixelEventsEnabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", pixelEventsUrl="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", pixelEventsCompression="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", pixelEventsCompressionLevel="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", pixelOptOut="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", pixelOptIn="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
