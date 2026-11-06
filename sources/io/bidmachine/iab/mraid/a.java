package io.bidmachine.iab.mraid;

import java.util.Map;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class a implements MraidJsValidator {
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // io.bidmachine.iab.mraid.MraidJsValidator
    public boolean checkParamsForCommand(String command, Map params) {
        Intrinsics.checkNotNullParameter(command, "command");
        Intrinsics.checkNotNullParameter(params, "params");
        switch (command.hashCode()) {
            case -1886160473:
                if (!command.equals("playVideo")) {
                    return true;
                }
                break;
            case -1700226527:
                if (command.equals("openPrivacySheet")) {
                    return params.containsKey("data");
                }
                return true;
            case -733616544:
                if (command.equals("createCalendarEvent")) {
                    return params.containsKey("eventJSON");
                }
                return true;
            case 3417674:
                if (!command.equals("open")) {
                    return true;
                }
                break;
            case 133423073:
                if (command.equals("setOrientationProperties")) {
                    return params.containsKey("allowOrientationChange") && params.containsKey("forceOrientation");
                }
                return true;
            case 459238621:
                if (!command.equals("storePicture")) {
                    return true;
                }
                break;
            case 624734601:
                if (command.equals("setResizeProperties")) {
                    return params.containsKey("width") && params.containsKey("height") && params.containsKey("offsetX") && params.containsKey("offsetY") && params.containsKey("customClosePosition") && params.containsKey("allowOffscreen");
                }
                return true;
            case 1614272768:
                if (command.equals("useCustomClose")) {
                    return params.containsKey("useCustomClose");
                }
                return true;
            default:
                return true;
        }
        return params.containsKey("url");
    }

    @Override // io.bidmachine.iab.mraid.MraidJsValidator
    public boolean isValidCommand(String str) {
        return CollectionsKt___CollectionsKt.contains(MraidUtilsKt.c, str);
    }

    @Override // io.bidmachine.iab.mraid.MraidJsValidator
    public String removePrefix(String commandUrl) {
        Intrinsics.checkNotNullParameter(commandUrl, "commandUrl");
        String strSubstring = commandUrl.substring(8);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "this as java.lang.String).substring(startIndex)");
        return strSubstring;
    }
}
