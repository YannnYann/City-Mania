###### Class ads_mobile_sdk.ag2 (ads_mobile_sdk.ag2)
.class public final Lads_mobile_sdk/ag2;
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
    .registers 3

    .line 2
    iget-object p1, p0, Lads_mobile_sdk/g;->d:Lorg/json/JSONObject;

    iget-object v0, p0, Lads_mobile_sdk/nd2;->b:Lads_mobile_sdk/md2;

    check-cast v0, Lads_mobile_sdk/gl3;

    .line 3
    iget-object v0, v0, Lads_mobile_sdk/gl3;->a:Lorg/json/JSONObject;

    .line 4
    invoke-static {p1, v0}, Lads_mobile_sdk/pe2;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_10
    iget-object p1, p0, Lads_mobile_sdk/nd2;->b:Lads_mobile_sdk/md2;

    iget-object v0, p0, Lads_mobile_sdk/g;->d:Lorg/json/JSONObject;

    check-cast p1, Lads_mobile_sdk/gl3;

    .line 8
    iput-object v0, p1, Lads_mobile_sdk/gl3;->a:Lorg/json/JSONObject;

    .line 9
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 11
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lads_mobile_sdk/ag2;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public final onPostExecute(Ljava/lang/String;)V
    .registers 8

    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 41
    sget-object v0, Lads_mobile_sdk/q9;->c:Lads_mobile_sdk/q9;

    if-eqz v0, :cond_4d

    .line 42
    iget-object v0, v0, Lads_mobile_sdk/q9;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 43
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/p9;

    .line 44
    iget-object v2, p0, Lads_mobile_sdk/g;->c:Ljava/util/HashSet;

    .line 45
    iget-object v3, v1, Lads_mobile_sdk/p9;->g:Ljava/lang/String;

    .line 46
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 47
    iget-object v1, v1, Lads_mobile_sdk/p9;->d:Lads_mobile_sdk/r9;

    .line 48
    iget-wide v2, p0, Lads_mobile_sdk/g;->e:J

    .line 49
    iget-wide v4, v1, Lads_mobile_sdk/r9;->d:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_14

    const/4 v2, 0x2

    .line 50
    iput v2, v1, Lads_mobile_sdk/r9;->c:I

    .line 51
    sget-object v2, Lads_mobile_sdk/qd2;->a:Lads_mobile_sdk/qd2;

    .line 52
    iget-object v3, v1, Lads_mobile_sdk/r9;->b:Lads_mobile_sdk/uy3;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    .line 53
    iget-object v1, v1, Lads_mobile_sdk/r9;->a:Ljava/lang/String;

    .line 54
    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "setNativeViewHierarchy"

    invoke-virtual {v2, v3, v4, v1}, Lads_mobile_sdk/qd2;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_14

    .line 55
    :cond_4d
    invoke-super {p0, p1}, Lads_mobile_sdk/nd2;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method
