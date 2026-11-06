###### Class ads_mobile_sdk.tl3 (ads_mobile_sdk.tl3)
.class public final Lads_mobile_sdk/tl3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$b;


# static fields
.field public static final a:Lads_mobile_sdk/tl3;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/tl3;

    invoke-direct {v0}, Lads_mobile_sdk/tl3;-><init>()V

    sput-object v0, Lads_mobile_sdk/tl3;->a:Lads_mobile_sdk/tl3;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .registers 4

    const/4 v0, 0x1

    if-eqz p1, :cond_10

    if-eq p1, v0, :cond_d

    const/4 v1, 0x2

    if-eq p1, v1, :cond_a

    const/4 p1, 0x0

    goto :goto_12

    .line 2
    :cond_a
    sget-object p1, Lads_mobile_sdk/vl3;->d:Lads_mobile_sdk/vl3;

    goto :goto_12

    .line 3
    :cond_d
    sget-object p1, Lads_mobile_sdk/vl3;->c:Lads_mobile_sdk/vl3;

    goto :goto_12

    .line 4
    :cond_10
    sget-object p1, Lads_mobile_sdk/vl3;->b:Lads_mobile_sdk/vl3;

    :goto_12
    if-eqz p1, :cond_15

    return v0

    :cond_15
    const/4 p1, 0x0

    return p1
.end method
