###### Class com.ironsource.adqualitysdk.sdk.i.C0995 (com.ironsource.adqualitysdk.sdk.i.ｬ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ｬ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "xwG3JDHZGKvG\n"

    const-string v1, "tGTZQHSrasQ=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;-><init>()V

    return-void
.end method

.method public static ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/İ;Ljava/util/ArrayList;)V
    .registers 13

    .line 1
    const-class v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/İ;->ﾇ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Jw==\n"

    const-string v4, "HUcavZFJdKk=\n"

    invoke-static {v2, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    .line 3
    const-class v2, Ljava/lang/Throwable;

    invoke-static {p1, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_89

    .line 7
    const-class v0, Lorg/json/JSONObject;

    invoke-static {p1, v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾇ(Ljava/util/List;ILjava/lang/Class;)Z

    move-result v6

    const-class v7, Ljava/lang/Boolean;

    if-eqz v6, :cond_6b

    .line 8
    invoke-static {p1, v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v6, 0x3

    if-le v2, v6, :cond_68

    invoke-static {p1, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾇ(Ljava/util/List;ILjava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 10
    invoke-static {p1, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_68
    move-object v7, v0

    move v10, v1

    goto :goto_7e

    .line 12
    :cond_6b
    invoke-static {p1, v2, v7}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾇ(Ljava/util/List;ILjava/lang/Class;)Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_7c

    .line 13
    invoke-static {p1, v2, v7}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_7c
    move v10, v1

    move-object v7, v6

    .line 15
    :goto_7e
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/İ;->ﾇ()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 16
    :try_start_85
    invoke-static/range {v2 .. v10}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/ironsource/adqualitysdk/sdk/i/ᵘ;Lorg/json/JSONObject;ZZZ)V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_95

    return-void

    .line 17
    :cond_89
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/İ;->ﾇ()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    .line 18
    :try_start_92
    invoke-static/range {v2 .. v10}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/ironsource/adqualitysdk/sdk/i/ᵘ;Lorg/json/JSONObject;ZZZ)V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_95

    :catchall_95
    return-void
.end method
