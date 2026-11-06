###### Class ads_mobile_sdk.va0 (ads_mobile_sdk.va0)
.class public final Lads_mobile_sdk/va0;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/va0;

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x5

.field public static final g:I = 0x6

.field public static final h:I = 0x7


# instance fields
.field private attribute_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Lads_mobile_sdk/ta0;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private childIds_:Lads_mobile_sdk/yh1$c;

.field private id_:I

.field private innerHtml_:Lads_mobile_sdk/du;

.field private resourceId_:I

.field private tag_:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/va0;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/va0;->DEFAULT_INSTANCE:Lads_mobile_sdk/va0;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/va0;

    invoke-direct {v0}, Lads_mobile_sdk/va0;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/va0;->DEFAULT_INSTANCE:Lads_mobile_sdk/va0;

    .line 5
    const-class v1, Lads_mobile_sdk/va0;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 43853
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 43854
    const-string v0, ""

    iput-object v0, p0, Lads_mobile_sdk/va0;->tag_:Ljava/lang/String;

    .line 43855
    invoke-static {}, Lads_mobile_sdk/vz0;->i()Lads_mobile_sdk/yh1$c;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/va0;->childIds_:Lads_mobile_sdk/yh1$c;

    .line 43856
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/va0;->attribute_:Lads_mobile_sdk/yh1$f;

    .line 43857
    sget-object v0, Lads_mobile_sdk/du;->b:Lads_mobile_sdk/du;

    iput-object v0, p0, Lads_mobile_sdk/va0;->innerHtml_:Lads_mobile_sdk/du;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    .line 1
    sget-object p2, Lads_mobile_sdk/r70;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_46

    const/4 p2, 0x2

    if-eq p1, p2, :cond_40

    const/4 p2, 0x3

    if-eq p1, p2, :cond_23

    const/4 p2, 0x4

    if-eq p1, p2, :cond_20

    const/4 p2, 0x5

    if-eq p1, p2, :cond_19

    const/4 p1, 0x0

    return-object p1

    .line 28
    :cond_19
    const-class p1, Lads_mobile_sdk/va0;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 29
    :cond_20
    sget-object p1, Lads_mobile_sdk/va0;->DEFAULT_INSTANCE:Lads_mobile_sdk/va0;

    return-object p1

    .line 30
    :cond_23
    const-class v6, Lads_mobile_sdk/ta0;

    const-string v7, "innerHtml_"

    const-string v0, "bitField0_"

    const-string v1, "id_"

    const-string v2, "tag_"

    const-string v3, "childIds_"

    const-string v4, "resourceId_"

    const-string v5, "attribute_"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    .line 43
    sget-object p2, Lads_mobile_sdk/va0;->DEFAULT_INSTANCE:Lads_mobile_sdk/va0;

    const-string p3, "\u0001\u0006\u0000\u0001\u0001\u0007\u0006\u0000\u0002\u0000\u0001\u1004\u0000\u0002\u1008\u0001\u0003\u0016\u0005\u1004\u0002\u0006\u001b\u0007\u100a\u0003"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 44
    :cond_40
    new-instance p1, Lads_mobile_sdk/ua0;

    invoke-direct {p1}, Lads_mobile_sdk/ua0;-><init>()V

    return-object p1

    .line 45
    :cond_46
    new-instance p1, Lads_mobile_sdk/va0;

    invoke-direct {p1}, Lads_mobile_sdk/va0;-><init>()V

    return-object p1
.end method
