###### Class ads_mobile_sdk.zt1 (ads_mobile_sdk.zt1)
.class public final Lads_mobile_sdk/zt1;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/zt1;

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4


# instance fields
.field private andNodes_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Lads_mobile_sdk/zt1;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private matchNode_:Lads_mobile_sdk/qu1;

.field private notNode_:Lads_mobile_sdk/zt1;

.field private orNodes_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Lads_mobile_sdk/zt1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/zt1;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/zt1;->DEFAULT_INSTANCE:Lads_mobile_sdk/zt1;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/zt1;

    invoke-direct {v0}, Lads_mobile_sdk/zt1;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/zt1;->DEFAULT_INSTANCE:Lads_mobile_sdk/zt1;

    .line 5
    const-class v1, Lads_mobile_sdk/zt1;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 20
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/zt1;->andNodes_:Lads_mobile_sdk/yh1$f;

    .line 21
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/zt1;->orNodes_:Lads_mobile_sdk/yh1$f;

    return-void
.end method

.method public static w()Lads_mobile_sdk/zt1;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/zt1;->DEFAULT_INSTANCE:Lads_mobile_sdk/zt1;

    return-object v0
.end method


# virtual methods
.method public final A()Z
    .registers 2

    .line 422
    iget v0, p0, Lads_mobile_sdk/zt1;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final B()Z
    .registers 3

    .line 350
    iget v0, p0, Lads_mobile_sdk/zt1;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    .line 1
    sget-object p2, Lads_mobile_sdk/xt1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_44

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3e

    const/4 p2, 0x3

    if-eq p1, p2, :cond_23

    const/4 p2, 0x4

    if-eq p1, p2, :cond_20

    const/4 p2, 0x5

    if-eq p1, p2, :cond_19

    const/4 p1, 0x0

    return-object p1

    .line 27
    :cond_19
    const-class p1, Lads_mobile_sdk/zt1;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 28
    :cond_20
    sget-object p1, Lads_mobile_sdk/zt1;->DEFAULT_INSTANCE:Lads_mobile_sdk/zt1;

    return-object p1

    .line 29
    :cond_23
    const-string v5, "notNode_"

    const-string v6, "matchNode_"

    const-string v0, "bitField0_"

    const-string v1, "andNodes_"

    const-class v2, Lads_mobile_sdk/zt1;

    const-string v3, "orNodes_"

    const-class v4, Lads_mobile_sdk/zt1;

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    .line 41
    sget-object p2, Lads_mobile_sdk/zt1;->DEFAULT_INSTANCE:Lads_mobile_sdk/zt1;

    const-string p3, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0002\u0000\u0001\u001b\u0002\u001b\u0003\u1009\u0000\u0004\u1009\u0001"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 42
    :cond_3e
    new-instance p1, Lads_mobile_sdk/yt1;

    invoke-direct {p1}, Lads_mobile_sdk/yt1;-><init>()V

    return-object p1

    .line 43
    :cond_44
    new-instance p1, Lads_mobile_sdk/zt1;

    invoke-direct {p1}, Lads_mobile_sdk/zt1;-><init>()V

    return-object p1
.end method

.method public final v()Lads_mobile_sdk/yh1$f;
    .registers 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/zt1;->andNodes_:Lads_mobile_sdk/yh1$f;

    return-object v0
.end method

.method public final x()Lads_mobile_sdk/qu1;
    .registers 2

    .line 433
    iget-object v0, p0, Lads_mobile_sdk/zt1;->matchNode_:Lads_mobile_sdk/qu1;

    if-nez v0, :cond_8

    invoke-static {}, Lads_mobile_sdk/qu1;->x()Lads_mobile_sdk/qu1;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final y()Lads_mobile_sdk/zt1;
    .registers 2

    .line 361
    iget-object v0, p0, Lads_mobile_sdk/zt1;->notNode_:Lads_mobile_sdk/zt1;

    if-nez v0, :cond_6

    .line 362
    sget-object v0, Lads_mobile_sdk/zt1;->DEFAULT_INSTANCE:Lads_mobile_sdk/zt1;

    :cond_6
    return-object v0
.end method

.method public final z()Lads_mobile_sdk/yh1$f;
    .registers 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/zt1;->orNodes_:Lads_mobile_sdk/yh1$f;

    return-object v0
.end method
