package io.bidmachine.rendering.model;

import android.graphics.Bitmap;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class PrivacySheetParams {
    public final String a;
    public final String b;
    public final List c;
    public final String d;
    public final String e;

    public static final class Action {
        public final ActionType a;
        public final String b;
        public final String c;
        public Bitmap d;

        public Action(ActionType type, String title, String data) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(data, "data");
            this.a = type;
            this.b = title;
            this.c = data;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Action)) {
                return false;
            }
            Action action = (Action) obj;
            return this.a == action.a && Intrinsics.areEqual(this.b, action.b) && Intrinsics.areEqual(this.c, action.c);
        }

        public final String getData() {
            return this.c;
        }

        public final Bitmap getIcon() {
            return this.d;
        }

        public final String getTitle() {
            return this.b;
        }

        public final ActionType getType() {
            return this.a;
        }

        public int hashCode() {
            return (((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + this.c.hashCode();
        }

        public String toString() {
            return "Action(type=" + this.a + ", title=" + this.b + ", data=" + this.c + ')';
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Action(ActionType type, String title, String data, Bitmap bitmap) {
            this(type, title, data);
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(data, "data");
            this.d = bitmap;
        }
    }

    public enum ActionType {
        REDIRECT,
        COPY_TO_CLIPBOARD
    }

    public PrivacySheetParams(String title, String subtitle, List<Action> actions, String footerTitle, String footerText) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(subtitle, "subtitle");
        Intrinsics.checkNotNullParameter(actions, "actions");
        Intrinsics.checkNotNullParameter(footerTitle, "footerTitle");
        Intrinsics.checkNotNullParameter(footerText, "footerText");
        this.a = title;
        this.b = subtitle;
        this.c = actions;
        this.d = footerTitle;
        this.e = footerText;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PrivacySheetParams)) {
            return false;
        }
        PrivacySheetParams privacySheetParams = (PrivacySheetParams) obj;
        return Intrinsics.areEqual(this.a, privacySheetParams.a) && Intrinsics.areEqual(this.b, privacySheetParams.b) && Intrinsics.areEqual(this.c, privacySheetParams.c) && Intrinsics.areEqual(this.d, privacySheetParams.d) && Intrinsics.areEqual(this.e, privacySheetParams.e);
    }

    public final List<Action> getActions() {
        return this.c;
    }

    public final String getFooterText() {
        return this.e;
    }

    public final String getFooterTitle() {
        return this.d;
    }

    public final String getSubtitle() {
        return this.b;
    }

    public final String getTitle() {
        return this.a;
    }

    public int hashCode() {
        return (((((((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + this.c.hashCode()) * 31) + this.d.hashCode()) * 31) + this.e.hashCode();
    }

    public String toString() {
        return "PrivacySheetParams(title=" + this.a + ", subtitle=" + this.b + ", actions=" + this.c + ", footerTitle=" + this.d + ", footerText=" + this.e + ')';
    }
}
