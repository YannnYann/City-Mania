###### Class com.ironsource.adqualitysdk.sdk.i.C0655 (com.ironsource.adqualitysdk.sdk.i.ᴳ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᴳ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﻏ:Ljava/util/Map;


# instance fields
.field public final ﻐ:Ljava/util/concurrent/ExecutorService;

.field public final ﻛ:Ljava/util/List;

.field public final ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ᵐ;

.field public final ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﺑ;

.field public final ﾒ:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-string v1, "M9HGcEd7Esk02tViWnkL5jPA\n"

    const-string v2, "XbSyBygJeY8=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-string v1, "mxvVDZ2+ht6bG9c3jLCG3ZsH\n"

    const-string v3, "/nWjZO/R6LM=\n"

    invoke-static {v1, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-string v1, "eToDt9pPjGVQLgW7yECKaXIyBao=\n"

    const-string v4, "EVtx060u/gA=\n"

    invoke-static {v1, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-string v1, "V5JIKW8OUq5Um3MtdxRSrg==\n"

    const-string v2, "NfcgSBlnPdw=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ᴳ;->ﻏ:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 5

    .line 1
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ﺑ;

    invoke-direct {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﺑ;-><init>()V

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ᵐ;

    invoke-direct {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᵐ;-><init>()V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴳ;->ﾒ:Landroid/content/Context;

    .line 4
    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴳ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﺑ;

    .line 5
    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴳ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ᵐ;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴳ;->ﻛ:Ljava/util/List;

    .line 8
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴳ;->ﻐ:Ljava/util/concurrent/ExecutorService;

    return-void
.end method
