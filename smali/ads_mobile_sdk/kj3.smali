###### Class ads_mobile_sdk.kj3 (ads_mobile_sdk.kj3)
.class public final enum Lads_mobile_sdk/kj3;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lads_mobile_sdk/kj3;

.field public static final enum c:Lads_mobile_sdk/kj3;

.field public static final enum d:Lads_mobile_sdk/kj3;

.field public static final enum e:Lads_mobile_sdk/kj3;

.field public static final synthetic f:[Lads_mobile_sdk/kj3;


# instance fields
.field public final a:J


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 1
    new-instance v0, Lads_mobile_sdk/kj3;

    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    const/16 v2, 0x1e

    invoke-static {v2, v1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v2

    const/4 v4, 0x0

    const-string v5, "FAST"

    invoke-direct {v0, v4, v2, v3, v5}, Lads_mobile_sdk/kj3;-><init>(IJLjava/lang/String;)V

    sput-object v0, Lads_mobile_sdk/kj3;->b:Lads_mobile_sdk/kj3;

    .line 2
    new-instance v2, Lads_mobile_sdk/kj3;

    const/16 v3, 0x64

    invoke-static {v3, v1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v3

    const/4 v5, 0x1

    const-string v6, "MEDIUM"

    invoke-direct {v2, v5, v3, v4, v6}, Lads_mobile_sdk/kj3;-><init>(IJLjava/lang/String;)V

    sput-object v2, Lads_mobile_sdk/kj3;->c:Lads_mobile_sdk/kj3;

    .line 3
    new-instance v3, Lads_mobile_sdk/kj3;

    const/16 v4, 0x12c

    invoke-static {v4, v1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v4

    const/4 v6, 0x2

    const-string v7, "SLOW"

    invoke-direct {v3, v6, v4, v5, v7}, Lads_mobile_sdk/kj3;-><init>(IJLjava/lang/String;)V

    sput-object v3, Lads_mobile_sdk/kj3;->d:Lads_mobile_sdk/kj3;

    .line 4
    new-instance v4, Lads_mobile_sdk/kj3;

    const/16 v5, 0x3e8

    invoke-static {v5, v1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v5

    const/4 v1, 0x3

    const-string v7, "SUPER_SLOW"

    invoke-direct {v4, v1, v5, v6, v7}, Lads_mobile_sdk/kj3;-><init>(IJLjava/lang/String;)V

    sput-object v4, Lads_mobile_sdk/kj3;->e:Lads_mobile_sdk/kj3;

    .line 5
    filled-new-array {v0, v2, v3, v4}, [Lads_mobile_sdk/kj3;

    move-result-object v0

    .line 6
    sput-object v0, Lads_mobile_sdk/kj3;->f:[Lads_mobile_sdk/kj3;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;)V
    .registers 5

    .line 2
    invoke-direct {p0, p4, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p2, p0, Lads_mobile_sdk/kj3;->a:J

    return-void
.end method

.method public static values()[Lads_mobile_sdk/kj3;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/kj3;->f:[Lads_mobile_sdk/kj3;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/kj3;

    return-object v0
.end method


# virtual methods
.method public final d()J
    .registers 3

    .line 22
    iget-wide v0, p0, Lads_mobile_sdk/kj3;->a:J

    return-wide v0
.end method
