###### Class ads_mobile_sdk.ph3 (ads_mobile_sdk.ph3)
.class public final enum Lads_mobile_sdk/ph3;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lads_mobile_sdk/ph3;

.field public static final synthetic b:[Lads_mobile_sdk/ph3;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lads_mobile_sdk/ph3;

    const-string v1, "BACKGROUND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/ph3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lads_mobile_sdk/ph3;->a:Lads_mobile_sdk/ph3;

    .line 2
    new-instance v1, Lads_mobile_sdk/ph3;

    const-string v2, "UI"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lads_mobile_sdk/ph3;-><init>(Ljava/lang/String;I)V

    .line 3
    filled-new-array {v0, v1}, [Lads_mobile_sdk/ph3;

    move-result-object v0

    .line 4
    sput-object v0, Lads_mobile_sdk/ph3;->b:[Lads_mobile_sdk/ph3;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lads_mobile_sdk/ph3;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/ph3;->b:[Lads_mobile_sdk/ph3;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/ph3;

    return-object v0
.end method
