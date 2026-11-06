###### Class ads_mobile_sdk.h2 (ads_mobile_sdk.h2)
.class public final enum Lads_mobile_sdk/h2;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final b:Lads_mobile_sdk/g2;

.field public static final c:Ljava/util/LinkedHashMap;

.field public static final enum d:Lads_mobile_sdk/h2;

.field public static final enum e:Lads_mobile_sdk/h2;

.field public static final enum f:Lads_mobile_sdk/h2;

.field public static final enum g:Lads_mobile_sdk/h2;

.field public static final synthetic h:[Lads_mobile_sdk/h2;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Lads_mobile_sdk/h2;

    const-string v1, "FORMAT_DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lads_mobile_sdk/h2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lads_mobile_sdk/h2;->d:Lads_mobile_sdk/h2;

    .line 2
    new-instance v1, Lads_mobile_sdk/h2;

    const-string v3, "ON_AD_OPENED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lads_mobile_sdk/h2;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lads_mobile_sdk/h2;->e:Lads_mobile_sdk/h2;

    .line 3
    new-instance v3, Lads_mobile_sdk/h2;

    const-string v4, "ON_AD_SHOW"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v5}, Lads_mobile_sdk/h2;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lads_mobile_sdk/h2;->f:Lads_mobile_sdk/h2;

    .line 4
    new-instance v4, Lads_mobile_sdk/h2;

    const-string v5, "THIRD_PARTY_SDK_CALLBACK"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v6}, Lads_mobile_sdk/h2;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lads_mobile_sdk/h2;->g:Lads_mobile_sdk/h2;

    .line 5
    filled-new-array {v0, v1, v3, v4}, [Lads_mobile_sdk/h2;

    move-result-object v0

    .line 6
    sput-object v0, Lads_mobile_sdk/h2;->h:[Lads_mobile_sdk/h2;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    new-instance v0, Lads_mobile_sdk/g2;

    .line 7
    invoke-direct {v0}, Lads_mobile_sdk/g2;-><init>()V

    .line 8
    sput-object v0, Lads_mobile_sdk/h2;->b:Lads_mobile_sdk/g2;

    .line 11
    invoke-static {}, Lads_mobile_sdk/h2;->values()[Lads_mobile_sdk/h2;

    move-result-object v0

    .line 417
    array-length v1, v0

    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v1

    const/16 v3, 0x10

    invoke-static {v1, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 418
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 419
    array-length v1, v0

    :goto_4d
    if-ge v2, v1, :cond_5d

    aget-object v4, v0, v2

    .line 420
    iget v5, v4, Lads_mobile_sdk/h2;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 829
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 830
    :cond_5d
    sput-object v3, Lads_mobile_sdk/h2;->c:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 159
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lads_mobile_sdk/h2;->a:I

    return-void
.end method

.method public static final synthetic d()Ljava/util/LinkedHashMap;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/h2;->c:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public static values()[Lads_mobile_sdk/h2;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/h2;->h:[Lads_mobile_sdk/h2;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/h2;

    return-object v0
.end method
