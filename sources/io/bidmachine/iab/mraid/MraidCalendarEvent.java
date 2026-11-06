package io.bidmachine.iab.mraid;

import java.util.Date;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class MraidCalendarEvent {
    public final String a;
    public final Date b;
    public String c;
    public String d;
    public Date e;
    public String f;
    public String g;
    public String h;

    public MraidCalendarEvent(String str, Date date) {
        this.a = str;
        this.b = date;
    }

    public void a(String str) {
        this.c = str;
    }

    public void b(String str) {
        this.h = str;
    }

    public void c(String str) {
        this.f = str;
    }

    public void d(String str) {
        this.d = str;
    }

    public void e(String str) {
        this.g = str;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof MraidCalendarEvent)) {
            return false;
        }
        MraidCalendarEvent mraidCalendarEvent = (MraidCalendarEvent) o;
        return Objects.equals(this.a, mraidCalendarEvent.a) && Objects.equals(this.b, mraidCalendarEvent.b) && Objects.equals(this.c, mraidCalendarEvent.c) && Objects.equals(this.d, mraidCalendarEvent.d) && Objects.equals(this.e, mraidCalendarEvent.e) && Objects.equals(this.f, mraidCalendarEvent.f) && Objects.equals(this.g, mraidCalendarEvent.g) && Objects.equals(this.h, mraidCalendarEvent.h);
    }

    public String getDescription() {
        return this.a;
    }

    public Date getEnd() {
        return this.e;
    }

    public String getLocation() {
        return this.c;
    }

    public String getRecurrence() {
        return this.h;
    }

    public Date getStart() {
        return this.b;
    }

    public String getStatus() {
        return this.f;
    }

    public String getSummary() {
        return this.d;
    }

    public String getTransparency() {
        return this.g;
    }

    public int hashCode() {
        return Objects.hash(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h);
    }

    public String toString() {
        return "MraidCalendarEvent{description='" + this.a + "', start=" + this.b + ", location='" + this.c + "', summary='" + this.d + "', end=" + this.e + ", status='" + this.f + "', transparency='" + this.g + "', recurrence='" + this.h + "'}";
    }

    public void a(Date date) {
        this.e = date;
    }
}
