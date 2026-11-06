###### Class ads_mobile_sdk.i13 (ads_mobile_sdk.i13)
.class final Lads_mobile_sdk/i13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/rw1;


# instance fields
.field private final a:Lads_mobile_sdk/tw1;

.field private final b:Ljava/lang/String;

.field private final c:[Ljava/lang/Object;

.field private final d:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Lads_mobile_sdk/i13;->a:Lads_mobile_sdk/tw1;

    .line 174
    iput-object p2, p0, Lads_mobile_sdk/i13;->b:Ljava/lang/String;

    .line 175
    iput-object p3, p0, Lads_mobile_sdk/i13;->c:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 177
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const p3, 0xd800

    if-ge p1, p3, :cond_16

    .line 179
    iput p1, p0, Lads_mobile_sdk/i13;->d:I

    return-void

    :cond_16
    and-int/lit16 p1, p1, 0x1fff

    const/16 v0, 0xd

    const/4 v1, 0x1

    :goto_1b
    add-int/lit8 v2, v1, 0x1

    .line 183
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, p3, :cond_2b

    and-int/lit16 v1, v1, 0x1fff

    shl-int/2addr v1, v0

    or-int/2addr p1, v1

    add-int/lit8 v0, v0, 0xd

    move v1, v2

    goto :goto_1b

    :cond_2b
    shl-int p2, v1, v0

    or-int/2addr p1, p2

    .line 187
    iput p1, p0, Lads_mobile_sdk/i13;->d:I

    return-void
.end method


# virtual methods
.method public a()Lads_mobile_sdk/zv2;
    .registers 3

    .line 206
    iget v0, p0, Lads_mobile_sdk/i13;->d:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_9

    .line 207
    sget-object v0, Lads_mobile_sdk/zv2;->a:Lads_mobile_sdk/zv2;

    return-object v0

    :cond_9
    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_10

    .line 209
    sget-object v0, Lads_mobile_sdk/zv2;->c:Lads_mobile_sdk/zv2;

    return-object v0

    .line 211
    :cond_10
    sget-object v0, Lads_mobile_sdk/zv2;->b:Lads_mobile_sdk/zv2;

    return-object v0
.end method

.method public b()Lads_mobile_sdk/tw1;
    .registers 2

    .line 201
    iget-object v0, p0, Lads_mobile_sdk/i13;->a:Lads_mobile_sdk/tw1;

    return-object v0
.end method

.method public c()Z
    .registers 3

    .line 217
    iget v0, p0, Lads_mobile_sdk/i13;->d:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public d()[Ljava/lang/Object;
    .registers 2

    .line 196
    iget-object v0, p0, Lads_mobile_sdk/i13;->c:[Ljava/lang/Object;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 192
    iget-object v0, p0, Lads_mobile_sdk/i13;->b:Ljava/lang/String;

    return-object v0
.end method
