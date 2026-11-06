###### Class com.ironsource.adqualitysdk.sdk.i.C0973 (com.ironsource.adqualitysdk.sdk.i.Ｊ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/Ｊ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "2AC8\n"

    const-string v1, "tWHMGx7SaDE=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "nM/yU8YpDA==\n"

    const-string v1, "+qCAFqdKZKM=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "6HhDc7a3\n"

    const-string v1, "jhEvB9PF6tM=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;-><init>()V

    return-void
.end method

.method public static ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/İ;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 9

    .line 1
    const-class v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x1

    .line 2
    const-class v3, Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;

    invoke-static {p1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_3c

    .line 6
    const-class v4, Lcom/ironsource/adqualitysdk/sdk/i/İ;

    invoke-static {p1, v5, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾇ(Ljava/util/List;ILjava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 7
    invoke-static {p1, v5, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ironsource/adqualitysdk/sdk/i/İ;

    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_3c

    .line 9
    invoke-static {p1, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;I)Ljava/util/List;

    move-result-object v3

    goto :goto_3c

    .line 12
    :cond_38
    invoke-static {p1, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;I)Ljava/util/List;

    move-result-object v3

    .line 15
    :cond_3c
    :goto_3c
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move v4, v1

    .line 16
    :goto_42
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_65

    .line 17
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 18
    iget-object v5, p0, Lcom/ironsource/adqualitysdk/sdk/i/İ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;

    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    iget-object v6, v5, Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;

    .line 21
    invoke-virtual {v2, v5, v6, p0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/İ;Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/Ι;

    move-result-object v5

    .line 22
    iget-object v5, v5, Lcom/ironsource/adqualitysdk/sdk/i/Ι;->ﾒ:Ljava/lang/Object;

    .line 23
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    :cond_65
    return-object p1
.end method
