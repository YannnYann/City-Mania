###### Class ads_mobile_sdk.g (ads_mobile_sdk.g)
.class public abstract Lads_mobile_sdk/g;
.super Lads_mobile_sdk/nd2;
.source "SourceFile"


# instance fields
.field public final c:Ljava/util/HashSet;

.field public final d:Lorg/json/JSONObject;

.field public final e:J


# direct methods
.method public constructor <init>(Lads_mobile_sdk/gl3;Ljava/util/HashSet;Lorg/json/JSONObject;J)V
    .registers 6

    .line 2
    invoke-direct {p0, p1}, Lads_mobile_sdk/nd2;-><init>(Lads_mobile_sdk/gl3;)V

    .line 3
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lads_mobile_sdk/g;->c:Ljava/util/HashSet;

    .line 4
    iput-object p3, p0, Lads_mobile_sdk/g;->d:Lorg/json/JSONObject;

    .line 5
    iput-wide p4, p0, Lads_mobile_sdk/g;->e:J

    return-void
.end method
