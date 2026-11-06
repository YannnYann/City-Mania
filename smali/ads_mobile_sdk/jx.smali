###### Class ads_mobile_sdk.jx (ads_mobile_sdk.jx)
.class public final enum Lads_mobile_sdk/jx;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$a;


# static fields
.field public static final enum b:Lads_mobile_sdk/jx;

.field public static final enum c:Lads_mobile_sdk/jx;

.field public static final synthetic d:[Lads_mobile_sdk/jx;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lads_mobile_sdk/jx;

    const-string v1, "DOWNLOADABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lads_mobile_sdk/jx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lads_mobile_sdk/jx;->b:Lads_mobile_sdk/jx;

    .line 9
    new-instance v1, Lads_mobile_sdk/jx;

    const-string v2, "DOWNLOADED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lads_mobile_sdk/jx;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lads_mobile_sdk/jx;->c:Lads_mobile_sdk/jx;

    .line 10
    filled-new-array {v0, v1}, [Lads_mobile_sdk/jx;

    move-result-object v0

    .line 11
    sput-object v0, Lads_mobile_sdk/jx;->d:[Lads_mobile_sdk/jx;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 640
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 641
    iput p3, p0, Lads_mobile_sdk/jx;->a:I

    return-void
.end method

.method public static values()[Lads_mobile_sdk/jx;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/jx;->d:[Lads_mobile_sdk/jx;

    invoke-virtual {v0}, [Lads_mobile_sdk/jx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/jx;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .line 580
    iget v0, p0, Lads_mobile_sdk/jx;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-class v1, Lads_mobile_sdk/jx;

    const/16 v2, 0x40

    invoke-static {v1, v0, v2}, Lads_mobile_sdk/sf;->a(Ljava/lang/Class;Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 633
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 634
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    iget v1, p0, Lads_mobile_sdk/jx;->a:I

    .line 638
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 639
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
