###### Class ads_mobile_sdk.d (ads_mobile_sdk.d)
.class public abstract Lads_mobile_sdk/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1}, Lads_mobile_sdk/ud0;->a(I)Ljava/util/LinkedHashMap;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/d;->a:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lads_mobile_sdk/dw2;)V
    .registers 4

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/d;->a:Ljava/util/LinkedHashMap;

    if-eqz p2, :cond_8

    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 3
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "provider"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
