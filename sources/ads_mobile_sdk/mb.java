package ads_mobile_sdk;

import android.content.Context;
import androidx.core.util.TypedValueCompat;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class mb implements rh3 {
    public final Optional a;
    public final Optional b;
    public final j53 c;
    public final Context d;
    public final ex0 e;
    public final ao0 f;

    public mb(Optional bannerRequest, Optional swipeableInterstitialRequest, j53 requestType, Context context, ex0 flags, ao0 displayUtil) {
        Intrinsics.checkNotNullParameter(bannerRequest, "bannerRequest");
        Intrinsics.checkNotNullParameter(swipeableInterstitialRequest, "swipeableInterstitialRequest");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(displayUtil, "displayUtil");
        this.a = bannerRequest;
        this.b = swipeableInterstitialRequest;
        this.c = requestType;
        this.d = context;
        this.e = flags;
        this.f = displayUtil;
    }

    @Override // ads_mobile_sdk.rh3
    public final y11 f() {
        return y11.AD_SIZE;
    }

    public static String a(List list) {
        StringBuilder sb = new StringBuilder();
        Iterator it = list.iterator();
        boolean z = false;
        while (it.hasNext()) {
            AdSize adSize = (AdSize) it.next();
            if (adSize.isFluid()) {
                z = true;
            } else {
                if (sb.length() > 0) {
                    sb.append("|");
                }
                sb.append(adSize.getWidth());
                sb.append("x");
                sb.append(adSize.getHeight());
            }
        }
        if (z) {
            if (sb.length() > 0) {
                sb.insert(0, "|");
            }
            sb.insert(0, "320x50");
        }
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    /*  JADX ERROR: NullPointerException in pass: ConstructorVisitor
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.RegisterArg.sameRegAndSVar(jadx.core.dex.instructions.args.InsnArg)" because "resultArg" is null
        	at jadx.core.dex.visitors.MoveInlineVisitor.processMove(MoveInlineVisitor.java:52)
        	at jadx.core.dex.visitors.MoveInlineVisitor.moveInline(MoveInlineVisitor.java:41)
        	at jadx.core.dex.visitors.ConstructorVisitor.visit(ConstructorVisitor.java:43)
        */
    @Override // ads_mobile_sdk.rh3
    public final java.lang.Object s(
    /*  JADX ERROR: Method generation error
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r32v0 ??
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
        	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:224)
        	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:169)
        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:407)
        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:337)
        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:303)
        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:184)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
        */
    /*  JADX ERROR: NullPointerException in pass: ConstructorVisitor
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.RegisterArg.sameRegAndSVar(jadx.core.dex.instructions.args.InsnArg)" because "resultArg" is null
        	at jadx.core.dex.visitors.MoveInlineVisitor.processMove(MoveInlineVisitor.java:52)
        	at jadx.core.dex.visitors.MoveInlineVisitor.moveInline(MoveInlineVisitor.java:41)
        */

    public final int a(int i) {
        return (int) Math.ceil(TypedValueCompat.pxToDp(i, this.d.getResources().getDisplayMetrics()));
    }
}
