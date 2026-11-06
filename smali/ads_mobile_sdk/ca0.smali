###### Class ads_mobile_sdk.ca0 (ads_mobile_sdk.ca0)
.class public final enum Lads_mobile_sdk/ca0;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$a;


# static fields
.field public static final enum b:Lads_mobile_sdk/ca0;

.field public static final enum c:Lads_mobile_sdk/ca0;

.field public static final enum d:Lads_mobile_sdk/ca0;

.field public static final enum e:Lads_mobile_sdk/ca0;

.field public static final enum f:Lads_mobile_sdk/ca0;

.field public static final enum g:Lads_mobile_sdk/ca0;

.field public static final enum h:Lads_mobile_sdk/ca0;

.field public static final enum i:Lads_mobile_sdk/ca0;

.field public static final enum j:Lads_mobile_sdk/ca0;

.field public static final enum k:Lads_mobile_sdk/ca0;

.field public static final enum l:Lads_mobile_sdk/ca0;

.field public static final enum m:Lads_mobile_sdk/ca0;

.field public static final synthetic n:[Lads_mobile_sdk/ca0;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .line 1
    new-instance v0, Lads_mobile_sdk/ca0;

    const-string v1, "SAFE_BROWSING_URL_API_TYPE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lads_mobile_sdk/ca0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lads_mobile_sdk/ca0;->b:Lads_mobile_sdk/ca0;

    .line 10
    new-instance v1, Lads_mobile_sdk/ca0;

    const-string v2, "PVER3_NATIVE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lads_mobile_sdk/ca0;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lads_mobile_sdk/ca0;->c:Lads_mobile_sdk/ca0;

    .line 23
    new-instance v2, Lads_mobile_sdk/ca0;

    const-string v3, "PVER4_NATIVE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lads_mobile_sdk/ca0;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lads_mobile_sdk/ca0;->d:Lads_mobile_sdk/ca0;

    .line 33
    new-instance v3, Lads_mobile_sdk/ca0;

    const-string v4, "ANDROID_SAFETYNET"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lads_mobile_sdk/ca0;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lads_mobile_sdk/ca0;->e:Lads_mobile_sdk/ca0;

    .line 44
    new-instance v4, Lads_mobile_sdk/ca0;

    const-string v5, "FLYWHEEL"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lads_mobile_sdk/ca0;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lads_mobile_sdk/ca0;->f:Lads_mobile_sdk/ca0;

    .line 54
    new-instance v5, Lads_mobile_sdk/ca0;

    const-string v6, "REAL_TIME"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lads_mobile_sdk/ca0;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lads_mobile_sdk/ca0;->g:Lads_mobile_sdk/ca0;

    .line 65
    new-instance v6, Lads_mobile_sdk/ca0;

    const-string v7, "PVER5_NATIVE_REAL_TIME"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lads_mobile_sdk/ca0;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lads_mobile_sdk/ca0;->h:Lads_mobile_sdk/ca0;

    .line 77
    new-instance v7, Lads_mobile_sdk/ca0;

    const-string v8, "ANDROID_SAFEBROWSING_REAL_TIME"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lads_mobile_sdk/ca0;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lads_mobile_sdk/ca0;->i:Lads_mobile_sdk/ca0;

    .line 93
    new-instance v8, Lads_mobile_sdk/ca0;

    const-string v9, "ANDROID_SAFEBROWSING"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, Lads_mobile_sdk/ca0;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lads_mobile_sdk/ca0;->j:Lads_mobile_sdk/ca0;

    .line 101
    new-instance v9, Lads_mobile_sdk/ca0;

    const-string v10, "CLIENT_SIDE_DETECTION"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11, v11}, Lads_mobile_sdk/ca0;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lads_mobile_sdk/ca0;->k:Lads_mobile_sdk/ca0;

    .line 109
    new-instance v10, Lads_mobile_sdk/ca0;

    const-string v11, "GLIC"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12, v12}, Lads_mobile_sdk/ca0;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lads_mobile_sdk/ca0;->l:Lads_mobile_sdk/ca0;

    .line 121
    new-instance v11, Lads_mobile_sdk/ca0;

    const-string v12, "PVER5_NATIVE_LOCAL_BLOCKLIST"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13, v13}, Lads_mobile_sdk/ca0;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lads_mobile_sdk/ca0;->m:Lads_mobile_sdk/ca0;

    .line 122
    filled-new-array/range {v0 .. v11}, [Lads_mobile_sdk/ca0;

    move-result-object v0

    .line 123
    sput-object v0, Lads_mobile_sdk/ca0;->n:[Lads_mobile_sdk/ca0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 46994
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46995
    iput p3, p0, Lads_mobile_sdk/ca0;->a:I

    return-void
.end method

.method public static values()[Lads_mobile_sdk/ca0;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/ca0;->n:[Lads_mobile_sdk/ca0;

    invoke-virtual {v0}, [Lads_mobile_sdk/ca0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/ca0;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .line 46924
    iget v0, p0, Lads_mobile_sdk/ca0;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-class v1, Lads_mobile_sdk/ca0;

    const/16 v2, 0x40

    invoke-static {v1, v0, v2}, Lads_mobile_sdk/sf;->a(Ljava/lang/Class;Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 46987
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 46988
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46990
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46991
    iget v1, p0, Lads_mobile_sdk/ca0;->a:I

    .line 46992
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46993
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46994
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
