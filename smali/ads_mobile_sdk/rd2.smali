###### Class ads_mobile_sdk.rd2 (ads_mobile_sdk.rd2)
.class public final Lads_mobile_sdk/rd2;
.super Lads_mobile_sdk/nd2;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lads_mobile_sdk/gl3;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lads_mobile_sdk/nd2;-><init>(Lads_mobile_sdk/gl3;)V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 2
    iget-object p1, p0, Lads_mobile_sdk/nd2;->b:Lads_mobile_sdk/md2;

    check-cast p1, Lads_mobile_sdk/gl3;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p1, Lads_mobile_sdk/gl3;->a:Lorg/json/JSONObject;

    return-object v0
.end method
