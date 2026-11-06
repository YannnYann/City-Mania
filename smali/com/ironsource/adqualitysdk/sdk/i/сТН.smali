###### Class com.ironsource.adqualitysdk.sdk.i.C0486 (com.ironsource.adqualitysdk.sdk.i.ᒍ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ｋ:Ljava/util/ArrayList;

.field public ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;

.field public ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᒐ;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ﾒ(Ljava/lang/Class;Lcom/ironsource/adqualitysdk/sdk/i/ᒐ;Ljava/util/ArrayList;)V
    .registers 11

    .line 69
    iget-object v0, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᒐ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;

    if-eqz v0, :cond_10

    .line 70
    iget-boolean v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ƭ;->ﾒ:Z

    if-eqz v1, :cond_10

    .line 71
    iget v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ƭ;->ﾇ:I

    const/4 v2, 0x0

    .line 72
    invoke-static {p0, v1, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;->ﾒ(Ljava/lang/Class;ZILjava/util/List;)[Ljava/lang/reflect/Field;

    move-result-object p0

    goto :goto_19

    .line 75
    :cond_10
    :try_start_10
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/Error; {:try_start_10 .. :try_end_14} :catch_15

    goto :goto_19

    .line 77
    :catch_15
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object p0

    .line 78
    :goto_19
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_1c
    if-ge v2, v0, :cond_7e

    aget-object v3, p0, v2

    .line 79
    iget-object v4, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᒐ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;

    const/4 v5, 0x1

    if-eqz v4, :cond_72

    .line 80
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    iget-object v6, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᒐ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;

    .line 81
    iget v6, v6, Lcom/ironsource/adqualitysdk/sdk/i/ƭ;->ｋ:I

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_72

    .line 82
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    iget-object v6, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᒐ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;

    .line 83
    iget v7, v6, Lcom/ironsource/adqualitysdk/sdk/i/ƭ;->ﻛ:I

    and-int/2addr v4, v7

    if-eqz v4, :cond_3c

    goto :goto_72

    .line 84
    :cond_3c
    iget-object v4, v6, Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;->ﱡ:Ljava/util/ArrayList;

    .line 85
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    goto :goto_72

    .line 89
    :cond_49
    iget-object v4, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᒐ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;

    .line 90
    iget-boolean v6, v4, Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;->ﺙ:Z

    if-eqz v6, :cond_5c

    .line 91
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    iget-object v6, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᒐ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;

    .line 92
    iget-object v6, v6, Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;->ﻐ:Ljava/lang/Class;

    .line 93
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_66

    .line 94
    :cond_5c
    iget-object v4, v4, Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;->ﻐ:Ljava/lang/Class;

    .line 95
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    :goto_66
    if-eqz v4, :cond_72

    .line 98
    iget v4, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᒐ;->ﾇ:I

    if-nez v4, :cond_6e

    move v4, v5

    goto :goto_73

    :cond_6e
    add-int/lit8 v4, v4, -0x1

    .line 101
    iput v4, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᒐ;->ﾇ:I

    :cond_72
    :goto_72
    move v4, v1

    :goto_73
    if-eqz v4, :cond_7b

    .line 102
    invoke-virtual {v3, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 103
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_7e
    return-void
.end method

.method public static ﾒ(Ljava/lang/Class;ZILjava/util/List;)[Ljava/lang/reflect/Field;
    .registers 9

    :goto_0
    if-eqz p0, :cond_d

    .line 30
    invoke-static {p0, p3}, Lcom/ironsource/adqualitysdk/sdk/i/ｨ;->ﾒ(Ljava/lang/Class;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 31
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_d
    const/4 p3, 0x0

    .line 33
    new-array v0, p3, [Ljava/lang/reflect/Field;

    if-eqz p0, :cond_62

    .line 35
    new-array v0, p3, [Ljava/lang/reflect/Field;

    .line 36
    new-array v1, p3, [Ljava/lang/reflect/Field;

    .line 38
    :try_start_16
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_1a
    .catch Ljava/lang/Error; {:try_start_16 .. :try_end_1a} :catch_1a

    .line 46
    :catch_1a
    :try_start_1a
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1
    :try_end_1e
    .catch Ljava/lang/Error; {:try_start_1a .. :try_end_1e} :catch_1e

    .line 48
    :catch_1e
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ｨ;->ﾒ:Ljava/lang/String;

    .line 49
    array-length v2, v0

    .line 50
    array-length v3, v1

    add-int v4, v2, v3

    .line 51
    new-array v4, v4, [Ljava/lang/reflect/Field;

    .line 52
    invoke-static {v0, p3, v4, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    invoke-static {v1, p3, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-nez p1, :cond_2f

    return-object v4

    .line 54
    :cond_2f
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    move p1, p3

    :goto_34
    if-eqz p0, :cond_61

    if-eq p1, p2, :cond_61

    .line 56
    :try_start_38
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 57
    array-length v1, v4

    .line 58
    array-length v2, v0

    add-int v3, v1, v2

    .line 59
    new-array v3, v3, [Ljava/lang/reflect/Field;

    .line 60
    invoke-static {v4, p3, v3, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    invoke-static {v0, p3, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_48
    .catch Ljava/lang/Error; {:try_start_38 .. :try_end_48} :catch_49

    move-object v4, v3

    .line 62
    :catch_49
    :try_start_49
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 63
    array-length v1, v4

    .line 64
    array-length v2, v0

    add-int v3, v1, v2

    .line 65
    new-array v3, v3, [Ljava/lang/reflect/Field;

    .line 66
    invoke-static {v4, p3, v3, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    invoke-static {v0, p3, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_59
    .catch Ljava/lang/Error; {:try_start_49 .. :try_end_59} :catch_5a

    move-object v4, v3

    .line 68
    :catch_5a
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    add-int/lit8 p1, p1, 0x1

    goto :goto_34

    :cond_61
    return-object v4

    :cond_62
    return-object v0
.end method


# virtual methods
.method public final ﾒ(Ljava/lang/Class;Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;)Ljava/lang/reflect/Field;
    .registers 5

    .line 9
    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/Ł;

    monitor-enter v0

    .line 10
    :try_start_3
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;->ｋ:Ljava/util/ArrayList;

    if-nez v1, :cond_11

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;->ｋ:Ljava/util/ArrayList;

    goto :goto_11

    :catchall_f
    move-exception p1

    goto :goto_31

    .line 13
    :cond_11
    :goto_11
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;->ｋ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 14
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;->ｋ:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;->ﾒ(Ljava/lang/Class;Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;Ljava/util/ArrayList;)V

    .line 16
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;->ｋ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2e

    .line 17
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;->ｋ:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Field;

    monitor-exit v0

    return-object p1

    .line 19
    :cond_2e
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_f

    throw p1
.end method

.method public final ﾒ(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .registers 5

    .line 1
    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/Ł;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;

    if-nez v1, :cond_11

    .line 3
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;

    invoke-direct {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;-><init>()V

    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;

    goto :goto_11

    :catchall_f
    move-exception p1

    goto :goto_1b

    .line 5
    :cond_11
    :goto_11
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;

    .line 6
    iput-object p2, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;->ﻐ:Ljava/lang/Class;

    .line 7
    invoke-virtual {p0, p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;->ﾒ(Ljava/lang/Class;Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;)Ljava/lang/reflect/Field;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 8
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_f

    throw p1
.end method

.method public final ﾒ(Ljava/lang/Class;Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;Ljava/util/ArrayList;)V
    .registers 6

    .line 20
    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;

    monitor-enter v0

    .line 21
    :try_start_3
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᒐ;

    if-nez v1, :cond_11

    .line 22
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ᒐ;

    invoke-direct {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᒐ;-><init>()V

    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᒐ;

    goto :goto_11

    :catchall_f
    move-exception p1

    goto :goto_1e

    .line 24
    :cond_11
    :goto_11
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᒐ;

    .line 25
    iput-object p2, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᒐ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;

    .line 26
    iget p2, p2, Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;->ﻏ:I

    .line 27
    iput p2, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᒐ;->ﾇ:I

    .line 28
    invoke-static {p1, v1, p3}, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;->ﾒ(Ljava/lang/Class;Lcom/ironsource/adqualitysdk/sdk/i/ᒐ;Ljava/util/ArrayList;)V

    .line 29
    monitor-exit v0

    return-void

    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_f

    throw p1
.end method
