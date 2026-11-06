###### Class ads_mobile_sdk.r (ads_mobile_sdk.r)
.class public final enum Lads_mobile_sdk/r;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lads_mobile_sdk/r;

.field public static final enum c:Lads_mobile_sdk/r;

.field public static final enum d:Lads_mobile_sdk/r;

.field public static final enum e:Lads_mobile_sdk/r;

.field public static final enum f:Lads_mobile_sdk/r;

.field public static final enum g:Lads_mobile_sdk/r;

.field public static final enum h:Lads_mobile_sdk/r;

.field public static final synthetic i:[Lads_mobile_sdk/r;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 1
    new-instance v0, Lads_mobile_sdk/r;

    const/4 v1, -0x2

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lads_mobile_sdk/r;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lads_mobile_sdk/r;->b:Lads_mobile_sdk/r;

    .line 2
    new-instance v1, Lads_mobile_sdk/r;

    const/4 v2, -0x1

    const-string v4, "STOPPED"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lads_mobile_sdk/r;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lads_mobile_sdk/r;->c:Lads_mobile_sdk/r;

    .line 3
    new-instance v2, Lads_mobile_sdk/r;

    const-string v4, "PAUSED"

    const/4 v6, 0x2

    invoke-direct {v2, v4, v6, v3}, Lads_mobile_sdk/r;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lads_mobile_sdk/r;->d:Lads_mobile_sdk/r;

    .line 4
    new-instance v3, Lads_mobile_sdk/r;

    const-string v4, "CREATED"

    const/4 v7, 0x3

    invoke-direct {v3, v4, v7, v5}, Lads_mobile_sdk/r;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lads_mobile_sdk/r;->e:Lads_mobile_sdk/r;

    .line 5
    new-instance v4, Lads_mobile_sdk/r;

    const-string v5, "INITIAL"

    const/4 v8, 0x4

    invoke-direct {v4, v5, v8, v6}, Lads_mobile_sdk/r;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lads_mobile_sdk/r;->f:Lads_mobile_sdk/r;

    .line 6
    new-instance v5, Lads_mobile_sdk/r;

    const-string v6, "STARTED"

    const/4 v9, 0x5

    invoke-direct {v5, v6, v9, v7}, Lads_mobile_sdk/r;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lads_mobile_sdk/r;->g:Lads_mobile_sdk/r;

    .line 7
    new-instance v6, Lads_mobile_sdk/r;

    const-string v7, "RESUMED"

    const/4 v9, 0x6

    invoke-direct {v6, v7, v9, v8}, Lads_mobile_sdk/r;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lads_mobile_sdk/r;->h:Lads_mobile_sdk/r;

    .line 8
    filled-new-array/range {v0 .. v6}, [Lads_mobile_sdk/r;

    move-result-object v0

    .line 9
    sput-object v0, Lads_mobile_sdk/r;->i:[Lads_mobile_sdk/r;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lads_mobile_sdk/r;->a:I

    return-void
.end method

.method public static values()[Lads_mobile_sdk/r;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/r;->i:[Lads_mobile_sdk/r;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/r;

    return-object v0
.end method
