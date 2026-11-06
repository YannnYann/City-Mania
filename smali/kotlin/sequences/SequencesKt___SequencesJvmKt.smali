###### Class kotlin.sequences.SequencesKt___SequencesJvmKt (kotlin.sequences.SequencesKt___SequencesJvmKt)
.class public Lkotlin/sequences/SequencesKt___SequencesJvmKt;
.super Lkotlin/sequences/SequencesKt__SequencesKt;
.source "_SequencesJvm.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n_SequencesJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _SequencesJvm.kt\nkotlin/sequences/SequencesKt___SequencesJvmKt\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,173:1\n1786#2,14:174\n2246#2,14:188\n*S KotlinDebug\n*F\n+ 1 _SequencesJvm.kt\nkotlin/sequences/SequencesKt___SequencesJvmKt\n*L\n90#1:174,14\n127#1:188,14\n*E\n"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$WeyGZ8R6LXB0qgrMNVCUE2jdcHA(Ljava/lang/Class;Ljava/lang/Object;)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt___SequencesJvmKt;->filterIsInstance$lambda$0$SequencesKt___SequencesJvmKt(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static filterIsInstance(Lkotlin/sequences/Sequence;Ljava/lang/Class;)Lkotlin/sequences/Sequence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/Sequence<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;)",
            "Lkotlin/sequences/Sequence<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "klass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lkotlin/sequences/SequencesKt___SequencesJvmKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lkotlin/sequences/SequencesKt___SequencesJvmKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type kotlin.sequences.Sequence<R of kotlin.sequences.SequencesKt___SequencesJvmKt.filterIsInstance>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final filterIsInstance$lambda$0$SequencesKt___SequencesJvmKt(Ljava/lang/Class;Ljava/lang/Object;)Z
    .registers 2

    .line 26
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

###### Class kotlin.sequences.SequencesKt___SequencesJvmKt$$ExternalSyntheticLambda0 (kotlin.sequences.SequencesKt___SequencesJvmKt$$ExternalSyntheticLambda0)
.class public final synthetic Lkotlin/sequences/SequencesKt___SequencesJvmKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/sequences/SequencesKt___SequencesJvmKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lkotlin/sequences/SequencesKt___SequencesJvmKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Class;

    invoke-static {v0, p1}, Lkotlin/sequences/SequencesKt___SequencesJvmKt;->$r8$lambda$WeyGZ8R6LXB0qgrMNVCUE2jdcHA(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
