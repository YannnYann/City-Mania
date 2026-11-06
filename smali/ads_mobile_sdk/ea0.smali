###### Class ads_mobile_sdk.ea0 (ads_mobile_sdk.ea0)
.class public final Lads_mobile_sdk/ea0;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/ea0;

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4


# instance fields
.field private bitField0_:I

.field private importScriptUrls_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requestedUrls_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private scopeUrl_:Ljava/lang/String;

.field private scriptUrl_:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/ea0;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/ea0;->DEFAULT_INSTANCE:Lads_mobile_sdk/ea0;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/ea0;

    invoke-direct {v0}, Lads_mobile_sdk/ea0;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/ea0;->DEFAULT_INSTANCE:Lads_mobile_sdk/ea0;

    .line 5
    const-class v1, Lads_mobile_sdk/ea0;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 62261
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 62262
    const-string v0, ""

    iput-object v0, p0, Lads_mobile_sdk/ea0;->scopeUrl_:Ljava/lang/String;

    .line 62263
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v1

    iput-object v1, p0, Lads_mobile_sdk/ea0;->requestedUrls_:Lads_mobile_sdk/yh1$f;

    .line 62264
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v1

    iput-object v1, p0, Lads_mobile_sdk/ea0;->importScriptUrls_:Lads_mobile_sdk/yh1$f;

    .line 62265
    iput-object v0, p0, Lads_mobile_sdk/ea0;->scriptUrl_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    sget-object p2, Lads_mobile_sdk/r70;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_40

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3a

    const/4 p2, 0x3

    if-eq p1, p2, :cond_23

    const/4 p2, 0x4

    if-eq p1, p2, :cond_20

    const/4 p2, 0x5

    if-eq p1, p2, :cond_19

    const/4 p1, 0x0

    return-object p1

    .line 25
    :cond_19
    const-class p1, Lads_mobile_sdk/ea0;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 26
    :cond_20
    sget-object p1, Lads_mobile_sdk/ea0;->DEFAULT_INSTANCE:Lads_mobile_sdk/ea0;

    return-object p1

    .line 27
    :cond_23
    const-string p1, "importScriptUrls_"

    const-string p2, "scriptUrl_"

    const-string p3, "bitField0_"

    const-string v0, "scopeUrl_"

    const-string v1, "requestedUrls_"

    filled-new-array {p3, v0, v1, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 37
    sget-object p2, Lads_mobile_sdk/ea0;->DEFAULT_INSTANCE:Lads_mobile_sdk/ea0;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0002\u0000\u0001\u1008\u0000\u0002\u001a\u0003\u001a\u0004\u1008\u0001"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 38
    :cond_3a
    new-instance p1, Lads_mobile_sdk/da0;

    invoke-direct {p1}, Lads_mobile_sdk/da0;-><init>()V

    return-object p1

    .line 39
    :cond_40
    new-instance p1, Lads_mobile_sdk/ea0;

    invoke-direct {p1}, Lads_mobile_sdk/ea0;-><init>()V

    return-object p1
.end method
