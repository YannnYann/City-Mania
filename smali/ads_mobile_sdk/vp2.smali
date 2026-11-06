###### Class ads_mobile_sdk.vp2 (ads_mobile_sdk.vp2)
.class public final Lads_mobile_sdk/vp2;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/vp2;

.field public static final c:I = 0x1

.field public static final d:I = 0x2


# instance fields
.field private bitField0_:I

.field private includeSignals_:Lads_mobile_sdk/ju1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/ju1<",
            "Ljava/lang/String;",
            "Lads_mobile_sdk/ne3;",
            ">;"
        }
    .end annotation
.end field

.field private pattern_:Lads_mobile_sdk/zt1;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/vp2;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/vp2;->DEFAULT_INSTANCE:Lads_mobile_sdk/vp2;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/vp2;

    invoke-direct {v0}, Lads_mobile_sdk/vp2;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/vp2;->DEFAULT_INSTANCE:Lads_mobile_sdk/vp2;

    .line 5
    const-class v1, Lads_mobile_sdk/vp2;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 126
    invoke-static {}, Lads_mobile_sdk/ju1;->b()Lads_mobile_sdk/ju1;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/vp2;->includeSignals_:Lads_mobile_sdk/ju1;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    sget-object p2, Lads_mobile_sdk/tp2;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4a

    const/4 p2, 0x2

    if-eq p1, p2, :cond_44

    const/4 p2, 0x3

    if-eq p1, p2, :cond_23

    const/4 p2, 0x4

    if-eq p1, p2, :cond_20

    const/4 p2, 0x5

    if-eq p1, p2, :cond_19

    const/4 p1, 0x0

    return-object p1

    .line 29
    :cond_19
    const-class p1, Lads_mobile_sdk/vp2;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 30
    :cond_20
    sget-object p1, Lads_mobile_sdk/vp2;->DEFAULT_INSTANCE:Lads_mobile_sdk/vp2;

    return-object p1

    .line 31
    :cond_23
    sget-object p1, Lads_mobile_sdk/u24$a;->k:Lads_mobile_sdk/u24$a;

    sget-object p2, Lads_mobile_sdk/u24$a;->m:Lads_mobile_sdk/u24$a;

    .line 40
    invoke-static {}, Lads_mobile_sdk/ne3;->w()Lads_mobile_sdk/ne3;

    move-result-object p3

    .line 41
    const-string v0, ""

    invoke-static {p1, v0, p2, p3}, Lads_mobile_sdk/gu1;->a(Lads_mobile_sdk/u24$a;Ljava/lang/Object;Lads_mobile_sdk/u24$a;Ljava/lang/Object;)Lads_mobile_sdk/gu1;

    move-result-object p1

    const-string p2, "pattern_"

    const-string p3, "includeSignals_"

    const-string v0, "bitField0_"

    filled-new-array {v0, p2, p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 50
    sget-object p2, Lads_mobile_sdk/vp2;->DEFAULT_INSTANCE:Lads_mobile_sdk/vp2;

    const-string p3, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0001\u0000\u0000\u0001\u1009\u0000\u00022"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 51
    :cond_44
    new-instance p1, Lads_mobile_sdk/up2;

    invoke-direct {p1}, Lads_mobile_sdk/up2;-><init>()V

    return-object p1

    .line 52
    :cond_4a
    new-instance p1, Lads_mobile_sdk/vp2;

    invoke-direct {p1}, Lads_mobile_sdk/vp2;-><init>()V

    return-object p1
.end method

.method public final v()Ljava/util/Map;
    .registers 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/vp2;->includeSignals_:Lads_mobile_sdk/ju1;

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final w()Lads_mobile_sdk/zt1;
    .registers 2

    .line 66
    iget-object v0, p0, Lads_mobile_sdk/vp2;->pattern_:Lads_mobile_sdk/zt1;

    if-nez v0, :cond_8

    invoke-static {}, Lads_mobile_sdk/zt1;->w()Lads_mobile_sdk/zt1;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final x()Z
    .registers 3

    .line 51
    iget v0, p0, Lads_mobile_sdk/vp2;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method
