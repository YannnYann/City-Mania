package io.bidmachine.rendering.internal;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.provider.CalendarContract;
import com.ironsource.C3522b4;
import io.bidmachine.iab.mraid.MraidCalendarEvent;
import io.bidmachine.util.Executable;
import io.bidmachine.util.IntentUtilsKt;
import io.bidmachine.util.ProcessUrlResult;
import io.bidmachine.util.UiUtils;
import io.bidmachine.util.UrlUtilsKt;
import java.util.Date;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class o {
    public static final a b = new a(null);
    public final ExecutorService a;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public o() {
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        Intrinsics.checkNotNullExpressionValue(executorServiceNewSingleThreadExecutor, "newSingleThreadExecutor()");
        this.a = executorServiceNewSingleThreadExecutor;
    }

    public final void a(Context context, Uri uri, Executable executable) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (uri == null) {
            t.a("IntentLauncher", "launch - Uri is null", new Object[0]);
            UiUtils.INSTANCE.onUiThreadWithArgSafely(ProcessUrlResult.Companion.getFAIL(), executable);
        } else if (UrlUtilsKt.isHttp(uri)) {
            b(context, uri, executable);
        } else if (uri.getScheme() != null) {
            UiUtils.INSTANCE.onUiThreadWithArgSafely(IntentUtilsKt.openUri(context, uri), executable);
        } else {
            t.a("IntentLauncher", "launch - Invalid uri: %s", uri);
            UiUtils.INSTANCE.onUiThreadWithArgSafely(ProcessUrlResult.Companion.getFAIL(), executable);
        }
    }

    public final void b(Context context, final Uri uri, final Executable executable) {
        final Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "applicationContext");
        this.a.execute(new Runnable() { // from class: io.bidmachine.rendering.internal.o$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                o.a(this.f$0, applicationContext, uri, executable);
            }
        });
    }

    public final void c(Context context, Uri uri, Executable executable) {
        IntentUtilsKt.findEndpointAndOpenUrl(context, uri.toString(), executable);
    }

    public final void b(Context context, MraidCalendarEvent mraidCalendarEvent, Executable executable) {
        a(IntentUtilsKt.toChooserIntent(a(mraidCalendarEvent)), context, executable);
    }

    public final void a(Context context, MraidCalendarEvent mraidCalendarEvent, Executable executable) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(mraidCalendarEvent, "mraidCalendarEvent");
        b(context, mraidCalendarEvent, executable);
    }

    public static final void a(o this$0, Context applicationContext, Uri uri, Executable executable) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(applicationContext, "$applicationContext");
        Intrinsics.checkNotNullParameter(uri, "$uri");
        this$0.c(applicationContext, uri, executable);
    }

    public final void a(Intent intent, Context context, Executable executable) {
        try {
            context.getApplicationContext().startActivity(intent);
            UiUtils.INSTANCE.onUiThreadWithArgSafely(ProcessUrlResult.Companion.getSUCCESS(), executable);
        } catch (Exception e) {
            t.b(e);
            UiUtils.INSTANCE.onUiThreadWithArgSafely(ProcessUrlResult.Companion.getFAIL(), executable);
        }
    }

    public final Intent a(MraidCalendarEvent mraidCalendarEvent) {
        int i;
        Intent intentPutExtra = new Intent("android.intent.action.INSERT").setData(CalendarContract.Events.CONTENT_URI).putExtra(C3522b4.i.D0, mraidCalendarEvent.getDescription()).putExtra("beginTime", mraidCalendarEvent.getStart().getTime());
        Intrinsics.checkNotNullExpressionValue(intentPutExtra, "Intent(Intent.ACTION_INS…IN_TIME, this.start.time)");
        Date end = mraidCalendarEvent.getEnd();
        if (end != null) {
            intentPutExtra.putExtra("endTime", end.getTime());
        }
        String summary = mraidCalendarEvent.getSummary();
        if (summary != null) {
            intentPutExtra.putExtra("description", summary);
        }
        String location = mraidCalendarEvent.getLocation();
        if (location != null) {
            intentPutExtra.putExtra("eventLocation", location);
        }
        String status = mraidCalendarEvent.getStatus();
        int i2 = 0;
        if (status != null) {
            if (Intrinsics.areEqual(status, "confirmed")) {
                i = 1;
            } else {
                i = Intrinsics.areEqual(status, "cancelled") ? 2 : 0;
            }
            intentPutExtra.putExtra("eventStatus", i);
        }
        String transparency = mraidCalendarEvent.getTransparency();
        if (transparency != null) {
            if (Intrinsics.areEqual(transparency, C3522b4.i.T)) {
                i2 = 1;
            } else if (!Intrinsics.areEqual(transparency, "opaque")) {
                i2 = 2;
            }
            intentPutExtra.putExtra("availability", i2);
        }
        String recurrence = mraidCalendarEvent.getRecurrence();
        if (recurrence != null) {
            intentPutExtra.putExtra("rrule", recurrence);
        }
        return intentPutExtra;
    }
}
