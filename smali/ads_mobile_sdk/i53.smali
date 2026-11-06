###### Class ads_mobile_sdk.i53 (ads_mobile_sdk.i53)
.class public final enum Lads_mobile_sdk/i53;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$a;


# static fields
.field public static final enum b:Lads_mobile_sdk/i53;

.field public static final enum c:Lads_mobile_sdk/i53;

.field public static final synthetic d:[Lads_mobile_sdk/i53;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 1
    new-instance v0, Lads_mobile_sdk/i53;

    const-string v1, "REQUEST_TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lads_mobile_sdk/i53;-><init>(Ljava/lang/String;II)V

    .line 5
    new-instance v1, Lads_mobile_sdk/i53;

    const-string v2, "REQUEST_TYPE_ADX"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lads_mobile_sdk/i53;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lads_mobile_sdk/i53;->b:Lads_mobile_sdk/i53;

    .line 9
    new-instance v2, Lads_mobile_sdk/i53;

    const-string v3, "REQUEST_TYPE_ADMOB"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lads_mobile_sdk/i53;-><init>(Ljava/lang/String;II)V

    .line 13
    new-instance v3, Lads_mobile_sdk/i53;

    const-string v4, "REQUEST_TYPE_AD_MANAGER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lads_mobile_sdk/i53;-><init>(Ljava/lang/String;II)V

    .line 17
    new-instance v4, Lads_mobile_sdk/i53;

    const/4 v5, 0x4

    const/4 v6, 0x6

    const-string v7, "REQUEST_TYPE_SCAR"

    invoke-direct {v4, v7, v5, v6}, Lads_mobile_sdk/i53;-><init>(Ljava/lang/String;II)V

    .line 18
    new-instance v5, Lads_mobile_sdk/i53;

    const/4 v6, 0x5

    const/4 v7, -0x1

    const-string v8, "UNRECOGNIZED"

    invoke-direct {v5, v8, v6, v7}, Lads_mobile_sdk/i53;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lads_mobile_sdk/i53;->c:Lads_mobile_sdk/i53;

    .line 19
    filled-new-array/range {v0 .. v5}, [Lads_mobile_sdk/i53;

    move-result-object v0

    .line 20
    sput-object v0, Lads_mobile_sdk/i53;->d:[Lads_mobile_sdk/i53;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 132
    iput p3, p0, Lads_mobile_sdk/i53;->a:I

    return-void
.end method

.method public static values()[Lads_mobile_sdk/i53;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/i53;->d:[Lads_mobile_sdk/i53;

    invoke-virtual {v0}, [Lads_mobile_sdk/i53;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/i53;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .line 63
    sget-object v0, Lads_mobile_sdk/i53;->c:Lads_mobile_sdk/i53;

    if-ne p0, v0, :cond_9

    .line 64
    invoke-static {}, Lads_mobile_sdk/yh1;->a()I

    move-result v0

    return v0

    .line 66
    :cond_9
    iget v0, p0, Lads_mobile_sdk/i53;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    const-class v1, Lads_mobile_sdk/i53;

    const/16 v2, 0x40

    invoke-static {v1, v0, v2}, Lads_mobile_sdk/sf;->a(Ljava/lang/Class;Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 239
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 240
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    sget-object v1, Lads_mobile_sdk/i53;->c:Lads_mobile_sdk/i53;

    if-eq p0, v1, :cond_2a

    .line 243
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lads_mobile_sdk/i53;->getNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    :cond_2a
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
