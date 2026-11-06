###### Class ads_mobile_sdk.tg (ads_mobile_sdk.tg)
.class public final enum Lads_mobile_sdk/tg;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$a;


# static fields
.field public static final enum b:Lads_mobile_sdk/tg;

.field public static final enum c:Lads_mobile_sdk/tg;

.field public static final enum d:Lads_mobile_sdk/tg;

.field public static final enum e:Lads_mobile_sdk/tg;

.field public static final enum f:Lads_mobile_sdk/tg;

.field public static final enum g:Lads_mobile_sdk/tg;

.field public static final enum h:Lads_mobile_sdk/tg;

.field public static final enum i:Lads_mobile_sdk/tg;

.field public static final enum j:Lads_mobile_sdk/tg;

.field public static final synthetic k:[Lads_mobile_sdk/tg;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 1
    new-instance v0, Lads_mobile_sdk/tg;

    const-string v1, "NETWORK_INTERFACE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lads_mobile_sdk/tg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lads_mobile_sdk/tg;->b:Lads_mobile_sdk/tg;

    .line 5
    new-instance v1, Lads_mobile_sdk/tg;

    const-string v2, "NETWORK_INTERFACE_NOT_SET"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lads_mobile_sdk/tg;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lads_mobile_sdk/tg;->c:Lads_mobile_sdk/tg;

    .line 9
    new-instance v2, Lads_mobile_sdk/tg;

    const-string v3, "NETWORK_INTERFACE_ERROR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lads_mobile_sdk/tg;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lads_mobile_sdk/tg;->d:Lads_mobile_sdk/tg;

    .line 13
    new-instance v3, Lads_mobile_sdk/tg;

    const-string v4, "NETWORK_INTERFACE_WIFI"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lads_mobile_sdk/tg;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lads_mobile_sdk/tg;->e:Lads_mobile_sdk/tg;

    .line 17
    new-instance v4, Lads_mobile_sdk/tg;

    const-string v5, "NETWORK_INTERFACE_CELLULAR"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lads_mobile_sdk/tg;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lads_mobile_sdk/tg;->f:Lads_mobile_sdk/tg;

    .line 21
    new-instance v5, Lads_mobile_sdk/tg;

    const-string v6, "NETWORK_INTERFACE_ETHERNET"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lads_mobile_sdk/tg;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lads_mobile_sdk/tg;->g:Lads_mobile_sdk/tg;

    .line 25
    new-instance v6, Lads_mobile_sdk/tg;

    const-string v7, "NETWORK_INTERFACE_LOOPBACK"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lads_mobile_sdk/tg;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lads_mobile_sdk/tg;->h:Lads_mobile_sdk/tg;

    .line 29
    new-instance v7, Lads_mobile_sdk/tg;

    const-string v8, "NETWORK_INTERFACE_OTHER"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lads_mobile_sdk/tg;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lads_mobile_sdk/tg;->i:Lads_mobile_sdk/tg;

    .line 33
    new-instance v8, Lads_mobile_sdk/tg;

    const-string v9, "NETWORK_INTERFACE_NO_CONNECTION"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, Lads_mobile_sdk/tg;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lads_mobile_sdk/tg;->j:Lads_mobile_sdk/tg;

    .line 34
    filled-new-array/range {v0 .. v8}, [Lads_mobile_sdk/tg;

    move-result-object v0

    .line 35
    sput-object v0, Lads_mobile_sdk/tg;->k:[Lads_mobile_sdk/tg;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 7698
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7699
    iput p3, p0, Lads_mobile_sdk/tg;->a:I

    return-void
.end method

.method public static values()[Lads_mobile_sdk/tg;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/tg;->k:[Lads_mobile_sdk/tg;

    invoke-virtual {v0}, [Lads_mobile_sdk/tg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/tg;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .line 7631
    iget v0, p0, Lads_mobile_sdk/tg;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-class v1, Lads_mobile_sdk/tg;

    const/16 v2, 0x40

    invoke-static {v1, v0, v2}, Lads_mobile_sdk/sf;->a(Ljava/lang/Class;Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7691
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 7692
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7694
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7695
    iget v1, p0, Lads_mobile_sdk/tg;->a:I

    .line 7696
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7697
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7698
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
