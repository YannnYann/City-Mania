###### Class com.ironsource.adqualitysdk.sdk.i.B (com.ironsource.adqualitysdk.sdk.i.B)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/B;
.super Lcom/ironsource/adqualitysdk/sdk/i/ト;
.source "SourceFile"


# static fields
.field public static final ﭸ:Ljava/lang/String;


# instance fields
.field public final ﮉ:Ljava/util/ArrayList;

.field public ﮌ:Lcom/ironsource/adqualitysdk/sdk/i/A;

.field public ﮐ:Ljava/lang/Class;

.field public final ﱟ:Ljava/util/WeakHashMap;

.field public final ﱡ:Ljava/util/WeakHashMap;

.field public final ﺙ:Lcom/ironsource/adqualitysdk/sdk/i/w;

.field public final ﻏ:Lcom/ironsource/adqualitysdk/sdk/i/v;

.field public ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ᕪ;

.field public final ﻛ:Ljava/util/WeakHashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "ewoHcnGmH8NMDQZpVbA=\n"

    const-string v1, "LWNiBTDCbIs=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﭸ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lcom/ironsource/adqualitysdk/sdk/i/ᕪ;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ト;-><init>()V

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﻛ:Ljava/util/WeakHashMap;

    .line 8
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﱡ:Ljava/util/WeakHashMap;

    .line 9
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﱟ:Ljava/util/WeakHashMap;

    .line 13
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/A;

    invoke-direct {v0}, Lcom/ironsource/adqualitysdk/sdk/i/A;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﮌ:Lcom/ironsource/adqualitysdk/sdk/i/A;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﮉ:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/A;

    invoke-direct {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/A;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﮌ:Lcom/ironsource/adqualitysdk/sdk/i/A;

    .line 70
    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ᕪ;

    .line 71
    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/v;

    invoke-direct {p1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/v;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/B;)V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﻏ:Lcom/ironsource/adqualitysdk/sdk/i/v;

    .line 81
    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/w;

    invoke-direct {p1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/w;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/B;)V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﺙ:Lcom/ironsource/adqualitysdk/sdk/i/w;

    .line 94
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ᴽ;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ᴽ;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ᴽ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/z0;)V

    return-void
.end method

.method public static ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/B;Ljava/util/ArrayList;)V
    .registers 14

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_15c

    .line 3
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/view/View;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﮌ:Lcom/ironsource/adqualitysdk/sdk/i/A;

    .line 4
    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ᕪ;

    const/4 v11, 0x0

    if-nez v4, :cond_1b

    goto/16 :goto_95

    .line 5
    :cond_1b
    iget-object v4, v2, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﭖ:Ljava/util/List;

    if-eqz v4, :cond_7d

    .line 6
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7d

    .line 7
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_35
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_158

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 9
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_70

    .line 10
    const-string v7, "eLy7\n"

    const-string v8, "I5LmYe4xveg=\n"

    invoke-static {v7, v8}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 11
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x3

    if-gt v8, v9, :cond_5f

    goto :goto_71

    .line 14
    :cond_5f
    const-string v6, "Eg==\n"

    const-string v8, "PGWWbsMpUvo=\n"

    invoke-static {v6, v8}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v0, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    goto :goto_71

    :cond_70
    move-object v6, v11

    .line 15
    :goto_71
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_35

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 16
    :cond_7d
    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ᕪ;

    .line 17
    iget-object v5, v4, Lcom/ironsource/adqualitysdk/sdk/i/ᕪ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;

    .line 18
    iget-object v4, v4, Lcom/ironsource/adqualitysdk/sdk/i/ᕪ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/İ;

    .line 19
    iget-object v6, v4, Lcom/ironsource/adqualitysdk/sdk/i/İ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;

    .line 20
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 21
    iget-object v8, v6, Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;

    .line 22
    invoke-virtual {v5, v6, v8, v4, v7}, Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/İ;Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/Ι;

    move-result-object v4

    .line 23
    invoke-virtual {v4}, Lcom/ironsource/adqualitysdk/sdk/i/Ι;->ﾒ()Z

    move-result v4

    if-eqz v4, :cond_158

    .line 24
    :goto_95
    iget-boolean v4, v2, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﻏ:Z

    if-eqz v4, :cond_c0

    .line 25
    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﱡ:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ironsource/adqualitysdk/sdk/i/B;

    if-nez v4, :cond_b2

    .line 27
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﱡ:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v3, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v2, v3, v11}, Lcom/ironsource/adqualitysdk/sdk/i/ト;->ｋ(Lorg/json/JSONObject;Landroid/view/View;Ljava/lang/Object;)V

    goto/16 :goto_158

    .line 29
    :cond_b2
    iget-boolean v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﺙ:Z

    if-eqz v2, :cond_158

    .line 30
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v2, v3, v11}, Lcom/ironsource/adqualitysdk/sdk/i/ト;->ｋ(Lorg/json/JSONObject;Landroid/view/View;Ljava/lang/Object;)V

    goto/16 :goto_158

    .line 33
    :cond_c0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 35
    iget-boolean v7, v2, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﱡ:Z

    .line 36
    iget-object v8, v2, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﮉ:Ljava/util/List;

    .line 37
    iget-object v9, v2, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﭴ:Ljava/util/List;

    const/4 v5, 0x0

    .line 38
    const-class v4, Landroid/webkit/WebView;

    const/4 v6, 0x0

    invoke-static/range {v3 .. v10}, Lcom/ironsource/adqualitysdk/sdk/i/C;->ﾇ(Landroid/view/View;Ljava/lang/Class;Ljava/lang/String;ZZLjava/util/List;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 39
    instance-of v4, v3, Landroid/webkit/WebView;

    if-eqz v4, :cond_db

    .line 40
    check-cast v3, Landroid/webkit/WebView;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_db
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_df
    :goto_df
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_158

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    .line 43
    iget-object v5, p0, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﱡ:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_df

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 44
    iget-object v6, v2, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﾇ:Ljava/lang/String;

    .line 45
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_df

    .line 46
    new-instance v5, Lcom/ironsource/adqualitysdk/sdk/i/c0;

    invoke-direct {v5}, Lcom/ironsource/adqualitysdk/sdk/i/c0;-><init>()V

    .line 47
    iget-object v6, p0, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﻛ:Ljava/util/WeakHashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v6, v2, Lcom/ironsource/adqualitysdk/sdk/i/A;->ｋ:Ljava/lang/String;

    .line 49
    iget-object v7, v2, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﻐ:Ljava/lang/String;

    .line 50
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_119

    move-object v7, v11

    goto :goto_12b

    .line 51
    :cond_119
    iget-object v7, v2, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﻐ:Ljava/lang/String;

    .line 52
    const-string v8, "Rw==\n"

    const-string v9, "axqd/vhW+Mc=\n"

    invoke-static {v8, v9}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 53
    :goto_12b
    iget-boolean v8, v2, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﱟ:Z

    .line 54
    iget-boolean v9, v2, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﻛ:Z

    .line 55
    iget-boolean v10, v2, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﮐ:Z

    .line 56
    iput-boolean v8, v5, Lcom/ironsource/adqualitysdk/sdk/i/b0;->ﻏ:Z

    .line 57
    new-instance v8, Lcom/ironsource/adqualitysdk/sdk/i/k0;

    invoke-direct {v8, v6, v10}, Lcom/ironsource/adqualitysdk/sdk/i/k0;-><init>(Ljava/lang/String;Z)V

    iput-object v8, v5, Lcom/ironsource/adqualitysdk/sdk/i/b0;->ﮐ:Lcom/ironsource/adqualitysdk/sdk/i/k0;

    .line 58
    iput-boolean v9, v5, Lcom/ironsource/adqualitysdk/sdk/i/b0;->ﺙ:Z

    .line 60
    iput-object v7, v5, Lcom/ironsource/adqualitysdk/sdk/i/b0;->ﻛ:Ljava/util/List;

    .line 61
    new-instance v6, Lcom/ironsource/adqualitysdk/sdk/i/z;

    invoke-direct {v6, p0}, Lcom/ironsource/adqualitysdk/sdk/i/z;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/B;)V

    .line 62
    iput-object v6, v5, Lcom/ironsource/adqualitysdk/sdk/i/ト;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᐜ;

    .line 63
    invoke-virtual {v5, v4}, Lcom/ironsource/adqualitysdk/sdk/i/b0;->ﾒ(Landroid/webkit/WebView;)V

    .line 64
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 65
    iput-object v6, v5, Lcom/ironsource/adqualitysdk/sdk/i/b0;->ﻐ:Ljava/lang/String;

    .line 66
    iget-object v5, p0, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﱡ:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v4, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_df

    :cond_158
    :goto_158
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    :cond_15c
    return-void
