###### Class ads_mobile_sdk.qw3 (ads_mobile_sdk.qw3)
.class public final enum Lads_mobile_sdk/qw3;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lads_mobile_sdk/qw3;

.field public static final enum b:Lads_mobile_sdk/qw3;

.field public static final enum c:Lads_mobile_sdk/qw3;

.field public static final enum d:Lads_mobile_sdk/qw3;

.field public static final enum e:Lads_mobile_sdk/qw3;

.field public static final enum f:Lads_mobile_sdk/qw3;

.field public static final synthetic g:[Lads_mobile_sdk/qw3;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 1
    new-instance v0, Lads_mobile_sdk/qw3;

    const-string v1, "RESULT_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/qw3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lads_mobile_sdk/qw3;->a:Lads_mobile_sdk/qw3;

    .line 2
    new-instance v1, Lads_mobile_sdk/qw3;

    const-string v2, "RESULT_NOOP_LOCAL_PROGRAM_STILL_VALID"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lads_mobile_sdk/qw3;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lads_mobile_sdk/qw3;->b:Lads_mobile_sdk/qw3;

    .line 3
    new-instance v2, Lads_mobile_sdk/qw3;

    const-string v3, "RESULT_UPDATED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lads_mobile_sdk/qw3;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lads_mobile_sdk/qw3;->c:Lads_mobile_sdk/qw3;

    .line 4
    new-instance v3, Lads_mobile_sdk/qw3;

    const-string v4, "RESULT_NOOP_NO_NEW_PROGRAM"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lads_mobile_sdk/qw3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lads_mobile_sdk/qw3;->d:Lads_mobile_sdk/qw3;

    .line 5
    new-instance v4, Lads_mobile_sdk/qw3;

    const-string v5, "RESULT_FAILURE_INVALID_RESPONSE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lads_mobile_sdk/qw3;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lads_mobile_sdk/qw3;->e:Lads_mobile_sdk/qw3;

    .line 6
    new-instance v5, Lads_mobile_sdk/qw3;

    const-string v6, "RESULT_FAILURE_FETCHER_HTTP_RUNTIME_EXCEPTION"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lads_mobile_sdk/qw3;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lads_mobile_sdk/qw3;->f:Lads_mobile_sdk/qw3;

    .line 7
    filled-new-array/range {v0 .. v5}, [Lads_mobile_sdk/qw3;

    move-result-object v0

    .line 8
    sput-object v0, Lads_mobile_sdk/qw3;->g:[Lads_mobile_sdk/qw3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lads_mobile_sdk/qw3;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/qw3;->g:[Lads_mobile_sdk/qw3;

    invoke-virtual {v0}, [Lads_mobile_sdk/qw3;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/qw3;

    return-object v0
.end method
