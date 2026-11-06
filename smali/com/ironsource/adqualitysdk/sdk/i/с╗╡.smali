###### Class com.ironsource.adqualitysdk.sdk.i.C0749 (com.ironsource.adqualitysdk.sdk.i.ỵ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ỵ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ｋ:Lorg/json/JSONObject;

.field public final synthetic ﾇ:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ỵ;->ﾇ:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ỵ;->ｋ:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 13

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ỵ;->ﾇ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/Ꭻ;

    .line 2
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ỵ;->ｋ:Lorg/json/JSONObject;

    .line 3
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/Ꭻ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ܕ;

    .line 4
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ܕ;->ﺙ:Lcom/ironsource/adqualitysdk/sdk/i/ϛ;

    .line 5
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ϛ;->ﱟ:Landroid/content/Context;

    .line 6
    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/į;->Ὑ:Ljava/lang/String;

    .line 7
    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/Į;->ﾒ:I

    .line 8
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/į;->ᖺ:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 14
    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ȉ;->ﾒ(Landroid/content/Context;)Lcom/ironsource/adqualitysdk/sdk/i/ȉ;

    move-result-object v1

    .line 15
    iget-boolean v3, v1, Lcom/ironsource/adqualitysdk/sdk/i/ȉ;->ﾒ:Z

    if-nez v3, :cond_36

    goto :goto_6

    .line 18
    :cond_36
    iget-object v3, v1, Lcom/ironsource/adqualitysdk/sdk/i/ȉ;->ｋ:Ljava/util/HashMap;

    monitor-enter v3

    .line 19
    :try_start_39
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 20
    iget-object v4, v1, Lcom/ironsource/adqualitysdk/sdk/i/ȉ;->ﾇ:Landroid/content/Context;

    .line 21
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 22
    invoke-virtual {v2, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 24
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 25
    invoke-virtual {v2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 26
    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    .line 29
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v6

    and-int/lit8 v6, v6, 0x8

    const/4 v7, 0x0

    if-eqz v6, :cond_5b

    const/4 v6, 0x1

    goto :goto_5c

    :cond_5b
    move v6, v7

    :goto_5c
    if-eqz v6, :cond_99

    .line 30
    sget-object v8, Lcom/ironsource/adqualitysdk/sdk/i/ȉ;->ﻏ:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CS4yRgtOCWY8azVQF11A\n"

    const-string v11, "W0tBKWc4YAg=\n"

    invoke-static {v10, v11}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "EDtaH96VGHg=\n"

    const-string v10, "MEg5d7v4fVg=\n"

    invoke-static {v4, v10}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "03AriK0LKQada20=\n"

    const-string v5, "8x9NqMRlXWM=\n"

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_99

    :catchall_97
    move-exception v0

    goto :goto_e6

    .line 34
    :cond_99
    :goto_99
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ȉ;->ﻛ:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_e3

    if-eqz v6, :cond_c5

    .line 36
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ȉ;->ﻏ:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0xIXTTOkb2b7AhcefA==\n"

    const-string v8, "knFjJFzKTwo=\n"

    invoke-static {v5, v8}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_c5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_e3

    .line 40
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_dd

    const/4 v0, 0x0

    if-eqz v6, :cond_dc

    .line 41
    const-string v1, "C/Hngaucz9Zm8fSDqpvSxWb2+o63kNOR\n"

    const-string v2, "RpCT4sP1obE=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    throw v0

    .line 43
    :cond_dc
    throw v0

    .line 44
    :cond_dd
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    .line 100
    :cond_e3
    monitor-exit v3

    goto/16 :goto_6

    :goto_e6
    monitor-exit v3
    :try_end_e7
    .catchall {:try_start_39 .. :try_end_e7} :catchall_97

    throw v0

    :cond_e8
    return-void
.end method
