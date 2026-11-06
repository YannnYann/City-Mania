###### Class ads_mobile_sdk.q30 (ads_mobile_sdk.q30)
.class public abstract Lads_mobile_sdk/q30;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const v0, 0x71482545

    not-int v1, v0

    const v2, 0x4db8228

    and-int/2addr v1, v2

    const v2, 0x402868d0

    or-int/2addr v1, v2

    const v2, 0x44f3ca6c

    and-int/2addr v0, v2

    const v2, 0x6a284dc5

    or-int/2addr v0, v2

    const v2, -0x6773a491

    const v3, 0x64c0532

    .line 1
    invoke-static {v1, v0, v2, v3}, Lads_mobile_sdk/p30;->a(IIII)I

    move-result v0

    const v1, 0x70836196

    const v2, 0x539f7f12

    rem-int/2addr v1, v2

    xor-int/2addr v0, v1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x3d020f37

    aput v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x17bbe8c2

    aput v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x4e2a8c1

    aput v2, v0, v1

    const/4 v1, 0x3

    const v2, 0x2e523686

    aput v2, v0, v1

    sput-object v0, Lads_mobile_sdk/q30;->a:[I

    return-void
.end method
