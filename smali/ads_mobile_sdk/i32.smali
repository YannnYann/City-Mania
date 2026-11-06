###### Class ads_mobile_sdk.i32 (ads_mobile_sdk.i32)
.class public final enum Lads_mobile_sdk/i32;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lads_mobile_sdk/i32;

.field public static final enum c:Lads_mobile_sdk/i32;

.field public static final enum d:Lads_mobile_sdk/i32;

.field public static final enum e:Lads_mobile_sdk/i32;

.field public static final enum f:Lads_mobile_sdk/i32;

.field public static final enum g:Lads_mobile_sdk/i32;

.field public static final synthetic h:[Lads_mobile_sdk/i32;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 1
    new-instance v0, Lads_mobile_sdk/i32;

    const-string v1, "SCROLL_VIEW_TYPE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lads_mobile_sdk/i32;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lads_mobile_sdk/i32;->b:Lads_mobile_sdk/i32;

    .line 2
    new-instance v1, Lads_mobile_sdk/i32;

    const-string v2, "SCROLL_VIEW_TYPE_SCROLL_VIEW"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lads_mobile_sdk/i32;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lads_mobile_sdk/i32;->c:Lads_mobile_sdk/i32;

    .line 3
    new-instance v2, Lads_mobile_sdk/i32;

    const-string v3, "SCROLL_VIEW_TYPE_ABS_LIST_VIEW"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lads_mobile_sdk/i32;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lads_mobile_sdk/i32;->d:Lads_mobile_sdk/i32;

    .line 4
    new-instance v3, Lads_mobile_sdk/i32;

    const-string v4, "SCROLL_VIEW_TYPE_HORIZONTAL_SCROLL_VIEW"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lads_mobile_sdk/i32;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lads_mobile_sdk/i32;->e:Lads_mobile_sdk/i32;

    .line 5
    new-instance v4, Lads_mobile_sdk/i32;

    const-string v5, "SCROLL_VIEW_TYPE_SCROLLING_VIEW"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lads_mobile_sdk/i32;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lads_mobile_sdk/i32;->f:Lads_mobile_sdk/i32;

    .line 6
    new-instance v5, Lads_mobile_sdk/i32;

    const-string v6, "SCROLL_VIEW_TYPE_BY_KEYWORD"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lads_mobile_sdk/i32;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lads_mobile_sdk/i32;->g:Lads_mobile_sdk/i32;

    .line 7
    filled-new-array/range {v0 .. v5}, [Lads_mobile_sdk/i32;

    move-result-object v0

    .line 8
    sput-object v0, Lads_mobile_sdk/i32;->h:[Lads_mobile_sdk/i32;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lads_mobile_sdk/i32;->a:I

    return-void
.end method

.method public static values()[Lads_mobile_sdk/i32;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/i32;->h:[Lads_mobile_sdk/i32;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/i32;

    return-object v0
.end method