.end method


# virtual methods
.method public final ｋ(Landroid/view/View;)V
    .registers 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﮐ:Ljava/lang/Class;

    if-nez v0, :cond_11

    .line 2
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﮌ:Lcom/ironsource/adqualitysdk/sdk/i/A;

    .line 3
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﾒ:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﮐ:Ljava/lang/Class;

    goto :goto_11

    :catchall_f
    move-exception p1

    goto :goto_48

    .line 6
    :cond_11
    :goto_11
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;->ﾒ()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1c

    goto :goto_7d

    .line 11
    :cond_1c
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﮌ:Lcom/ironsource/adqualitysdk/sdk/i/A;

    .line 12
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﭸ:Ljava/util/List;

    .line 13
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 14
    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/C;->ﾒ(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 15
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﮌ:Lcom/ironsource/adqualitysdk/sdk/i/A;

    .line 16
    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﭸ:Ljava/util/List;

    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    goto :goto_7d

    .line 22
    :cond_3f
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/y;

    invoke-direct {v1, p0, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/y;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/B;Landroid/app/Activity;Landroid/view/View;)V

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V
    :try_end_47
    .catchall {:try_start_0 .. :try_end_47} :catchall_f

    return-void

    .line 45
    :goto_48
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﭸ:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nRB6yWnYsGmsFmHIfNi0YLkRe4Y=\n"

    const-string v3, "2GIIphv41ww=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﮌ:Lcom/ironsource/adqualitysdk/sdk/i/A;

    .line 46
    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﾒ:Ljava/lang/String;

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "arCw\n"

    const-string v3, "Sp2Qk3fm888=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﻛ(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﾒ()V

    :goto_7d
    return-void
.end method

.method public final bridge synthetic ﾒ(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 67
    check-cast p1, Landroid/app/Activity;

    const/4 p1, 0x0

    return-object p1
.end method

.method public final ﾒ()V
    .registers 4

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ト;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᐜ;

    .line 69
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ᴽ;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ᴽ;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﺙ:Lcom/ironsource/adqualitysdk/sdk/i/w;

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᴽ;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/z0;)V

    .line 70
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﱟ:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 71
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﱟ:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->clear()V

    .line 72
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 73
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﻏ:Lcom/ironsource/adqualitysdk/sdk/i/v;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_20

    :cond_32
    return-void
.end method
