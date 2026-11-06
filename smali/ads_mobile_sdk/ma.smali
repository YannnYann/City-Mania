###### Class ads_mobile_sdk.ma (ads_mobile_sdk.ma)
.class public final enum Lads_mobile_sdk/ma;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$a;


# static fields
.field public static final enum b:Lads_mobile_sdk/ma;

.field public static final enum c:Lads_mobile_sdk/ma;

.field public static final enum d:Lads_mobile_sdk/ma;

.field public static final enum e:Lads_mobile_sdk/ma;

.field public static final enum f:Lads_mobile_sdk/ma;

.field public static final enum g:Lads_mobile_sdk/ma;

.field public static final enum h:Lads_mobile_sdk/ma;

.field public static final enum i:Lads_mobile_sdk/ma;

.field public static final synthetic j:[Lads_mobile_sdk/ma;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 1
    new-instance v0, Lads_mobile_sdk/ma;

    const-string v1, "UNKNOWN_HOST_TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lads_mobile_sdk/ma;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lads_mobile_sdk/ma;->b:Lads_mobile_sdk/ma;

    .line 5
    new-instance v1, Lads_mobile_sdk/ma;

    const-string v2, "GMA"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lads_mobile_sdk/ma;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lads_mobile_sdk/ma;->c:Lads_mobile_sdk/ma;

    .line 9
    new-instance v2, Lads_mobile_sdk/ma;

    const-string v3, "YOUTUBE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lads_mobile_sdk/ma;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lads_mobile_sdk/ma;->d:Lads_mobile_sdk/ma;

    .line 13
    new-instance v3, Lads_mobile_sdk/ma;

    const-string v4, "GPAY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lads_mobile_sdk/ma;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lads_mobile_sdk/ma;->e:Lads_mobile_sdk/ma;

    .line 17
    new-instance v4, Lads_mobile_sdk/ma;

    const-string v5, "IMA"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lads_mobile_sdk/ma;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lads_mobile_sdk/ma;->f:Lads_mobile_sdk/ma;

    .line 21
    new-instance v5, Lads_mobile_sdk/ma;

    const-string v6, "PAL"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lads_mobile_sdk/ma;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lads_mobile_sdk/ma;->g:Lads_mobile_sdk/ma;

    .line 25
    new-instance v6, Lads_mobile_sdk/ma;

    const-string v7, "MAPS"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lads_mobile_sdk/ma;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lads_mobile_sdk/ma;->h:Lads_mobile_sdk/ma;

    .line 26
    new-instance v7, Lads_mobile_sdk/ma;

    const/4 v8, 0x7

    const/4 v9, -0x1

    const-string v10, "UNRECOGNIZED"

    invoke-direct {v7, v10, v8, v9}, Lads_mobile_sdk/ma;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lads_mobile_sdk/ma;->i:Lads_mobile_sdk/ma;

    .line 27
    filled-new-array/range {v0 .. v7}, [Lads_mobile_sdk/ma;

    move-result-object v0

    .line 28
    sput-object v0, Lads_mobile_sdk/ma;->j:[Lads_mobile_sdk/ma;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 187
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 188
    iput p3, p0, Lads_mobile_sdk/ma;->a:I

    return-void
.end method

.method public static values()[Lads_mobile_sdk/ma;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/ma;->j:[Lads_mobile_sdk/ma;

    invoke-virtual {v0}, [Lads_mobile_sdk/ma;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/ma;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .line 117
    sget-object v0, Lads_mobile_sdk/ma;->i:Lads_mobile_sdk/ma;

    if-ne p0, v0, :cond_9

    .line 118
    invoke-static {}, Lads_mobile_sdk/yh1;->a()I

    move-result v0

    return v0

    .line 120
    :cond_9
    iget v0, p0, Lads_mobile_sdk/ma;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    const-class v1, Lads_mobile_sdk/ma;

    const/16 v2, 0x40

    invoke-static {v1, v0, v2}, Lads_mobile_sdk/sf;->a(Ljava/lang/Class;Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 351
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 352
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    sget-object v1, Lads_mobile_sdk/ma;->i:Lads_mobile_sdk/ma;

    if-eq p0, v1, :cond_2a

    .line 355
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lads_mobile_sdk/ma;->getNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 357
    :cond_2a
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
