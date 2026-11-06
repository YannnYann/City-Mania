###### Class com.ironsource.adqualitysdk.sdk.i.AbstractC0892 (com.ironsource.adqualitysdk.sdk.i.ﮆ)
.class public abstract Lcom/ironsource/adqualitysdk/sdk/i/ﮆ;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static ﾒ(Ljava/lang/Class;Lcom/ironsource/adqualitysdk/sdk/i/ﹱ;)Ljava/util/ArrayList;
    .registers 14

    const/4 v0, 0x1

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget v2, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﹱ;->ﻐ:I

    .line 3
    iget-boolean v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/ƭ;->ﾒ:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_65

    .line 4
    iget v5, p1, Lcom/ironsource/adqualitysdk/sdk/i/ƭ;->ﾇ:I

    .line 5
    new-array v6, v4, [Ljava/lang/reflect/Method;

    if-eqz p0, :cond_60

    .line 7
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    .line 8
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    .line 9
    sget-object v8, Lcom/ironsource/adqualitysdk/sdk/i/ｨ;->ﾒ:Ljava/lang/String;

    .line 10
    array-length v8, v6

    .line 11
    array-length v9, v7

    add-int v10, v8, v9

    .line 12
    new-array v10, v10, [Ljava/lang/reflect/Method;

    .line 13
    invoke-static {v6, v4, v10, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    invoke-static {v7, v4, v10, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-nez v3, :cond_30

    .line 15
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_6d

    .line 19
    :cond_30
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    move v3, v4

    move-object v6, v10

    :goto_36
    if-eqz p0, :cond_60

    if-eq v3, v5, :cond_60

    .line 20
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    .line 21
    array-length v8, v6

    .line 22
    array-length v9, v7

    add-int v10, v8, v9

    .line 23
    new-array v11, v10, [Ljava/lang/reflect/Method;

    .line 24
    invoke-static {v6, v4, v11, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    invoke-static {v7, v4, v11, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    .line 27
    array-length v7, v6

    add-int v8, v10, v7

    .line 28
    new-array v8, v8, [Ljava/lang/reflect/Method;

    .line 29
    invoke-static {v11, v4, v8, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    invoke-static {v6, v4, v8, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    add-int/2addr v3, v0

    move-object v6, v8

    goto :goto_36

    .line 36
    :cond_60
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_6d

    .line 37
    :cond_65
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 38
    :goto_6d
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_71
    :goto_71
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_fb

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    .line 39
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    .line 40
    iget v6, p1, Lcom/ironsource/adqualitysdk/sdk/i/ƭ;->ｋ:I

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_f3

    .line 41
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    .line 42
    iget v6, p1, Lcom/ironsource/adqualitysdk/sdk/i/ƭ;->ﻛ:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_91

    goto/16 :goto_f3

    .line 43
    :cond_91
    iget-object v5, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﹱ;->ﱡ:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9e

    goto :goto_f3

    .line 47
    :cond_9e
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 48
    iget v6, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﹱ;->ﮐ:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_ab

    .line 49
    array-length v7, v5

    if-eq v6, v7, :cond_ab

    goto :goto_f3

    .line 50
    :cond_ab
    iget-object v6, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﹱ;->ﱟ:Ljava/util/List;

    if-eqz v6, :cond_cf

    .line 51
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    array-length v8, v5

    if-eq v7, v8, :cond_b7

    goto :goto_f3

    :cond_b7
    move v7, v4

    .line 54
    :goto_b8
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_cf

    .line 55
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    aget-object v9, v5, v7

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_cd

    goto :goto_f3

    :cond_cd
    add-int/2addr v7, v0

    goto :goto_b8

    .line 56
    :cond_cf
    iget-object v5, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﹱ;->ﻏ:Ljava/lang/Class;

    if-eqz v5, :cond_eb

    .line 57
    iget-boolean v6, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﹱ;->ﺙ:Z

    if-eqz v6, :cond_e2

    .line 58
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    .line 59
    iget-object v6, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﹱ;->ﻏ:Ljava/lang/Class;

    .line 60
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_ec

    .line 62
    :cond_e2
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    goto :goto_ec

    :cond_eb
    move v5, v0

    :goto_ec
    if-eqz v5, :cond_f3

    if-nez v2, :cond_f2

    move v5, v0

    goto :goto_f4

    :cond_f2
    sub-int/2addr v2, v0

    :cond_f3
    :goto_f3
    move v5, v4

    :goto_f4
    if-eqz v5, :cond_71

    .line 63
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_71

    :cond_fb
    return-object v1
.end method
