###### Class ads_mobile_sdk.ph (ads_mobile_sdk.ph)
.class public final enum Lads_mobile_sdk/ph;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$a;


# static fields
.field public static final enum b:Lads_mobile_sdk/ph;

.field public static final enum c:Lads_mobile_sdk/ph;

.field public static final enum d:Lads_mobile_sdk/ph;

.field public static final enum e:Lads_mobile_sdk/ph;

.field public static final enum f:Lads_mobile_sdk/ph;

.field public static final enum g:Lads_mobile_sdk/ph;

.field public static final enum h:Lads_mobile_sdk/ph;

.field public static final synthetic i:[Lads_mobile_sdk/ph;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 1
    new-instance v0, Lads_mobile_sdk/ph;

    const-string v1, "UNKNOWN_ENCRYPTION_METHOD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lads_mobile_sdk/ph;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lads_mobile_sdk/ph;->b:Lads_mobile_sdk/ph;

    .line 10
    new-instance v1, Lads_mobile_sdk/ph;

    const-string v2, "BITSLICER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lads_mobile_sdk/ph;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lads_mobile_sdk/ph;->c:Lads_mobile_sdk/ph;

    .line 21
    new-instance v2, Lads_mobile_sdk/ph;

    const-string v3, "TINK_HYBRID"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lads_mobile_sdk/ph;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lads_mobile_sdk/ph;->d:Lads_mobile_sdk/ph;

    .line 32
    new-instance v3, Lads_mobile_sdk/ph;

    const-string v4, "UNENCRYPTED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lads_mobile_sdk/ph;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lads_mobile_sdk/ph;->e:Lads_mobile_sdk/ph;

    .line 42
    new-instance v4, Lads_mobile_sdk/ph;

    const-string v5, "DG"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lads_mobile_sdk/ph;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lads_mobile_sdk/ph;->f:Lads_mobile_sdk/ph;

    .line 51
    new-instance v5, Lads_mobile_sdk/ph;

    const-string v6, "DG_XTEA"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lads_mobile_sdk/ph;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lads_mobile_sdk/ph;->g:Lads_mobile_sdk/ph;

    .line 62
    new-instance v6, Lads_mobile_sdk/ph;

    const-string v7, "ADSHIELD_3"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lads_mobile_sdk/ph;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lads_mobile_sdk/ph;->h:Lads_mobile_sdk/ph;

    .line 63
    filled-new-array/range {v0 .. v6}, [Lads_mobile_sdk/ph;

    move-result-object v0

    .line 64
    sput-object v0, Lads_mobile_sdk/ph;->i:[Lads_mobile_sdk/ph;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 499
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 500
    iput p3, p0, Lads_mobile_sdk/ph;->a:I

    return-void
.end method

.method public static values()[Lads_mobile_sdk/ph;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/ph;->i:[Lads_mobile_sdk/ph;

    invoke-virtual {v0}, [Lads_mobile_sdk/ph;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/ph;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .line 434
    iget v0, p0, Lads_mobile_sdk/ph;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-class v1, Lads_mobile_sdk/ph;

    const/16 v2, 0x40

    invoke-static {v1, v0, v2}, Lads_mobile_sdk/sf;->a(Ljava/lang/Class;Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 492
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 493
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    iget v1, p0, Lads_mobile_sdk/ph;->a:I

    .line 497
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 498
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
