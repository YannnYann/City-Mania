###### Class ads_mobile_sdk.d80 (ads_mobile_sdk.d80)
.class public final Lads_mobile_sdk/d80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$b;


# static fields
.field public static final a:Lads_mobile_sdk/d80;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/d80;

    invoke-direct {v0}, Lads_mobile_sdk/d80;-><init>()V

    sput-object v0, Lads_mobile_sdk/d80;->a:Lads_mobile_sdk/d80;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 2354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .registers 4

    const/4 v0, 0x1

    if-eqz p1, :cond_16

    if-eq p1, v0, :cond_13

    const/4 v1, 0x2

    if-eq p1, v1, :cond_10

    const/4 v1, 0x3

    if-eq p1, v1, :cond_d

    const/4 p1, 0x0

    goto :goto_18

    .line 2
    :cond_d
    sget-object p1, Lads_mobile_sdk/e80;->e:Lads_mobile_sdk/e80;

    goto :goto_18

    .line 3
    :cond_10
    sget-object p1, Lads_mobile_sdk/e80;->d:Lads_mobile_sdk/e80;

    goto :goto_18

    .line 4
    :cond_13
    sget-object p1, Lads_mobile_sdk/e80;->c:Lads_mobile_sdk/e80;

    goto :goto_18

    .line 5
    :cond_16
    sget-object p1, Lads_mobile_sdk/e80;->b:Lads_mobile_sdk/e80;

    :goto_18
    if-eqz p1, :cond_1b

    return v0

    :cond_1b
    const/4 p1, 0x0

    return p1
.end method
