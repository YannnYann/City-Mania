###### Class ads_mobile_sdk.ir0 (ads_mobile_sdk.ir0)
.class public final enum Lads_mobile_sdk/ir0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lads_mobile_sdk/ir0;

.field public static final enum c:Lads_mobile_sdk/ir0;

.field public static final enum d:Lads_mobile_sdk/ir0;

.field public static final enum e:Lads_mobile_sdk/ir0;

.field public static final enum f:Lads_mobile_sdk/ir0;

.field public static final enum g:Lads_mobile_sdk/ir0;

.field public static final synthetic h:[Lads_mobile_sdk/ir0;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 1
    new-instance v0, Lads_mobile_sdk/ir0;

    const-string v1, "INTERNAL_ERROR"

    const-string v2, "Internal error."

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lads_mobile_sdk/ir0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lads_mobile_sdk/ir0;->b:Lads_mobile_sdk/ir0;

    .line 2
    new-instance v1, Lads_mobile_sdk/ir0;

    const-string v2, "NO_FILL_ERROR"

    const-string v3, "No fill."

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lads_mobile_sdk/ir0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lads_mobile_sdk/ir0;->c:Lads_mobile_sdk/ir0;

    .line 3
    new-instance v2, Lads_mobile_sdk/ir0;

    const-string v3, "TIMEOUT_ERROR"

    const-string v4, "Operation timed out."

    const/4 v5, 0x2

    invoke-direct {v2, v5, v3, v4}, Lads_mobile_sdk/ir0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lads_mobile_sdk/ir0;->d:Lads_mobile_sdk/ir0;

    .line 4
    new-instance v3, Lads_mobile_sdk/ir0;

    const-string v4, "WEB_VIEW_DESTROYED_ERROR"

    const-string v5, "The system WebView required for this operation was terminated."

    const/4 v6, 0x3

    invoke-direct {v3, v6, v4, v5}, Lads_mobile_sdk/ir0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lads_mobile_sdk/ir0;->e:Lads_mobile_sdk/ir0;

    .line 5
    new-instance v4, Lads_mobile_sdk/ir0;

    const-string v5, "SWIPEABLE_INTERSTITIAL_S2S_TYPE_UNSUPPORTED_ERROR"

    const-string v6, "Swipeable Interstitial is not supported for "

    const/4 v7, 0x4

    invoke-direct {v4, v7, v5, v6}, Lads_mobile_sdk/ir0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lads_mobile_sdk/ir0;->f:Lads_mobile_sdk/ir0;

    .line 6
    new-instance v5, Lads_mobile_sdk/ir0;

    .line 7
    const-string v6, "SWIPEABLE_INTERSTITIAL_MUTUALLY_EXCLUSIVE_CCG_ERROR"

    const-string v7, "Both SDK and publisher determined Custom Click Gesture are enabled on this request. Pick one to enable and make sure your ad unit is eligible."

    const/4 v8, 0x5

    invoke-direct {v5, v8, v6, v7}, Lads_mobile_sdk/ir0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lads_mobile_sdk/ir0;->g:Lads_mobile_sdk/ir0;

    .line 8
    filled-new-array/range {v0 .. v5}, [Lads_mobile_sdk/ir0;

    move-result-object v0

    .line 9
    sput-object v0, Lads_mobile_sdk/ir0;->h:[Lads_mobile_sdk/ir0;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 2
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lads_mobile_sdk/ir0;->a:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lads_mobile_sdk/ir0;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/ir0;->h:[Lads_mobile_sdk/ir0;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/ir0;

    return-object v0
.end method


# virtual methods
.method public final d()Ljava/lang/String;
    .registers 2

    .line 208
    iget-object v0, p0, Lads_mobile_sdk/ir0;->a:Ljava/lang/String;

    return-object v0
.end method
