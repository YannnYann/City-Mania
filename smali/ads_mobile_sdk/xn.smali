###### Class ads_mobile_sdk.xn (ads_mobile_sdk.xn)
.class public final Lads_mobile_sdk/xn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$b;


# static fields
.field public static final a:Lads_mobile_sdk/xn;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/xn;

    invoke-direct {v0}, Lads_mobile_sdk/xn;-><init>()V

    sput-object v0, Lads_mobile_sdk/xn;->a:Lads_mobile_sdk/xn;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .registers 2

    .line 127
    invoke-static {p1}, Lads_mobile_sdk/yn;->a(I)Lads_mobile_sdk/yn;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method
