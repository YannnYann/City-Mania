###### Class com.ironsource.adqualitysdk.sdk.i.C0964 (com.ironsource.adqualitysdk.sdk.i.ﻥ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ﻥ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﭸ:Ljava/lang/String;

.field public static final ﮉ:Ljava/lang/String;

.field public static final ﮌ:Ljava/lang/String;

.field public static final ﮐ:Ljava/lang/String;

.field public static final ﱟ:Ljava/lang/String;

.field public static final ﱡ:Ljava/lang/String;

.field public static final ﺙ:Ljava/lang/String;

.field public static final ﻏ:Ljava/lang/String;


# instance fields
.field public final ﻐ:Ljava/util/HashSet;

.field public final ﻛ:Ljava/util/HashSet;

.field public final ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;

.field public final ﾇ:Landroid/os/Handler;

.field public ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ণ;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "R7tnqZ7Tzi5mqHA=\n"

    const-string v1, "As0Cx+qAq0A=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ﻥ;->ﻏ:Ljava/lang/String;

    const-string v0, "boQXQ0fhXARqgw==\n"

    const-string v1, "D+djHDeAKXc=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ﻥ;->ﺙ:Ljava/lang/String;

    const-string v0, "WZyR+E/hIG9VmoE=\n"

    const-string v1, "OP/lpz2EUxo=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ﻥ;->ﱡ:Ljava/lang/String;

    const-string v0, "iXyGKj7Z85ycepY=\n"

    const-string v1, "6B/ydV2rlv0=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ﻥ;->ﱟ:Ljava/lang/String;

    const-string v0, "cgp82K2T0ptnDGw=\n"

    const-string v1, "E2kIh97ns+k=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ﻥ;->ﮐ:Ljava/lang/String;

    const-string v0, "atgZ81Vtl+l73gk=\n"

    const-string v1, "C7ttrCYZ+Jk=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ﻥ;->ﮌ:Ljava/lang/String;

    const-string v0, "BHFbBuXAxkMXfVY85Q==\n"

    const-string v1, "ZRIvWYGltTc=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ﻥ;->ﮉ:Ljava/lang/String;

    const-string v0, "FMDRTB2l6YQR/NZnD7D6\n"

    const-string v1, "daOlE27En+E=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ﻥ;->ﭸ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻥ;->ﻛ:Ljava/util/HashSet;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻥ;->ﻐ:Ljava/util/HashSet;

    .line 6
    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻥ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;

    .line 7
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻥ;->ﾇ:Landroid/os/Handler;

    return-void
.end method

.method public static ﾒ()D
    .registers 4

    .line 29
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    .line 30
    iget-boolean v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->Ḟ:Z

    if-nez v0, :cond_26

    .line 31
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    .line 32
    monitor-enter v0

    .line 33
    :try_start_11
    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᘢ;->ﾒ:Lorg/json/JSONObject;
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_23

    monitor-exit v0

    .line 34
    const-string v0, "W/PY\n"

    const-string v2, "L5aoVrmQxCc=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0

    :catchall_23
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_26
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    return-wide v0
.end method


# virtual methods
.method public final ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V
    .registers 15

    .line 1
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻥ;->ﻐ:Ljava/util/HashSet;

    monitor-enter v1

    .line 2
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "IQ==\n"

    const-string v3, "G1oqYsSsjKY=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻥ;->ﻐ:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    if-nez p6, :cond_37

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object p6

    invoke-virtual {p6}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﮌ()Z

    move-result p6

    if-nez p6, :cond_37

    .line 4
    monitor-exit v1

    return-void

    :catchall_33
    move-exception v0

    move-object p1, v0

    goto/16 :goto_e9

    .line 6
    :cond_37
    iget-object p6, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻥ;->ﻐ:Ljava/util/HashSet;

    invoke-virtual {p6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_33

    .line 8
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﻥ;->ﾒ()D

    move-result-wide v2

    cmpg-double p6, v0, v2

    if-gez p6, :cond_db

    .line 9
    iget-object p6, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻥ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance p6, Lorg/json/JSONObject;

    invoke-direct {p6}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 12
    :try_start_57
    const-string v0, "dM9uMKQ=\n"

    const-string v2, "Eb0aUcOyANs=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    const-string p1, "C/Eemvo=\n"

    const-string v0, "boNz6Z13qxE=\n"

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    const-string p1, "bgVOK1MM\n"

    const-string p2, "C3ctRDdp0x0=\n"

    invoke-static {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8e

    .line 16
    const-string p1, "pX6XUtM=\n"

    const-string p2, "wAzkJrgCAR8=\n"

    invoke-static {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_8e

    :catch_8a
    move-exception v0

    move-object p1, v0

    move-object v5, p1

    goto :goto_94

    :cond_8e
    :goto_8e
    if-eqz p5, :cond_a4

    .line 17
    invoke-static {p6, p5, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﻣ;->ﾒ(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    :try_end_93
    .catch Lorg/json/JSONException; {:try_start_57 .. :try_end_93} :catch_8a

    goto :goto_a4

    .line 18
    :goto_94
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->טּ:Ljava/lang/String;

    const-string p1, "cGDDRukiNSpRe99Ou2cmPFpgkUT+cScvUnc=\n"

    const-string p2, "NRKxKZsCVE4=\n"

    invoke-static {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v2

    .line 19
    invoke-static/range {v2 .. v7}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/ironsource/adqualitysdk/sdk/i/ᵘ;Z)V

    .line 20
    :cond_a4
    :goto_a4
    const-string p1, "NKrsS3ci3C4=\n"

    const-string p2, "QNqzLgVQs1w=\n"

    invoke-static {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    new-instance p2, Ljava/util/HashSet;

    iget-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻥ;->ﻛ:Ljava/util/HashSet;

    invoke-direct {p2, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 22
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_b7
    :goto_b7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_cd

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ironsource/adqualitysdk/sdk/i/ᒶ;

    .line 23
    invoke-interface {p3, p1, p6}, Lcom/ironsource/adqualitysdk/sdk/i/ᒶ;->ﾒ(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p3

    if-eqz p3, :cond_b7

    .line 24
    invoke-static {p6, p3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﻣ;->ﾒ(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    goto :goto_b7

    .line 25
    :cond_cd
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻥ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;

    const-string p2, "qCV5qWVZgdg=\n"

    const-string p3, "3FUmzBcr7qo=\n"

    invoke-static {p2, p3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p6}, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﾒ(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 27
    :cond_db
    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/ﻥ;->ﻏ:Ljava/lang/String;

    const-string p2, "rUE90SZIxW2HT27GN2XEdptHPJIiTMRqnQhjkiNTxWrOXG7CJknSJJ1APNc0Us5ojQ==\n"

    const-string p3, "6ShOskc6oQQ=\n"

    invoke-static {p2, p3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ｋ(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 28
    :goto_e9
    :try_start_e9
    monitor-exit v1
    :try_end_ea
    .catchall {:try_start_e9 .. :try_end_ea} :catchall_33

    throw p1
.end method
