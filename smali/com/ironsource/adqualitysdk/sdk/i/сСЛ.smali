###### Class com.ironsource.adqualitysdk.sdk.i.C0479 (com.ironsource.adqualitysdk.sdk.i.ᑋ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᑋ;
.super Lcom/ironsource/adqualitysdk/sdk/i/Ӏ;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 1
    invoke-direct/range {p0 .. p2}, Lcom/ironsource/adqualitysdk/sdk/i/Ӏ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_c2

    .line 2
    iget-object v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;->ﻏ:Lcom/ironsource/adqualitysdk/sdk/i/İ;

    const/4 v3, 0x0

    if-eqz v2, :cond_15

    .line 3
    iget-object v4, v2, Lcom/ironsource/adqualitysdk/sdk/i/İ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᵩ;

    .line 4
    iget-object v4, v4, Lcom/ironsource/adqualitysdk/sdk/i/ᵩ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᴻ;

    .line 5
    iget-object v4, v4, Lcom/ironsource/adqualitysdk/sdk/i/ᴻ;->ﾒ:Ljava/lang/String;

    goto :goto_16

    :cond_15
    move-object v4, v3

    :goto_16
    if-eqz v2, :cond_1f

    .line 6
    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/İ;->ﱡ:Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;

    .line 7
    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓖ;

    .line 8
    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/ᓖ;->ｋ:Ljava/lang/String;

    goto :goto_20

    :cond_1f
    move-object v2, v3

    .line 9
    :goto_20
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_25
    if-eqz v1, :cond_31

    .line 11
    iget-object v6, v1, Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;

    if-eqz v6, :cond_31

    .line 12
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;

    goto :goto_25

    .line 14
    :cond_31
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;

    .line 15
    iget-object v6, v5, Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;

    .line 16
    iget-object v7, v6, Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᴻ;

    .line 17
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    iget-object v9, v7, Lcom/ironsource/adqualitysdk/sdk/i/ᴻ;->ﾇ:Ljava/lang/String;

    .line 19
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "iQ==\n"

    const-string v10, "p93gkhORYeM=\n"

    invoke-static {v9, v10}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/ironsource/adqualitysdk/sdk/i/ᴻ;->ﾒ:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 20
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/noxPtvM8Z4=\n"

    const-string v10, "nxRVTLSllbM=\n"

    invoke-static {v9, v10}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/ironsource/adqualitysdk/sdk/i/ᴻ;->ﾇ:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "Mw==\n"

    const-string v10, "HgsAX+fwR2I=\n"

    invoke-static {v9, v10}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/ironsource/adqualitysdk/sdk/i/ᴻ;->ﾒ:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v9, "5jPzEA==\n"

    const-string v10, "yECBfCO+vVY=\n"

    invoke-static {v9, v10, v8}, Lcom/ironsource/adqualitysdk/sdk/i/ヾ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v13

    if-eqz v4, :cond_a6

    if-eqz v2, :cond_a6

    .line 22
    iget-object v8, v7, Lcom/ironsource/adqualitysdk/sdk/i/ᴻ;->ﾇ:Ljava/lang/String;

    .line 23
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a6

    .line 24
    iget-object v7, v7, Lcom/ironsource/adqualitysdk/sdk/i/ᴻ;->ﾒ:Ljava/lang/String;

    .line 25
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a6

    move-object v15, v4

    goto :goto_a7

    :cond_a6
    move-object v15, v3

    .line 27
    :goto_a7
    new-instance v10, Lcom/ironsource/adqualitysdk/sdk/i/ї;

    .line 28
    iget-object v12, v6, Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;->ﾒ:Ljava/lang/String;

    .line 29
    iget-object v6, v5, Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;

    invoke-virtual {v6}, Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;->ﾒ()I

    move-result v6

    invoke-virtual {v5}, Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;->ﾇ()I

    move-result v5

    add-int/2addr v5, v6

    add-int/lit8 v14, v5, -0x1

    .line 30
    invoke-direct/range {v10 .. v15}, Lcom/ironsource/adqualitysdk/sdk/i/ї;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 31
    iget-object v5, v0, Lcom/ironsource/adqualitysdk/sdk/i/Ӏ;->ﾒ:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_35

    .line 32
    :cond_c2
    new-instance v11, Lcom/ironsource/adqualitysdk/sdk/i/ї;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v12, p1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string v2, "+880rZmoSQK53nWphKJE\n"

    const-string v3, "1qxbw/fNKnY=\n"

    invoke-static {v2, v3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ヾ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v13, p2

    .line 34
    invoke-direct/range {v11 .. v16}, Lcom/ironsource/adqualitysdk/sdk/i/ї;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 35
    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/Ӏ;->ﾒ:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_e3
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 37
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 38
    const-class v3, Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 39
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    :goto_fa
    if-ltz v4, :cond_110

    .line 40
    aget-object v5, v1, v4

    .line 41
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 42
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_109

    goto :goto_110

    :cond_109
    const/4 v6, 0x0

    .line 45
    invoke-virtual {v2, v6, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_fa

    .line 48
    :cond_110
    :goto_110
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_114
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/StackTraceElement;

    .line 49
    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/ї;

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v7

    const/4 v8, 0x0

    .line 50
    invoke-direct/range {v3 .. v8}, Lcom/ironsource/adqualitysdk/sdk/i/ї;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 51
    iget-object v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/Ӏ;->ﾒ:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_114

    :cond_13c
    return-void
.end method
