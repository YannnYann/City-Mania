###### Class com.ironsource.adqualitysdk.sdk.i.C0339 (com.ironsource.adqualitysdk.sdk.i.ڒ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ڒ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ſ;


# instance fields
.field public final synthetic ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ڋ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ڋ;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ڒ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ڋ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 8

    .line 1
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﭴ()Z

    move-result v0

    .line 2
    sput-boolean v0, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﮉ:Z

    .line 3
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﭸ()Z

    move-result v0

    .line 4
    sput-boolean v0, Lcom/ironsource/adqualitysdk/sdk/i/ṟ;->ﱡ:Z

    .line 5
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ڒ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ڋ;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ڋ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﻏ()Ljava/util/HashMap;

    move-result-object v1

    .line 6
    iput-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﱟ:Ljava/util/HashMap;

    .line 7
    const-string v0, "8Qp++pqwrFDAKHH6nrS9TQ==\n"

    const-string v1, "smUQlP/T2D8=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "41iKaB0VjQfAEZBnFg2NCMtYg2wbWYcGyV+cagsWlho=\n"

    const-string v2, "pzH5CX955Gk=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ڒ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ڋ;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ڋ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iget-object v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ｋ:Ljava/util/ArrayList;

    if-eqz v2, :cond_4d

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ｋ:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_52

    .line 14
    :cond_4d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 15
    :goto_52
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_56
    :goto_56
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_70

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;

    .line 16
    iget-object v4, v3, Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓖ;

    .line 17
    iget-object v4, v4, Lcom/ironsource/adqualitysdk/sdk/i/ᓖ;->ｋ:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﾒ(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 19
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_56

    .line 22
    :cond_70
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_74
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_cb

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;

    .line 23
    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﭖ:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "V4CKEsI2wHZ0yQ==\n"

    const-string v6, "E+n5c6BaqRg=\n"

    invoke-static {v5, v6}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget-object v5, v2, Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓖ;

    .line 25
    iget-object v5, v5, Lcom/ironsource/adqualitysdk/sdk/i/ᓖ;->ﻛ:Ljava/lang/String;

    .line 26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string v5, "jhgDAdBe0zHBCQ==\n"

    const-string v6, "rntsb747sEU=\n"

    invoke-static {v5, v6, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ヾ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 28
    invoke-static {v3, v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 29
    iget-object v3, v2, Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓖ;

    .line 30
    iget-object v3, v3, Lcom/ironsource/adqualitysdk/sdk/i/ᓖ;->ｋ:Ljava/lang/String;

    .line 31
    monitor-enter v0

    .line 32
    :try_start_aa
    iget-object v4, v0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﻐ:Ljava/util/HashMap;
    :try_end_ac
    .catchall {:try_start_aa .. :try_end_ac} :catchall_c8

    monitor-exit v0

    .line 33
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    invoke-virtual {v0, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﾒ(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 34
    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/ঽ;

    invoke-direct {v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ঽ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;)V

    invoke-static {v3}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    .line 40
    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﻛ()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_74

    :catchall_c8
    move-exception v1

    .line 41
    monitor-exit v0

    throw v1

    :cond_cb
    return-void
.end method
