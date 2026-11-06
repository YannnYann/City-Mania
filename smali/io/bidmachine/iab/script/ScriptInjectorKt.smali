###### Class io.bidmachine.iab.script.ScriptInjectorKt (io.bidmachine.iab.script.ScriptInjectorKt)
.class public final Lio/bidmachine/iab/script/ScriptInjectorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/iab/script/ScriptInjectorKt$WhenMappings;
    }
.end annotation


# direct methods
.method public static final a(Lio/bidmachine/rendering/model/ScriptConfig;)Ljava/lang/String;
    .registers 3

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/rendering/model/ScriptConfig;->getType()Lio/bidmachine/rendering/model/ScriptConfig$Type;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, -0x1

    goto :goto_10

    :cond_8
    sget-object v1, Lio/bidmachine/iab/script/ScriptInjectorKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_10
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3e

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n        (function() {\n          if (document.readyState === \'loading\') {\n            document.addEventListener(\'DOMContentLoaded\', function() {\n              "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/rendering/model/ScriptConfig;->getSource()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "\n            });\n          } else {\n            "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p0}, Lio/bidmachine/rendering/model/ScriptConfig;->getSource()Ljava/lang/String;

    move-result-object p0

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string p0, "\n          }\n        })();\n    "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 30
    invoke-static {p0}, Lkotlin/text/StringsKt__IndentKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 32
    :cond_3e
    invoke-virtual {p0}, Lio/bidmachine/rendering/model/ScriptConfig;->getSource()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/util/List;)Ljava/util/List;
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/iab/script/ScriptInjectorKt$sortedByPriority$$inlined$compareBy$1;

    invoke-direct {v0}, Lio/bidmachine/iab/script/ScriptInjectorKt$sortedByPriority$$inlined$compareBy$1;-><init>()V

    .line 2
    new-instance v1, Lio/bidmachine/iab/script/ScriptInjectorKt$sortedByPriority$$inlined$thenBy$1;

    invoke-direct {v1, v0}, Lio/bidmachine/iab/script/ScriptInjectorKt$sortedByPriority$$inlined$thenBy$1;-><init>(Ljava/util/Comparator;)V

    .line 3
    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs a(Ljava/util/List;[Lio/bidmachine/rendering/model/ScriptConfig$Type;)Ljava/util/List;
    .registers 5

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lio/bidmachine/rendering/model/ScriptConfig;

    .line 35
    invoke-virtual {v2}, Lio/bidmachine/rendering/model/ScriptConfig;->getType()Lio/bidmachine/rendering/model/ScriptConfig$Type;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 61
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 62
    :cond_24
    invoke-static {v0}, Lio/bidmachine/iab/script/ScriptInjectorKt;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs synthetic access$filterSorted(Ljava/util/List;[Lio/bidmachine/rendering/model/ScriptConfig$Type;)Ljava/util/List;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/iab/script/ScriptInjectorKt;->a(Ljava/util/List;[Lio/bidmachine/rendering/model/ScriptConfig$Type;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$patched(Lio/bidmachine/rendering/model/ScriptConfig;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lio/bidmachine/iab/script/ScriptInjectorKt;->a(Lio/bidmachine/rendering/model/ScriptConfig;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class io.bidmachine.iab.script.ScriptInjectorKt.WhenMappings (io.bidmachine.iab.script.ScriptInjectorKt$WhenMappings)
.class public final synthetic Lio/bidmachine/iab/script/ScriptInjectorKt$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/script/ScriptInjectorKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Lio/bidmachine/rendering/model/ScriptConfig$Type;->values()[Lio/bidmachine/rendering/model/ScriptConfig$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lio/bidmachine/rendering/model/ScriptConfig$Type;->DocumentEnd:Lio/bidmachine/rendering/model/ScriptConfig$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    sput-object v0, Lio/bidmachine/iab/script/ScriptInjectorKt$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method

###### Class io.bidmachine.iab.script.ScriptInjectorKt$sortedByPriority$$inlined$compareBy$1 (io.bidmachine.iab.script.ScriptInjectorKt$sortedByPriority$$inlined$compareBy$1)
.class public final Lio/bidmachine/iab/script/ScriptInjectorKt$sortedByPriority$$inlined$compareBy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/script/ScriptInjectorKt;->a(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 1
    check-cast p1, Lio/bidmachine/rendering/model/ScriptConfig;

    .line 2
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/ScriptConfig;->getPriority()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 3
    check-cast p2, Lio/bidmachine/rendering/model/ScriptConfig;

    .line 4
    invoke-virtual {p2}, Lio/bidmachine/rendering/model/ScriptConfig;->getPriority()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 5
    invoke-static {p1, p2}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method

###### Class io.bidmachine.iab.script.ScriptInjectorKt$sortedByPriority$$inlined$thenBy$1 (io.bidmachine.iab.script.ScriptInjectorKt$sortedByPriority$$inlined$thenBy$1)
.class public final Lio/bidmachine/iab/script/ScriptInjectorKt$sortedByPriority$$inlined$thenBy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/script/ScriptInjectorKt;->a(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/iab/script/ScriptInjectorKt$sortedByPriority$$inlined$thenBy$1;->a:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/script/ScriptInjectorKt$sortedByPriority$$inlined$thenBy$1;->a:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_9

    return v0

    .line 2
    :cond_9
    check-cast p1, Lio/bidmachine/rendering/model/ScriptConfig;

    .line 3
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/ScriptConfig;->getScriptId()Ljava/lang/String;

    move-result-object p1

    .line 4
    check-cast p2, Lio/bidmachine/rendering/model/ScriptConfig;

    .line 5
    invoke-virtual {p2}, Lio/bidmachine/rendering/model/ScriptConfig;->getScriptId()Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-static {p1, p2}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method
