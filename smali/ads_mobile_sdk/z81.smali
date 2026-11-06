###### Class ads_mobile_sdk.z81 (ads_mobile_sdk.z81)
.class public abstract Lads_mobile_sdk/z81;
.super Lads_mobile_sdk/hs;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 42
    const-string v0, "com.google.android.gms.ads.internal.request.ITrustlessTokenListener"

    invoke-direct {p0, v0}, Lads_mobile_sdk/hs;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9

    .line 1
    const-string v0, "Parcel data not fully consumed, unread size: "

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_36

    const/4 v3, 0x2

    if-eq p1, v3, :cond_b

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_b
    sget-object p1, Lads_mobile_sdk/oq0;->CREATOR:Landroid/os/Parcelable$Creator;

    sget v3, Lads_mobile_sdk/ly;->$r8$clinit:I

    .line 3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_16

    goto :goto_1d

    .line 6
    :cond_16
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/os/Parcelable;

    .line 7
    :goto_1d
    check-cast v1, Lads_mobile_sdk/oq0;

    .line 8
    invoke-virtual {p2}, Landroid/os/Parcel;->dataAvail()I

    move-result p1

    if-gtz p1, :cond_2c

    .line 9
    move-object p1, p0

    check-cast p1, Lads_mobile_sdk/wt3;

    invoke-virtual {p1, v1}, Lads_mobile_sdk/wt3;->a(Lads_mobile_sdk/oq0;)V

    goto :goto_73

    .line 10
    :cond_2c
    new-instance p2, Landroid/os/BadParcelableException;

    .line 11
    invoke-static {v0, p1}, Lads_mobile_sdk/uj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-direct {p2, p1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 13
    :cond_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 14
    sget-object v3, Lads_mobile_sdk/dl0;->CREATOR:Landroid/os/Parcelable$Creator;

    sget v4, Lads_mobile_sdk/ly;->$r8$clinit:I

    .line 15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-nez v4, :cond_45

    goto :goto_4b

    .line 18
    :cond_45
    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    .line 19
    :goto_4b
    check-cast v1, Lads_mobile_sdk/dl0;

    .line 20
    invoke-virtual {p2}, Landroid/os/Parcel;->dataAvail()I

    move-result p2

    if-gtz p2, :cond_77

    .line 21
    move-object p2, p0

    check-cast p2, Lads_mobile_sdk/wt3;

    .line 22
    const-string v0, "trustlessToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "decagonRequestParcel"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    new-instance v0, Lads_mobile_sdk/q01;

    invoke-direct {v0, p1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    .line 120
    iget-object p1, p2, Lads_mobile_sdk/wt3;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_6e

    goto :goto_73

    .line 122
    :cond_6e
    iget-object p1, p2, Lads_mobile_sdk/wt3;->h:Lkotlinx/coroutines/CompletableDeferred;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 123
    :goto_73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 124
    :cond_77
    new-instance p1, Landroid/os/BadParcelableException;

    .line 125
    invoke-static {v0, p2}, Lads_mobile_sdk/uj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 126
    invoke-direct {p1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
