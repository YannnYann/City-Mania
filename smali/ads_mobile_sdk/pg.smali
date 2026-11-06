###### Class ads_mobile_sdk.pg (ads_mobile_sdk.pg)
.class public final enum Lads_mobile_sdk/pg;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$a;


# static fields
.field public static final enum b:Lads_mobile_sdk/pg;

.field public static final enum c:Lads_mobile_sdk/pg;

.field public static final enum d:Lads_mobile_sdk/pg;

.field public static final enum e:Lads_mobile_sdk/pg;

.field public static final enum f:Lads_mobile_sdk/pg;

.field public static final enum g:Lads_mobile_sdk/pg;

.field public static final enum h:Lads_mobile_sdk/pg;

.field public static final enum i:Lads_mobile_sdk/pg;

.field public static final enum j:Lads_mobile_sdk/pg;

.field public static final enum k:Lads_mobile_sdk/pg;

.field public static final synthetic l:[Lads_mobile_sdk/pg;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 1
    new-instance v0, Lads_mobile_sdk/pg;

    const-string v1, "MARKETPLACE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lads_mobile_sdk/pg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lads_mobile_sdk/pg;->b:Lads_mobile_sdk/pg;

    .line 5
    new-instance v1, Lads_mobile_sdk/pg;

    const-string v2, "MARKETPLACE_NOT_SET"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lads_mobile_sdk/pg;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lads_mobile_sdk/pg;->c:Lads_mobile_sdk/pg;

    .line 9
    new-instance v2, Lads_mobile_sdk/pg;

    const-string v3, "MARKETPLACE_UNKNOWN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lads_mobile_sdk/pg;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lads_mobile_sdk/pg;->d:Lads_mobile_sdk/pg;

    .line 13
    new-instance v3, Lads_mobile_sdk/pg;

    const-string v4, "MARKETPLACE_ERROR"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lads_mobile_sdk/pg;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lads_mobile_sdk/pg;->e:Lads_mobile_sdk/pg;

    .line 17
    new-instance v4, Lads_mobile_sdk/pg;

    const-string v5, "MARKETPLACE_API_NOT_AVAILABLE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lads_mobile_sdk/pg;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lads_mobile_sdk/pg;->f:Lads_mobile_sdk/pg;

    .line 21
    new-instance v5, Lads_mobile_sdk/pg;

    const-string v6, "MARKETPLACE_APPSTORE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lads_mobile_sdk/pg;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lads_mobile_sdk/pg;->g:Lads_mobile_sdk/pg;

    .line 25
    new-instance v6, Lads_mobile_sdk/pg;

    const-string v7, "MARKETPLACE_TESTFLIGHT"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lads_mobile_sdk/pg;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lads_mobile_sdk/pg;->h:Lads_mobile_sdk/pg;

    .line 29
    new-instance v7, Lads_mobile_sdk/pg;

    const-string v8, "MARKETPLACE_ALTERNATE"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lads_mobile_sdk/pg;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lads_mobile_sdk/pg;->i:Lads_mobile_sdk/pg;

    .line 33
    new-instance v8, Lads_mobile_sdk/pg;

    const-string v9, "MARKETPLACE_WEB"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, Lads_mobile_sdk/pg;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lads_mobile_sdk/pg;->j:Lads_mobile_sdk/pg;

    .line 37
    new-instance v9, Lads_mobile_sdk/pg;

    const-string v10, "MARKETPLACE_OTHER"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11, v11}, Lads_mobile_sdk/pg;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lads_mobile_sdk/pg;->k:Lads_mobile_sdk/pg;

    .line 38
    filled-new-array/range {v0 .. v9}, [Lads_mobile_sdk/pg;

    move-result-object v0

    .line 39
    sput-object v0, Lads_mobile_sdk/pg;->l:[Lads_mobile_sdk/pg;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 8119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8120
    iput p3, p0, Lads_mobile_sdk/pg;->a:I

    return-void
.end method

.method public static values()[Lads_mobile_sdk/pg;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/pg;->l:[Lads_mobile_sdk/pg;

    invoke-virtual {v0}, [Lads_mobile_sdk/pg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/pg;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .line 8051
    iget v0, p0, Lads_mobile_sdk/pg;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-class v1, Lads_mobile_sdk/pg;

    const/16 v2, 0x40

    invoke-static {v1, v0, v2}, Lads_mobile_sdk/sf;->a(Ljava/lang/Class;Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8112
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 8113
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8115
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8116
    iget v1, p0, Lads_mobile_sdk/pg;->a:I

    .line 8117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8118
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8119
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
