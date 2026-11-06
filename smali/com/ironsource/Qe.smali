###### Class com.ironsource.Qe (com.ironsource.Qe)
.class public final Lcom/ironsource/Qe;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSdkUrl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SdkUrl.kt\ncom/ironsource/sdk/controller/SdkUrl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,18:1\n1761#2,3:19\n1761#2,3:22\n*S KotlinDebug\n*F\n+ 1 SdkUrl.kt\ncom/ironsource/sdk/controller/SdkUrl\n*L\n11#1:19,3\n13#1:22,3\n*E\n"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/Qe;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/ironsource/Qe;->b:Ljava/util/List;

    .line 4
    iput-boolean p3, p0, Lcom/ironsource/Qe;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 5
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/Qe;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 8

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/Qe;->c:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2e

    .line 2
    iget-object v0, p0, Lcom/ironsource/Qe;->b:Ljava/util/List;

    if-eqz v0, :cond_54

    .line 10
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_13

    goto :goto_54

    .line 11
    :cond_13
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 12
    iget-object v6, p0, Lcom/ironsource/Qe;->a:Ljava/lang/String;

    if-eqz v6, :cond_17

    invoke-static {v6, v5, v4, v2, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-ne v5, v3, :cond_17

    goto :goto_53

    .line 14
    :cond_2e
    iget-object v0, p0, Lcom/ironsource/Qe;->b:Ljava/util/List;

    if-eqz v0, :cond_54

    .line 23
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_39

    goto :goto_54

    .line 24
    :cond_39
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 25
    iget-object v6, p0, Lcom/ironsource/Qe;->a:Ljava/lang/String;

    if-eqz v6, :cond_3d

    invoke-static {v6, v5, v4, v2, v1}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-ne v5, v3, :cond_3d

    :goto_53
    return v3

    :cond_54
    :goto_54
    return v4
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Qe;->a:Ljava/lang/String;

    return-object v0
.end method
