package io.bidmachine.iab.mraid;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class b {
    public static final DateFormat a = new SimpleDateFormat("yyyy-MM-dd'T'HH:mmZ", Locale.US);
    public static final String[] b = {"SU", "MO", "TU", "WE", "TH", "FR", "SA"};

    public MraidCalendarEvent a(String str) {
        return b(new JSONObject(str));
    }

    public MraidCalendarEvent b(JSONObject jSONObject) throws JSONException, ParseException {
        String string = jSONObject.getString("description");
        Objects.requireNonNull(string);
        DateFormat dateFormat = a;
        Date date = dateFormat.parse(jSONObject.getString("start"));
        Objects.requireNonNull(date);
        MraidCalendarEvent mraidCalendarEvent = new MraidCalendarEvent(string, date);
        if (jSONObject.has("location")) {
            mraidCalendarEvent.a(jSONObject.getString("location"));
        }
        if (jSONObject.has("summary")) {
            mraidCalendarEvent.d(jSONObject.getString("summary"));
        }
        if (jSONObject.has("end")) {
            mraidCalendarEvent.a(dateFormat.parse(jSONObject.getString("end")));
        }
        if (jSONObject.has("status")) {
            mraidCalendarEvent.c(jSONObject.getString("status"));
        }
        if (jSONObject.has("transparency")) {
            mraidCalendarEvent.e(jSONObject.getString("transparency"));
        }
        if (jSONObject.has("recurrence")) {
            mraidCalendarEvent.b(a(jSONObject.getJSONObject("recurrence")));
        }
        return mraidCalendarEvent;
    }

    public void c(JSONObject jSONObject, StringBuilder sb) {
        if (jSONObject.isNull("interval")) {
            return;
        }
        try {
            sb.append("INTERVAL=");
            sb.append(jSONObject.getInt("interval"));
            sb.append(";");
        } catch (Exception unused) {
        }
    }

    public void d(JSONObject jSONObject, StringBuilder sb) {
        try {
            if (jSONObject.isNull("frequency") || !"monthly".equalsIgnoreCase(jSONObject.getString("frequency"))) {
                return;
            }
            if (!jSONObject.isNull("daysInMonth")) {
                JSONArray jSONArray = jSONObject.getJSONArray("daysInMonth");
                if (jSONArray.length() > 0) {
                    sb.append("BYMONTHDAY=");
                    sb.append(b(jSONArray));
                    sb.append(";");
                }
            }
            if (jSONObject.isNull("weeksInMonth")) {
                return;
            }
            JSONArray jSONArray2 = jSONObject.getJSONArray("weeksInMonth");
            if (jSONArray2.length() > 0) {
                sb.append("BYWEEKNO=");
                sb.append(b(jSONArray2));
                sb.append(";");
            }
        } catch (Exception unused) {
        }
    }

    public void e(JSONObject jSONObject, StringBuilder sb) {
        try {
            if (jSONObject.isNull("frequency") || !"weekly".equalsIgnoreCase(jSONObject.getString("frequency")) || jSONObject.isNull("daysInWeek")) {
                return;
            }
            JSONArray jSONArray = jSONObject.getJSONArray("daysInWeek");
            if (jSONArray.length() > 0) {
                sb.append("BYDAY=");
                sb.append(a(jSONArray));
                sb.append(";");
            }
        } catch (Exception unused) {
        }
    }

    public void f(JSONObject jSONObject, StringBuilder sb) {
        try {
            if (jSONObject.isNull("frequency") || !"yearly".equalsIgnoreCase(jSONObject.getString("frequency"))) {
                return;
            }
            if (!jSONObject.isNull("monthsInYear")) {
                JSONArray jSONArray = jSONObject.getJSONArray("monthsInYear");
                if (jSONArray.length() > 0) {
                    sb.append("BYMONTH=");
                    sb.append(b(jSONArray));
                    sb.append(";");
                }
            }
            if (jSONObject.isNull("daysInYear")) {
                return;
            }
            JSONArray jSONArray2 = jSONObject.getJSONArray("daysInYear");
            if (jSONArray2.length() > 0) {
                sb.append("BYYEARDAY=");
                sb.append(b(jSONArray2));
                sb.append(";");
            }
        } catch (Exception unused) {
        }
    }

    public String a(JSONObject jSONObject) {
        StringBuilder sb = new StringBuilder();
        b(jSONObject, sb);
        c(jSONObject, sb);
        a(jSONObject, sb);
        e(jSONObject, sb);
        d(jSONObject, sb);
        f(jSONObject, sb);
        if (sb.length() > 0) {
            return sb.toString();
        }
        return null;
    }

    public void a(JSONObject jSONObject, StringBuilder sb) {
        if (jSONObject.isNull("expires")) {
            return;
        }
        try {
            Date date = a.parse(jSONObject.getString("expires"));
            sb.append("UNTIL=");
            sb.append(date);
            sb.append(";");
        } catch (Exception unused) {
        }
    }

    public String a(JSONArray jSONArray) throws JSONException {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < jSONArray.length(); i++) {
            if (i > 0) {
                sb.append(",");
            }
            int i2 = jSONArray.getInt(i);
            if (i2 >= 0 && i2 <= 6) {
                sb.append(b[i2]);
            }
        }
        return sb.toString();
    }

    public void b(JSONObject jSONObject, StringBuilder sb) {
        if (jSONObject.isNull("frequency")) {
            return;
        }
        try {
            sb.append("FREQ=");
            sb.append(jSONObject.getString("frequency"));
            sb.append(";");
        } catch (Exception unused) {
        }
    }

    public String b(JSONArray jSONArray) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < jSONArray.length(); i++) {
            if (i > 0) {
                sb.append(",");
            }
            sb.append(jSONArray.get(i).toString());
        }
        return sb.toString();
    }
}
