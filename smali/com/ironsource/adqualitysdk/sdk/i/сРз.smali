###### Class com.ironsource.adqualitysdk.sdk.i.C0465 (com.ironsource.adqualitysdk.sdk.i.ᐧ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile ﮉ:Z

.field public static volatile ﮌ:Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;

.field public static final ﮐ:Ljava/util/List;

.field public static final ﱟ:Ljava/lang/String;

.field public static final ﱡ:Ljava/lang/String;


# instance fields
.field public final ﺙ:Ljava/util/HashMap;

.field public final ﻏ:Ljava/util/HashMap;

.field public final ﻐ:Ljava/util/HashMap;

.field public final ﻛ:Ljava/util/HashMap;

.field public final ｋ:[Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;

.field public final ﾇ:[Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;

.field public final ﾒ:Z


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const-string v0, "YhmcpA==\n"

    const-string v1, "FmvpwaybFfQ=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﱡ:Ljava/lang/String;

    const-string v0, "ht+oDIM=\n"

    const-string v1, "4L7Ef+YWQCk=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﱟ:Ljava/lang/String;

    .line 1
    const-string v0, "f+E=\n"

    const-string v1, "FocLG+1KdSs=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "eSrO6A==\n"

    const-string v1, "HEa9jY98GM8=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "6ZKRMA==\n"

    const-string v1, "h+f9XGE4r1c=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "GuAgmYJZ\n"

    const-string v1, "aIVU7PA3XdE=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "w0l2qaM=\n"

    const-string v1, "sDwGzNG+6hg=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "xjHG\n"

    const-string v1, "skO/a08Z3bg=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "77f3Gqs=\n"

    const-string v1, "jNaDecM54cE=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﮐ:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    .line 2
    new-array v1, v0, [Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;

    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﾇ:[Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;

    .line 3
    new-array v0, v0, [Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ｋ:[Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﻛ:Ljava/util/HashMap;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﻐ:Ljava/util/HashMap;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﻏ:Ljava/util/HashMap;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﺙ:Ljava/util/HashMap;

    .line 10
    sget-boolean v0, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﮉ:Z

    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﾒ:Z

    .line 11
    const-string v0, "DyJoFioDkpALJG4AKFXF5HMzawY=\n"

    const-string v1, "Lh9UKAEuuL8=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 12
    :goto_37
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_53

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 14
    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﾇ:[Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;

    new-instance v5, Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;

    sget-object v6, Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;Ljava/lang/String;)V

    aput-object v5, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 16
    :cond_53
    const-string v0, "1LA=\n"

    const-string v2, "6Y0LElF6eGk=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "Ia8=\n"

    const-string v2, "AJLGHPmFPU8=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "XnY=\n"

    const-string v2, "Ykt6W7IZRdY=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "FZs=\n"

    const-string v2, "K6YRu9m4oXA=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "o+w=\n"

    const-string v2, "iMePPB+TtN0=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "R7w=\n"

    const-string v2, "apE2t/4CWEA=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "6t8=\n"

    const-string v2, "lqOIzwdis0c=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "6rU=\n"

    const-string v2, "zJNVlx5PgWE=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_bb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 17
    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ｋ:[Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    new-instance v5, Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;

    sget-object v6, Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;

    invoke-direct {v5, v6, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;Ljava/lang/String;)V

    aput-object v5, v3, v4

    goto :goto_9f

    .line 19
    :cond_bb
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﮐ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_da

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 20
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﻛ:Ljava/util/HashMap;

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;

    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;

    invoke-direct {v3, v4, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c1

    .line 22
    :cond_da
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﻛ:Ljava/util/HashMap;

    const-string v1, "p5n/hA==\n"

    const-string v2, "0+uK4WM8jlM=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;->ﺙ:Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;

    const-string v4, "d3pvrA==\n"

    const-string v5, "AwgayQYjTLE=\n"

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﻛ:Ljava/util/HashMap;

    const-string v1, "60qTdAY=\n"

    const-string v2, "jSv/B2M4Q8U=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;

    const-string v4, "zgoZ4X0=\n"

    const-string v5, "qGt1khinTus=\n"

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized ﾒ()V
    .registers 3

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﮌ:Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;

    const/4 v2, 0x0

    .line 2
    sput-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﮌ:Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;

    if-eqz v1, :cond_10

    .line 4
    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﾇ()V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_e

    goto :goto_10

    :catchall_e
    move-exception v1

    goto :goto_12

    :cond_10
    :goto_10
    monitor-exit v0

    return-void

    :goto_12
    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_e

    throw v1
.end method


# virtual methods
.method public final declared-synchronized ﻛ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﾒ:Z

    if-nez v0, :cond_2f

    .line 2
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;

    .line 3
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﱡ:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﱟ:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_28

    .line 6
    :cond_18
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﮐ:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 7
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;

    goto :goto_2a

    :catchall_23
    move-exception p1

    goto :goto_39

    .line 9
    :cond_25
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;

    goto :goto_2a

    .line 10
    :cond_28
    :goto_28
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;->ﺙ:Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;

    .line 11
    :goto_2a
    invoke-direct {v0, v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_23

    monitor-exit p0

    return-object v0

    .line 13
    :cond_2f
    :try_start_2f
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﻛ:Ljava/util/HashMap;

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;

    invoke-virtual {p0, v0, v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﾒ(Ljava/util/HashMap;Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;

    move-result-object p1
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_23

    monitor-exit p0

    return-object p1

    :goto_39
    :try_start_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_23

    throw p1
.end method

.method public final declared-synchronized ｋ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﻐ:Ljava/util/HashMap;

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;

    invoke-virtual {p0, v0, v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﾒ(Ljava/util/HashMap;Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object p1

    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public final declared-synchronized ﾇ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;
    .registers 4

    monitor-enter p0

    .line 5
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﻏ:Ljava/util/HashMap;

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;

    invoke-virtual {p0, v0, v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﾒ(Ljava/util/HashMap;Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object p1

    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public final declared-synchronized ﾇ()V
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﻛ:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﻐ:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﻏ:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 4
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﺙ:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public final ﾒ(CC)Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;
    .registers 7

    .line 5
    iget-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﾒ:Z

    if-nez v0, :cond_1d

    .line 6
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;Ljava/lang/String;)V

    return-object v0

    .line 8
    :cond_1d
    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ｋ:[Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;

    aget-object p1, p2, p1

    return-object p1
.end method

.method public final declared-synchronized ﾒ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;
    .registers 4

    monitor-enter p0

    .line 9
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﻏ:Ljava/util/HashMap;

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;->ﻏ:Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;

    invoke-virtual {p0, v0, v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﾒ(Ljava/util/HashMap;Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object p1

    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public final ﾒ(Ljava/util/HashMap;Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;
    .registers 5

    .line 10
    iget-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﾒ:Z

    if-nez v0, :cond_a

    .line 11
    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;

    invoke-direct {p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;Ljava/lang/String;)V

    return-object p1

    .line 13
    :cond_a
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;

    if-nez v0, :cond_1a

    .line 15
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;

    invoke-direct {v0, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/ᐨ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ﹳ;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    return-object v0
.end method
