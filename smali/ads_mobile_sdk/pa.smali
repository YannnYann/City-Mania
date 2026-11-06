###### Class ads_mobile_sdk.pa (ads_mobile_sdk.pa)
.class public final enum Lads_mobile_sdk/pa;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$a;


# static fields
.field public static final enum b:Lads_mobile_sdk/pa;

.field public static final enum c:Lads_mobile_sdk/pa;

.field public static final synthetic d:[Lads_mobile_sdk/pa;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Lads_mobile_sdk/pa;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lads_mobile_sdk/pa;-><init>(Ljava/lang/String;II)V

    .line 5
    new-instance v1, Lads_mobile_sdk/pa;

    const/4 v2, 0x1

    const/16 v3, 0xf

    const-string v4, "ADSHIELD"

    invoke-direct {v1, v4, v2, v3}, Lads_mobile_sdk/pa;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lads_mobile_sdk/pa;->b:Lads_mobile_sdk/pa;

    .line 6
    new-instance v2, Lads_mobile_sdk/pa;

    const/4 v3, 0x2

    const/4 v4, -0x1

    const-string v5, "UNRECOGNIZED"

    invoke-direct {v2, v5, v3, v4}, Lads_mobile_sdk/pa;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lads_mobile_sdk/pa;->c:Lads_mobile_sdk/pa;

    .line 7
    filled-new-array {v0, v1, v2}, [Lads_mobile_sdk/pa;

    move-result-object v0

    .line 8
    sput-object v0, Lads_mobile_sdk/pa;->d:[Lads_mobile_sdk/pa;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 118
    iput p3, p0, Lads_mobile_sdk/pa;->a:I

    return-void
.end method

.method public static values()[Lads_mobile_sdk/pa;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/pa;->d:[Lads_mobile_sdk/pa;

    invoke-virtual {v0}, [Lads_mobile_sdk/pa;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/pa;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .line 52
    sget-object v0, Lads_mobile_sdk/pa;->c:Lads_mobile_sdk/pa;

    if-ne p0, v0, :cond_9

    .line 53
    invoke-static {}, Lads_mobile_sdk/yh1;->a()I

    move-result v0

    return v0

    .line 55
    :cond_9
    iget v0, p0, Lads_mobile_sdk/pa;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    const-class v1, Lads_mobile_sdk/pa;

    const/16 v2, 0x40

    invoke-static {v1, v0, v2}, Lads_mobile_sdk/sf;->a(Ljava/lang/Class;Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 211
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 212
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    sget-object v1, Lads_mobile_sdk/pa;->c:Lads_mobile_sdk/pa;

    if-eq p0, v1, :cond_2a

    .line 215
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lads_mobile_sdk/pa;->getNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    :cond_2a
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
