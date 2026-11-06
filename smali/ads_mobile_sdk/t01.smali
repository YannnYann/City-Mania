###### Class ads_mobile_sdk.t01 (ads_mobile_sdk.t01)
.class public final Lads_mobile_sdk/t01;
.super Lads_mobile_sdk/i01;
.source "SourceFile"


# static fields
.field public static final c:Lads_mobile_sdk/t01;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/t01;

    invoke-direct {v0}, Lads_mobile_sdk/t01;-><init>()V

    sput-object v0, Lads_mobile_sdk/t01;->c:Lads_mobile_sdk/t01;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 106
    sget-object v0, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lads_mobile_sdk/i01;-><init>(Lads_mobile_sdk/kk1;I)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of p1, p1, Lads_mobile_sdk/t01;

    if-nez p1, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .registers 2

    .line 0
    const v0, 0x1659f9a6

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "WebViewCapReachedError"

    return-object v0
.end method
