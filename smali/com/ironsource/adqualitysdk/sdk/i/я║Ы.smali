###### Class com.ironsource.adqualitysdk.sdk.i.C0940 (com.ironsource.adqualitysdk.sdk.i.ﺛ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ﺛ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/Ꮠ;


# instance fields
.field public final synthetic ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/İ;

.field public final synthetic ﾒ:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/İ;Ljava/util/ArrayList;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺛ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/İ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺛ;->ﾒ:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾇ(Landroid/app/Activity;)V
    .registers 7

    .line 1
    const-string v0, "TOEdtWUGdslG/C+1dBZh\n"

    const-string v1, "I49b2gZzBZs=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺛ;->ﾒ:Ljava/util/ArrayList;

    .line 2
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺛ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/İ;

    invoke-static {v2, p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/İ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/İ;Landroid/app/Activity;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    const-string v2, "CkZw53b1x54HX3PVfPjXn2U=\n"

    const-string v3, "SzYAoRmWsu0=\n"

    invoke-static {v2, v3, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ϙ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺛ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/İ;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v0, v3, v4, v2}, Lcom/ironsource/adqualitysdk/sdk/i/İ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/İ;Ljava/lang/String;ZZLjava/util/List;)V

    .line 6
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ﺩ;

    invoke-direct {v1, p0, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ﺩ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ﺛ;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ｋ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    :cond_32
    return-void
.end method

.method public final ﾒ(Landroid/app/Activity;)V
    .registers 7

    .line 1
    const-string v0, "bmEdXAHr0PlufC8=\n"

    const-string v1, "AQ9bM2Keo7U=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺛ;->ﾒ:Ljava/util/ArrayList;

    .line 2
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺛ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/İ;

    invoke-static {v2, p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/İ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/İ;Landroid/app/Activity;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    const-string v2, "CkZw53b1x54HX3PVfPjXn2U=\n"

    const-string v3, "SzYAoRmWsu0=\n"

    invoke-static {v2, v3, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ϙ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺛ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/İ;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v0, v3, v4, v2}, Lcom/ironsource/adqualitysdk/sdk/i/İ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/İ;Ljava/lang/String;ZZLjava/util/List;)V

    .line 6
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ﺩ;

    invoke-direct {v1, p0, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ﺩ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ﺛ;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ｋ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    :cond_32
    return-void
.end method
