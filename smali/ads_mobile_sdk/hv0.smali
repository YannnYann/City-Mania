###### Class ads_mobile_sdk.hv0 (ads_mobile_sdk.hv0)
.class public abstract synthetic Lads_mobile_sdk/hv0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    invoke-static {}, Lads_mobile_sdk/qb3;->values()[Lads_mobile_sdk/qb3;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_8
    aput v1, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_a} :catch_a

    :catch_a
    const/4 v1, 0x2

    :try_start_b
    aput v1, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_d} :catch_d

    :catch_d
    sput-object v0, Lads_mobile_sdk/hv0;->a:[I

    return-void
.end method
