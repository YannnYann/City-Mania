###### Class ads_mobile_sdk.ej2 (ads_mobile_sdk.ej2)
.class public final Lads_mobile_sdk/ej2;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/ej2;

.field public static final c:I = 0x9

.field public static final d:I = 0x1

.field public static final e:I = 0xb

.field public static final f:I = 0xc

.field public static final g:I = 0x2

.field public static final h:I = 0x3

.field public static final i:I = 0x4

.field public static final j:I = 0xd

.field public static final k:I = 0x5

.field public static final l:I = 0x6

.field public static final m:I = 0x7

.field public static final n:I = 0x8

.field public static final o:I = 0xa

.field public static final p:I = 0xe


# instance fields
.field private allowCompression_:Z

.field private allowCookies_:Z

.field private allowedKeys_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private andRules_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Lads_mobile_sdk/ej2;",
            ">;"
        }
    .end annotation
.end field

.field private baseUrl_:Ljava/lang/String;

.field private bitField0_:I

.field private blobUrlKeys_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private consoleLogs_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private elseRules_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Lads_mobile_sdk/ej2;",
            ">;"
        }
    .end annotation
.end field

.field private errorCode_:I

.field private errorString_:Ljava/lang/String;

.field private includeSignals_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Lads_mobile_sdk/ia1;",
            ">;"
        }
    .end annotation
.end field

.field private include_:Lads_mobile_sdk/ju1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/ju1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pattern_:Lads_mobile_sdk/zt1;

.field private ruleLabel_:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/ej2;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/ej2;->DEFAULT_INSTANCE:Lads_mobile_sdk/ej2;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/ej2;

    invoke-direct {v0}, Lads_mobile_sdk/ej2;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/ej2;->DEFAULT_INSTANCE:Lads_mobile_sdk/ej2;

    .line 5
    const-class v1, Lads_mobile_sdk/ej2;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 24
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 504
    invoke-static {}, Lads_mobile_sdk/ju1;->b()Lads_mobile_sdk/ju1;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/ej2;->include_:Lads_mobile_sdk/ju1;

    .line 505
    const-string v0, ""

    iput-object v0, p0, Lads_mobile_sdk/ej2;->ruleLabel_:Ljava/lang/String;

    .line 506
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v1

    iput-object v1, p0, Lads_mobile_sdk/ej2;->andRules_:Lads_mobile_sdk/yh1$f;

    .line 507
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v1

    iput-object v1, p0, Lads_mobile_sdk/ej2;->elseRules_:Lads_mobile_sdk/yh1$f;

    .line 508
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v1

    iput-object v1, p0, Lads_mobile_sdk/ej2;->includeSignals_:Lads_mobile_sdk/yh1$f;

    .line 509
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v1

    iput-object v1, p0, Lads_mobile_sdk/ej2;->blobUrlKeys_:Lads_mobile_sdk/yh1$f;

    .line 510
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v1

    iput-object v1, p0, Lads_mobile_sdk/ej2;->allowedKeys_:Lads_mobile_sdk/yh1$f;

    .line 511
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v1

    iput-object v1, p0, Lads_mobile_sdk/ej2;->consoleLogs_:Lads_mobile_sdk/yh1$f;

    .line 512
    iput-object v0, p0, Lads_mobile_sdk/ej2;->errorString_:Ljava/lang/String;

    .line 513
    iput-object v0, p0, Lads_mobile_sdk/ej2;->baseUrl_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A()Lads_mobile_sdk/yh1$f;
    .registers 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/ej2;->blobUrlKeys_:Lads_mobile_sdk/yh1$f;

    return-object v0
.end method

.method public final B()Lads_mobile_sdk/yh1$f;
    .registers 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/ej2;->consoleLogs_:Lads_mobile_sdk/yh1$f;

    return-object v0
.end method

.method public final C()Lads_mobile_sdk/yh1$f;
    .registers 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/ej2;->elseRules_:Lads_mobile_sdk/yh1$f;

    return-object v0
.end method

.method public final D()I
    .registers 2

    .line 1442
    iget v0, p0, Lads_mobile_sdk/ej2;->errorCode_:I

    return v0
.end method

.method public final E()Ljava/lang/String;
    .registers 2

    .line 1342
    iget-object v0, p0, Lads_mobile_sdk/ej2;->errorString_:Ljava/lang/String;

    return-object v0
.end method

.method public final F()Ljava/util/Map;
    .registers 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/ej2;->include_:Lads_mobile_sdk/ju1;

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final G()Lads_mobile_sdk/yh1$f;
    .registers 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/ej2;->includeSignals_:Lads_mobile_sdk/yh1$f;

    return-object v0
.end method

.method public final H()Lads_mobile_sdk/zt1;
    .registers 2

    .line 168
    iget-object v0, p0, Lads_mobile_sdk/ej2;->pattern_:Lads_mobile_sdk/zt1;

    if-nez v0, :cond_8

    invoke-static {}, Lads_mobile_sdk/zt1;->w()Lads_mobile_sdk/zt1;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final I()Ljava/lang/String;
    .registers 2

    .line 70
    iget-object v0, p0, Lads_mobile_sdk/ej2;->ruleLabel_:Ljava/lang/String;

    return-object v0
