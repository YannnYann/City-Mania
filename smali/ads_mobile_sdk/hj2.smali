###### Class ads_mobile_sdk.hj2 (ads_mobile_sdk.hj2)
.class public final Lads_mobile_sdk/hj2;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/hj2;

.field public static final c:I = 0x1


# instance fields
.field private rules_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Lads_mobile_sdk/ej2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/hj2;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/hj2;->DEFAULT_INSTANCE:Lads_mobile_sdk/hj2;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/hj2;

    invoke-direct {v0}, Lads_mobile_sdk/hj2;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/hj2;->DEFAULT_INSTANCE:Lads_mobile_sdk/hj2;

    .line 5
    const-class v1, Lads_mobile_sdk/hj2;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 26
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/hj2;->rules_:Lads_mobile_sdk/yh1$f;

    return-void
.end method

.method public static a([B)Lads_mobile_sdk/hj2;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/hj2;->DEFAULT_INSTANCE:Lads_mobile_sdk/hj2;

    invoke-static {v0, p0}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/vz0;[B)Lads_mobile_sdk/vz0;

    move-result-object p0

    check-cast p0, Lads_mobile_sdk/hj2;

    return-object p0
.end method

.method public static v()Lads_mobile_sdk/hj2;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/hj2;->DEFAULT_INSTANCE:Lads_mobile_sdk/hj2;

    return-object v0
.end method

.method public static y()Lads_mobile_sdk/gj2;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/hj2;->DEFAULT_INSTANCE:Lads_mobile_sdk/hj2;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->h()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/gj2;

    return-object v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 2
    sget-object p2, Lads_mobile_sdk/fj2;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3a

    const/4 p2, 0x2

    if-eq p1, p2, :cond_34

    const/4 p2, 0x3

    if-eq p1, p2, :cond_23

    const/4 p2, 0x4

    if-eq p1, p2, :cond_20

    const/4 p2, 0x5

    if-eq p1, p2, :cond_19

    const/4 p1, 0x0

    return-object p1

    .line 22
    :cond_19
    const-class p1, Lads_mobile_sdk/hj2;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 23
    :cond_20
    sget-object p1, Lads_mobile_sdk/hj2;->DEFAULT_INSTANCE:Lads_mobile_sdk/hj2;

    return-object p1

    .line 24
    :cond_23
    const-string p1, "rules_"

    const-class p2, Lads_mobile_sdk/ej2;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 30
    sget-object p2, Lads_mobile_sdk/hj2;->DEFAULT_INSTANCE:Lads_mobile_sdk/hj2;

    const-string p3, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 31
    :cond_34
    new-instance p1, Lads_mobile_sdk/gj2;

    invoke-direct {p1}, Lads_mobile_sdk/gj2;-><init>()V

    return-object p1

    .line 32
    :cond_3a
    new-instance p1, Lads_mobile_sdk/hj2;

    invoke-direct {p1}, Lads_mobile_sdk/hj2;-><init>()V

    return-object p1
.end method

.method public final w()I
    .registers 2

    .line 49
    iget-object v0, p0, Lads_mobile_sdk/hj2;->rules_:Lads_mobile_sdk/yh1$f;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final x()Lads_mobile_sdk/yh1$f;
    .registers 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/hj2;->rules_:Lads_mobile_sdk/yh1$f;

    return-object v0
.end method
