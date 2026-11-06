###### Class ads_mobile_sdk.k30 (ads_mobile_sdk.k30)
.class public final Lads_mobile_sdk/k30;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/k30;

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4

.field public static final g:I = 0x5

.field public static final h:I = 0x6


# instance fields
.field private bitField0_:I

.field private concatenatedSignalsMap_:Lads_mobile_sdk/ju1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/ju1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private consentAllowlist_:Lads_mobile_sdk/u00;

.field private consentStateJson_:Ljava/lang/String;

.field private consentStringJson_:Ljava/lang/String;

.field private patternMatchingFlag_:Lads_mobile_sdk/hj2;

.field private preProcessingFlag_:Lads_mobile_sdk/yp2;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/k30;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/k30;->DEFAULT_INSTANCE:Lads_mobile_sdk/k30;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/k30;

    invoke-direct {v0}, Lads_mobile_sdk/k30;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/k30;->DEFAULT_INSTANCE:Lads_mobile_sdk/k30;

    .line 5
    const-class v1, Lads_mobile_sdk/k30;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 454
    invoke-static {}, Lads_mobile_sdk/ju1;->b()Lads_mobile_sdk/ju1;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/k30;->concatenatedSignalsMap_:Lads_mobile_sdk/ju1;

    .line 455
    const-string v0, ""

    iput-object v0, p0, Lads_mobile_sdk/k30;->consentStringJson_:Ljava/lang/String;

    .line 456
    iput-object v0, p0, Lads_mobile_sdk/k30;->consentStateJson_:Ljava/lang/String;

    return-void
.end method

.method public static D()Lads_mobile_sdk/j30;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/k30;->DEFAULT_INSTANCE:Lads_mobile_sdk/k30;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->h()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/j30;

    return-object v0
.end method

.method public static z()Lads_mobile_sdk/k30;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/k30;->DEFAULT_INSTANCE:Lads_mobile_sdk/k30;

    return-object v0
.end method


# virtual methods
.method public final A()Lads_mobile_sdk/hj2;
    .registers 2

    .line 310
    iget-object v0, p0, Lads_mobile_sdk/k30;->patternMatchingFlag_:Lads_mobile_sdk/hj2;

    if-nez v0, :cond_8

    invoke-static {}, Lads_mobile_sdk/hj2;->v()Lads_mobile_sdk/hj2;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final B()Lads_mobile_sdk/yp2;
    .registers 2

    .line 397
    iget-object v0, p0, Lads_mobile_sdk/k30;->preProcessingFlag_:Lads_mobile_sdk/yp2;

    if-nez v0, :cond_8

    invoke-static {}, Lads_mobile_sdk/yp2;->v()Lads_mobile_sdk/yp2;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final C()Z
    .registers 2

    .line 296
    iget v0, p0, Lads_mobile_sdk/k30;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    .line 5
    sget-object p2, Lads_mobile_sdk/i30;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4c

    const/4 p2, 0x2

    if-eq p1, p2, :cond_46

    const/4 p2, 0x3

    if-eq p1, p2, :cond_23

    const/4 p2, 0x4

    if-eq p1, p2, :cond_20

    const/4 p2, 0x5

    if-eq p1, p2, :cond_19

    const/4 p1, 0x0

    return-object p1

    .line 37
    :cond_19
    const-class p1, Lads_mobile_sdk/k30;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 38
    :cond_20
    sget-object p1, Lads_mobile_sdk/k30;->DEFAULT_INSTANCE:Lads_mobile_sdk/k30;

    return-object p1

    .line 39
    :cond_23
    sget-object p1, Lads_mobile_sdk/u24$a;->k:Lads_mobile_sdk/u24$a;

    .line 47
    const-string p2, ""

    invoke-static {p1, p2, p1, p2}, Lads_mobile_sdk/gu1;->a(Lads_mobile_sdk/u24$a;Ljava/lang/Object;Lads_mobile_sdk/u24$a;Ljava/lang/Object;)Lads_mobile_sdk/gu1;

    move-result-object v6

    const-string v5, "concatenatedSignalsMap_"

    const-string v7, "consentAllowlist_"

    const-string v0, "bitField0_"

    const-string v1, "consentStringJson_"

    const-string v2, "consentStateJson_"

    const-string v3, "patternMatchingFlag_"

    const-string v4, "preProcessingFlag_"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    .line 57
    sget-object p2, Lads_mobile_sdk/k30;->DEFAULT_INSTANCE:Lads_mobile_sdk/k30;

    const-string p3, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0001\u0000\u0000\u0001\u1208\u0000\u0002\u1208\u0001\u0003\u1009\u0002\u0004\u1009\u0003\u00052\u0006\u1009\u0004"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 58
    :cond_46
    new-instance p1, Lads_mobile_sdk/j30;

    invoke-direct {p1}, Lads_mobile_sdk/j30;-><init>()V

    return-object p1

    .line 59
    :cond_4c
    new-instance p1, Lads_mobile_sdk/k30;

    invoke-direct {p1}, Lads_mobile_sdk/k30;-><init>()V

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/u00;)V
    .registers 2

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lads_mobile_sdk/k30;->consentAllowlist_:Lads_mobile_sdk/u00;

    .line 4
    iget p1, p0, Lads_mobile_sdk/k30;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lads_mobile_sdk/k30;->bitField0_:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lads_mobile_sdk/k30;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lads_mobile_sdk/k30;->bitField0_:I

    .line 4
    iput-object p1, p0, Lads_mobile_sdk/k30;->consentStateJson_:Ljava/lang/String;

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lads_mobile_sdk/k30;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lads_mobile_sdk/k30;->bitField0_:I

    .line 4
    iput-object p1, p0, Lads_mobile_sdk/k30;->consentStringJson_:Ljava/lang/String;

    return-void
.end method

.method public final v()Ljava/util/Map;
    .registers 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/k30;->concatenatedSignalsMap_:Lads_mobile_sdk/ju1;

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final w()Lads_mobile_sdk/u00;
    .registers 2

    .line 592
    iget-object v0, p0, Lads_mobile_sdk/k30;->consentAllowlist_:Lads_mobile_sdk/u00;

    if-nez v0, :cond_8

    invoke-static {}, Lads_mobile_sdk/u00;->y()Lads_mobile_sdk/u00;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final x()Ljava/lang/String;
    .registers 2

    .line 198
    iget-object v0, p0, Lads_mobile_sdk/k30;->consentStateJson_:Ljava/lang/String;

    return-object v0
.end method

.method public final y()Ljava/lang/String;
    .registers 2

    .line 70
    iget-object v0, p0, Lads_mobile_sdk/k30;->consentStringJson_:Ljava/lang/String;

    return-object v0
.end method