.end method

.method public final J()Z
    .registers 2

    .line 1660
    iget v0, p0, Lads_mobile_sdk/ej2;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final K()Z
    .registers 2

    .line 1594
    iget v0, p0, Lads_mobile_sdk/ej2;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final L()Z
    .registers 2

    .line 1492
    iget v0, p0, Lads_mobile_sdk/ej2;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final M()Z
    .registers 2

    .line 1428
    iget v0, p0, Lads_mobile_sdk/ej2;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final N()Z
    .registers 2

    .line 1327
    iget v0, p0, Lads_mobile_sdk/ej2;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final O()Z
    .registers 2

    .line 153
    iget v0, p0, Lads_mobile_sdk/ej2;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 25

    .line 1
    sget-object v0, Lads_mobile_sdk/cj2;->a:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_62

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_23

    const/4 v1, 0x4

    if-eq v0, v1, :cond_20

    const/4 v1, 0x5

    if-eq v0, v1, :cond_19

    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_19
    const-class v0, Lads_mobile_sdk/ej2;

    invoke-static {v0}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object v0

    return-object v0

    .line 47
    :cond_20
    sget-object v0, Lads_mobile_sdk/ej2;->DEFAULT_INSTANCE:Lads_mobile_sdk/ej2;

    return-object v0

    .line 48
    :cond_23
    sget-object v0, Lads_mobile_sdk/u24$a;->k:Lads_mobile_sdk/u24$a;

    .line 53
    const-string v1, ""

    invoke-static {v0, v1, v0, v1}, Lads_mobile_sdk/gu1;->a(Lads_mobile_sdk/u24$a;Ljava/lang/Object;Lads_mobile_sdk/u24$a;Ljava/lang/Object;)Lads_mobile_sdk/gu1;

    move-result-object v5

    const-string v19, "allowedKeys_"

    const-string v20, "allowCompression_"

    const-string v2, "bitField0_"

    const-string v3, "pattern_"

    const-string v4, "include_"

    const-string v6, "includeSignals_"

    const-class v7, Lads_mobile_sdk/ia1;

    const-string v8, "blobUrlKeys_"

    const-string v9, "consoleLogs_"

    const-string v10, "errorString_"

    const-string v11, "errorCode_"

    const-string v12, "baseUrl_"

    const-string v13, "ruleLabel_"

    const-string v14, "allowCookies_"

    const-string v15, "andRules_"

    const-class v16, Lads_mobile_sdk/ej2;

    const-string v17, "elseRules_"

    const-class v18, Lads_mobile_sdk/ej2;

    filled-new-array/range {v2 .. v20}, [Ljava/lang/Object;

    move-result-object v0

    .line 79
    sget-object v1, Lads_mobile_sdk/ej2;->DEFAULT_INSTANCE:Lads_mobile_sdk/ej2;

    const-string v2, "\u0004\u000e\u0000\u0001\u0001\u000e\u000e\u0001\u0006\u0000\u0001\u1009\u0001\u00022\u0003\u001b\u0004\u021a\u0005\u021a\u0006\u1208\u0002\u0007\u1004\u0003\u0008\u1208\u0004\t\u1208\u0000\n\u1007\u0005\u000b\u001b\u000c\u001b\r\u021a\u000e\u1007\u0006"

    invoke-static {v1, v2, v0}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 80
    :cond_5c
    new-instance v0, Lads_mobile_sdk/dj2;

    invoke-direct {v0}, Lads_mobile_sdk/dj2;-><init>()V

    return-object v0

    .line 81
    :cond_62
    new-instance v0, Lads_mobile_sdk/ej2;

    invoke-direct {v0}, Lads_mobile_sdk/ej2;-><init>()V

    return-object v0
.end method

.method public final v()Z
    .registers 2

    .line 1674
    iget-boolean v0, p0, Lads_mobile_sdk/ej2;->allowCompression_:Z

    return v0
.end method

.method public final w()Z
    .registers 2

    .line 1609
    iget-boolean v0, p0, Lads_mobile_sdk/ej2;->allowCookies_:Z

    return v0
.end method

.method public final x()Lads_mobile_sdk/yh1$f;
    .registers 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/ej2;->allowedKeys_:Lads_mobile_sdk/yh1$f;

    return-object v0
.end method

.method public final y()Lads_mobile_sdk/yh1$f;
    .registers 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/ej2;->andRules_:Lads_mobile_sdk/yh1$f;

    return-object v0
.end method

.method public final z()Ljava/lang/String;
    .registers 2

    .line 1507
    iget-object v0, p0, Lads_mobile_sdk/ej2;->baseUrl_:Ljava/lang/String;

    return-object v0
.end method
