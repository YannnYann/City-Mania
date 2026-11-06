###### Class ads_mobile_sdk.qh (ads_mobile_sdk.qh)
.class public final Lads_mobile_sdk/qh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$b;


# static fields
.field public static final a:Lads_mobile_sdk/qh;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/qh;

    invoke-direct {v0}, Lads_mobile_sdk/qh;-><init>()V

    sput-object v0, Lads_mobile_sdk/qh;->a:Lads_mobile_sdk/qh;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .registers 2

    .line 123
    invoke-static {p1}, Lads_mobile_sdk/rh;->a(I)Lads_mobile_sdk/rh;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method
