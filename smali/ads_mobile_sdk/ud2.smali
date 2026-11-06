###### Class ads_mobile_sdk.ud2 (ads_mobile_sdk.ud2)
.class public final Lads_mobile_sdk/ud2;
.super Lads_mobile_sdk/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lads_mobile_sdk/gl3;Ljava/util/HashSet;Lorg/json/JSONObject;J)V
    .registers 6

    .line 2
    invoke-direct/range {p0 .. p5}, Lads_mobile_sdk/g;-><init>(Lads_mobile_sdk/gl3;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 2
    iget-object p1, p0, Lads_mobile_sdk/g;->d:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 9
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lads_mobile_sdk/ud2;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public final onPostExecute(Ljava/lang/String;)V
    .registers 8

    .line 10
    sget-object v0, Lads_mobile_sdk/q9;->c:Lads_mobile_sdk/q9;

    if-eqz v0, :cond_4b

    .line 11
    iget-object v0, v0, Lads_mobile_sdk/q9;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/p9;

    .line 13
    iget-object v2, p0, Lads_mobile_sdk/g;->c:Ljava/util/HashSet;

    .line 14
    iget-object v3, v1, Lads_mobile_sdk/p9;->g:Ljava/lang/String;

    .line 15
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 16
    iget-object v1, v1, Lads_mobile_sdk/p9;->d:Lads_mobile_sdk/r9;

    .line 17
    iget-wide v2, p0, Lads_mobile_sdk/g;->e:J

    .line 18
    iget-wide v4, v1, Lads_mobile_sdk/r9;->d:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_e

    .line 19
    iget v2, v1, Lads_mobile_sdk/r9;->c:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_e

    .line 20
    iput v3, v1, Lads_mobile_sdk/r9;->c:I

    .line 21
    sget-object v2, Lads_mobile_sdk/qd2;->a:Lads_mobile_sdk/qd2;

    .line 22
    iget-object v3, v1, Lads_mobile_sdk/r9;->b:Lads_mobile_sdk/uy3;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    .line 23
    iget-object v1, v1, Lads_mobile_sdk/r9;->a:Ljava/lang/String;

    .line 24
    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "setNativeViewHierarchy"

    invoke-virtual {v2, v3, v4, v1}, Lads_mobile_sdk/qd2;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e

    .line 25
    :cond_4b
    invoke-super {p0, p1}, Lads_mobile_sdk/nd2;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method
