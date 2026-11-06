###### Class ads_mobile_sdk.z11 (ads_mobile_sdk.z11)
.class public final enum Lads_mobile_sdk/z11;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$a;


# static fields
.field public static final enum b:Lads_mobile_sdk/z11;

.field public static final enum c:Lads_mobile_sdk/z11;

.field public static final synthetic d:[Lads_mobile_sdk/z11;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Lads_mobile_sdk/z11;

    const-string v1, "TAG_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lads_mobile_sdk/z11;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lads_mobile_sdk/z11;->b:Lads_mobile_sdk/z11;

    .line 2
    new-instance v1, Lads_mobile_sdk/z11;

    const/4 v2, 0x1

    const/4 v3, -0x1

    const-string v4, "UNRECOGNIZED"

    invoke-direct {v1, v4, v2, v3}, Lads_mobile_sdk/z11;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lads_mobile_sdk/z11;->c:Lads_mobile_sdk/z11;

    .line 3
    filled-new-array {v0, v1}, [Lads_mobile_sdk/z11;

    move-result-object v0

    .line 4
    sput-object v0, Lads_mobile_sdk/z11;->d:[Lads_mobile_sdk/z11;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 2608
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2609
    iput p3, p0, Lads_mobile_sdk/z11;->a:I

    return-void
.end method

.method public static values()[Lads_mobile_sdk/z11;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/z11;->d:[Lads_mobile_sdk/z11;

    invoke-virtual {v0}, [Lads_mobile_sdk/z11;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/z11;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .line 2544
    sget-object v0, Lads_mobile_sdk/z11;->c:Lads_mobile_sdk/z11;

    if-ne p0, v0, :cond_9

    .line 2545
    invoke-static {}, Lads_mobile_sdk/yh1;->a()I

    move-result v0

    return v0

    .line 2547
    :cond_9
    iget v0, p0, Lads_mobile_sdk/z11;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 2595
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2596
    const-class v1, Lads_mobile_sdk/z11;

    const/16 v2, 0x40

    invoke-static {v1, v0, v2}, Lads_mobile_sdk/sf;->a(Ljava/lang/Class;Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5193
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 5194
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5196
    sget-object v1, Lads_mobile_sdk/z11;->c:Lads_mobile_sdk/z11;

    if-eq p0, v1, :cond_2a

    .line 5197
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lads_mobile_sdk/z11;->getNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5199
    :cond_2a
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5200
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
