###### Class io.bidmachine.iab.script.ScriptWrapper (io.bidmachine.iab.script.ScriptWrapper)
.class public final Lio/bidmachine/iab/script/ScriptWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lio/bidmachine/iab/script/ScriptWrapper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/iab/script/ScriptWrapper;

    invoke-direct {v0}, Lio/bidmachine/iab/script/ScriptWrapper;-><init>()V

    sput-object v0, Lio/bidmachine/iab/script/ScriptWrapper;->INSTANCE:Lio/bidmachine/iab/script/ScriptWrapper;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final wrap(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "script"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<script type=\'application/javascript\'>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</script>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
