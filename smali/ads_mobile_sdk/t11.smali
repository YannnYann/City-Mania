###### Class ads_mobile_sdk.t11 (ads_mobile_sdk.t11)
.class public final enum Lads_mobile_sdk/t11;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$a;


# static fields
.field public static final enum b:Lads_mobile_sdk/t11;

.field public static final enum c:Lads_mobile_sdk/t11;

.field public static final enum d:Lads_mobile_sdk/t11;

.field public static final enum e:Lads_mobile_sdk/t11;

.field public static final enum f:Lads_mobile_sdk/t11;

.field public static final enum g:Lads_mobile_sdk/t11;

.field public static final enum h:Lads_mobile_sdk/t11;

.field public static final enum i:Lads_mobile_sdk/t11;

.field public static final enum j:Lads_mobile_sdk/t11;

.field public static final enum k:Lads_mobile_sdk/t11;

.field public static final synthetic l:[Lads_mobile_sdk/t11;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 1
    new-instance v0, Lads_mobile_sdk/t11;

    const-string v1, "FORMAT_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lads_mobile_sdk/t11;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lads_mobile_sdk/t11;->b:Lads_mobile_sdk/t11;

    .line 5
    new-instance v1, Lads_mobile_sdk/t11;

    const-string v2, "FORMAT_BANNER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lads_mobile_sdk/t11;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lads_mobile_sdk/t11;->c:Lads_mobile_sdk/t11;

    .line 9
    new-instance v2, Lads_mobile_sdk/t11;

    const-string v3, "FORMAT_INTERSTITIAL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lads_mobile_sdk/t11;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lads_mobile_sdk/t11;->d:Lads_mobile_sdk/t11;

    .line 13
    new-instance v3, Lads_mobile_sdk/t11;

    const-string v4, "FORMAT_REWARDED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lads_mobile_sdk/t11;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lads_mobile_sdk/t11;->e:Lads_mobile_sdk/t11;

    .line 17
    new-instance v4, Lads_mobile_sdk/t11;

    const-string v5, "FORMAT_REWARDED_INTERSTITIAL"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lads_mobile_sdk/t11;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lads_mobile_sdk/t11;->f:Lads_mobile_sdk/t11;

    .line 21
    new-instance v5, Lads_mobile_sdk/t11;

    const-string v6, "FORMAT_APP_OPEN"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lads_mobile_sdk/t11;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lads_mobile_sdk/t11;->g:Lads_mobile_sdk/t11;

    .line 25
    new-instance v6, Lads_mobile_sdk/t11;

    const-string v7, "FORMAT_NATIVE"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lads_mobile_sdk/t11;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lads_mobile_sdk/t11;->h:Lads_mobile_sdk/t11;

    .line 29
    new-instance v7, Lads_mobile_sdk/t11;

    const-string v8, "FORMAT_ICON"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lads_mobile_sdk/t11;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lads_mobile_sdk/t11;->i:Lads_mobile_sdk/t11;

    .line 33
    new-instance v8, Lads_mobile_sdk/t11;

    const-string v9, "FORMAT_SWIPEABLE_INTERSTITIAL"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, Lads_mobile_sdk/t11;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lads_mobile_sdk/t11;->j:Lads_mobile_sdk/t11;

    .line 34
    new-instance v9, Lads_mobile_sdk/t11;

    const/16 v10, 0x9

    const/4 v11, -0x1

    const-string v12, "UNRECOGNIZED"

    invoke-direct {v9, v12, v10, v11}, Lads_mobile_sdk/t11;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lads_mobile_sdk/t11;->k:Lads_mobile_sdk/t11;

    .line 35
    filled-new-array/range {v0 .. v9}, [Lads_mobile_sdk/t11;

    move-result-object v0

    .line 36
    sput-object v0, Lads_mobile_sdk/t11;->l:[Lads_mobile_sdk/t11;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 3110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3111
    iput p3, p0, Lads_mobile_sdk/t11;->a:I

    return-void
.end method

.method public static values()[Lads_mobile_sdk/t11;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/t11;->l:[Lads_mobile_sdk/t11;

    invoke-virtual {v0}, [Lads_mobile_sdk/t11;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/t11;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .line 3038
    sget-object v0, Lads_mobile_sdk/t11;->k:Lads_mobile_sdk/t11;

    if-ne p0, v0, :cond_9

    .line 3039
    invoke-static {}, Lads_mobile_sdk/yh1;->a()I

    move-result v0

    return v0

    .line 3041
    :cond_9
    iget v0, p0, Lads_mobile_sdk/t11;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 3097
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3098
    const-class v1, Lads_mobile_sdk/t11;

    const/16 v2, 0x40

    invoke-static {v1, v0, v2}, Lads_mobile_sdk/sf;->a(Ljava/lang/Class;Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6197
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 6198
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6200
    sget-object v1, Lads_mobile_sdk/t11;->k:Lads_mobile_sdk/t11;

    if-eq p0, v1, :cond_2a

    .line 6201
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lads_mobile_sdk/t11;->getNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6203
    :cond_2a
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6204
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
