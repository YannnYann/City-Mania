###### Class com.ironsource.U9 (com.ironsource.U9)
.class public final Lcom/ironsource/U9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Lorg/json/JSONObject;

.field private final d:Lcom/ironsource/s;

.field private final e:Lcom/ironsource/s;

.field private final f:Lcom/ironsource/s;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/s;Lcom/ironsource/s;Lcom/ironsource/s;)V
    .registers 8

    const-string v0, "controllerUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controllerConfig"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bannerConfig"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interstitialConfig"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rewardedConfig"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/ironsource/U9;->a:I

    .line 3
    iput-object p2, p0, Lcom/ironsource/U9;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/ironsource/U9;->c:Lorg/json/JSONObject;

    .line 5
    iput-object p4, p0, Lcom/ironsource/U9;->d:Lcom/ironsource/s;

    .line 6
    iput-object p5, p0, Lcom/ironsource/U9;->e:Lcom/ironsource/s;

    .line 7
    iput-object p6, p0, Lcom/ironsource/U9;->f:Lcom/ironsource/s;

    return-void
.end method

.method public static synthetic a(Lcom/ironsource/U9;ILjava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/s;Lcom/ironsource/s;Lcom/ironsource/s;ILjava/lang/Object;)Lcom/ironsource/U9;
    .registers 9

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_6

    .line 3
    iget p1, p0, Lcom/ironsource/U9;->a:I

    :cond_6
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_c

    iget-object p2, p0, Lcom/ironsource/U9;->b:Ljava/lang/String;

    :cond_c
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_12

    iget-object p3, p0, Lcom/ironsource/U9;->c:Lorg/json/JSONObject;

    :cond_12
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_18

    iget-object p4, p0, Lcom/ironsource/U9;->d:Lcom/ironsource/s;

    :cond_18
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_1e

    iget-object p5, p0, Lcom/ironsource/U9;->e:Lcom/ironsource/s;

    :cond_1e
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_24

    iget-object p6, p0, Lcom/ironsource/U9;->f:Lcom/ironsource/s;

    :cond_24
    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lcom/ironsource/U9;->a(ILjava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/s;Lcom/ironsource/s;Lcom/ironsource/s;)Lcom/ironsource/U9;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/U9;->a:I

    return v0
.end method

.method public final a(ILjava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/s;Lcom/ironsource/s;Lcom/ironsource/s;)Lcom/ironsource/U9;
    .registers 15

    .line 2
    const-string v0, "controllerUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controllerConfig"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bannerConfig"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interstitialConfig"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rewardedConfig"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/ironsource/U9;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/ironsource/U9;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/s;Lcom/ironsource/s;Lcom/ironsource/s;)V

    return-object v1
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/U9;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lorg/json/JSONObject;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/U9;->c:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final d()Lcom/ironsource/s;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/U9;->d:Lcom/ironsource/s;

    return-object v0
.end method

.method public final e()Lcom/ironsource/s;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/U9;->e:Lcom/ironsource/s;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/ironsource/U9;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/ironsource/U9;

    iget v1, p0, Lcom/ironsource/U9;->a:I

    iget v3, p1, Lcom/ironsource/U9;->a:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/ironsource/U9;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/ironsource/U9;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/ironsource/U9;->c:Lorg/json/JSONObject;

    iget-object v3, p1, Lcom/ironsource/U9;->c:Lorg/json/JSONObject;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lcom/ironsource/U9;->d:Lcom/ironsource/s;

    iget-object v3, p1, Lcom/ironsource/U9;->d:Lcom/ironsource/s;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    return v2

    :cond_34
    iget-object v1, p0, Lcom/ironsource/U9;->e:Lcom/ironsource/s;

    iget-object v3, p1, Lcom/ironsource/U9;->e:Lcom/ironsource/s;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    return v2

    :cond_3f
    iget-object v1, p0, Lcom/ironsource/U9;->f:Lcom/ironsource/s;

    iget-object p1, p1, Lcom/ironsource/U9;->f:Lcom/ironsource/s;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a

    return v2

    :cond_4a
    return v0
.end method

.method public final f()Lcom/ironsource/s;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/U9;->f:Lcom/ironsource/s;

    return-object v0
.end method

.method public final g()Lcom/ironsource/s;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/U9;->d:Lcom/ironsource/s;

    return-object v0
.end method

.method public final h()Lorg/json/JSONObject;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/U9;->c:Lorg/json/JSONObject;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/ironsource/U9;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/U9;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/U9;->c:Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/U9;->d:Lcom/ironsource/s;

    invoke-virtual {v1}, Lcom/ironsource/s;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/U9;->e:Lcom/ironsource/s;

    invoke-virtual {v1}, Lcom/ironsource/s;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/U9;->f:Lcom/ironsource/s;

    invoke-virtual {v1}, Lcom/ironsource/s;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/U9;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Lcom/ironsource/s;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/U9;->e:Lcom/ironsource/s;

    return-object v0
.end method

.method public final k()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/U9;->a:I

    return v0
.end method

.method public final l()Lcom/ironsource/s;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/U9;->f:Lcom/ironsource/s;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .line 1
    iget v0, p0, Lcom/ironsource/U9;->a:I

    iget-object v1, p0, Lcom/ironsource/U9;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/U9;->c:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/ironsource/U9;->d:Lcom/ironsource/s;

    iget-object v4, p0, Lcom/ironsource/U9;->e:Lcom/ironsource/s;

    iget-object v5, p0, Lcom/ironsource/U9;->f:Lcom/ironsource/s;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IronSourceAdsInitConfig(logLevel="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", controllerUrl="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", controllerConfig="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", bannerConfig="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", interstitialConfig="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", rewardedConfig="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
