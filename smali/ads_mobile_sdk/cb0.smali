###### Class ads_mobile_sdk.cb0 (ads_mobile_sdk.cb0)
.class public final enum Lads_mobile_sdk/cb0;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$a;


# static fields
.field public static final enum b:Lads_mobile_sdk/cb0;

.field public static final enum c:Lads_mobile_sdk/cb0;

.field public static final enum d:Lads_mobile_sdk/cb0;

.field public static final enum e:Lads_mobile_sdk/cb0;

.field public static final enum f:Lads_mobile_sdk/cb0;

.field public static final enum g:Lads_mobile_sdk/cb0;

.field public static final enum h:Lads_mobile_sdk/cb0;

.field public static final synthetic i:[Lads_mobile_sdk/cb0;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 1
    new-instance v0, Lads_mobile_sdk/cb0;

    const-string v1, "EVENT_URL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lads_mobile_sdk/cb0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lads_mobile_sdk/cb0;->b:Lads_mobile_sdk/cb0;

    .line 5
    new-instance v1, Lads_mobile_sdk/cb0;

    const-string v2, "LANDING_PAGE"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lads_mobile_sdk/cb0;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lads_mobile_sdk/cb0;->c:Lads_mobile_sdk/cb0;

    .line 9
    new-instance v2, Lads_mobile_sdk/cb0;

    const-string v3, "LANDING_REFERRER"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lads_mobile_sdk/cb0;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lads_mobile_sdk/cb0;->d:Lads_mobile_sdk/cb0;

    .line 13
    new-instance v3, Lads_mobile_sdk/cb0;

    const-string v4, "CLIENT_REDIRECT"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lads_mobile_sdk/cb0;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lads_mobile_sdk/cb0;->e:Lads_mobile_sdk/cb0;

    .line 21
    new-instance v4, Lads_mobile_sdk/cb0;

    const-string v5, "SERVER_REDIRECT"

    const/4 v7, 0x5

    invoke-direct {v4, v5, v6, v7}, Lads_mobile_sdk/cb0;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lads_mobile_sdk/cb0;->f:Lads_mobile_sdk/cb0;

    .line 31
    new-instance v5, Lads_mobile_sdk/cb0;

    const-string v6, "RECENT_NAVIGATION"

    const/4 v8, 0x6

    invoke-direct {v5, v6, v7, v8}, Lads_mobile_sdk/cb0;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lads_mobile_sdk/cb0;->g:Lads_mobile_sdk/cb0;

    .line 41
    new-instance v6, Lads_mobile_sdk/cb0;

    const-string v7, "REFERRER"

    const/4 v9, 0x7

    invoke-direct {v6, v7, v8, v9}, Lads_mobile_sdk/cb0;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lads_mobile_sdk/cb0;->h:Lads_mobile_sdk/cb0;

    .line 42
    filled-new-array/range {v0 .. v6}, [Lads_mobile_sdk/cb0;

    move-result-object v0

    .line 43
    sput-object v0, Lads_mobile_sdk/cb0;->i:[Lads_mobile_sdk/cb0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 21536
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21537
    iput p3, p0, Lads_mobile_sdk/cb0;->a:I

    return-void
.end method

.method public static values()[Lads_mobile_sdk/cb0;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/cb0;->i:[Lads_mobile_sdk/cb0;

    invoke-virtual {v0}, [Lads_mobile_sdk/cb0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/cb0;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .line 21471
    iget v0, p0, Lads_mobile_sdk/cb0;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-class v1, Lads_mobile_sdk/cb0;

    const/16 v2, 0x40

    invoke-static {v1, v0, v2}, Lads_mobile_sdk/sf;->a(Ljava/lang/Class;Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 21529
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 21530
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21532
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21533
    iget v1, p0, Lads_mobile_sdk/cb0;->a:I

    .line 21534
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21535
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21536
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
