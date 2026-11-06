package vm2.lib;

import ads_mobile_sdk.fh;
import com.ironsource.C3522b4;
import com.ironsource.R6;
import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import vm2.Buffer;
import vm2.Globals;
import vm2.LuaTable;
import vm2.LuaValue;
import vm2.Varargs;

/* JADX INFO: loaded from: classes6.dex */
public class OsLib extends TwoArgFunction {
    private static final int CLOCK = 0;
    private static final int DATE = 1;
    private static final int DIFFTIME = 2;
    private static final int EXECUTE = 3;
    private static final int EXIT = 4;
    private static final int GETENV = 5;
    private static final String[] MonthName;
    private static final String[] MonthNameAbbrev;
    private static final String[] NAMES = {"clock", "date", "difftime", "execute", "exit", "getenv", "remove", "rename", "setlocale", "time", "tmpname"};
    private static final int REMOVE = 6;
    private static final int RENAME = 7;
    private static final int SETLOCALE = 8;
    private static final int TIME = 9;
    private static final int TMPNAME = 10;
    public static final String TMP_PREFIX = ".luaj";
    public static final String TMP_SUFFIX = "tmp";
    private static final String[] WeekdayName;
    private static final String[] WeekdayNameAbbrev;
    private static final long t0;
    private static long tmpnames;
    protected Globals globals;

    public double difftime(double d, double d2) {
        return d - d2;
    }

    static {
        long jCurrentTimeMillis = System.currentTimeMillis();
        t0 = jCurrentTimeMillis;
        tmpnames = jCurrentTimeMillis;
        WeekdayNameAbbrev = new String[]{"Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"};
        WeekdayName = new String[]{"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"};
        MonthNameAbbrev = new String[]{"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"};
        MonthName = new String[]{"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};
    }

    @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        this.globals = luaValue2.checkglobals();
        LuaTable luaTable = new LuaTable();
        int i = 0;
        while (true) {
            String[] strArr = NAMES;
            if (i >= strArr.length) {
                break;
            }
            String str = strArr[i];
            luaTable.set(str, new OsLibFunc(i, str));
            i++;
        }
        luaValue2.set(R6.F, luaTable);
        if (!luaValue2.get("package").isnil()) {
            luaValue2.get("package").get(C3522b4.i.r).set(R6.F, luaTable);
        }
        return luaTable;
    }

    public class OsLibFunc extends VarArgFunction {
        public OsLibFunc(int i, String str) {
            this.opcode = i;
            this.name = str;
        }

        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            try {
                switch (this.opcode) {
                    case 0:
                        return LuaValue.valueOf(OsLib.this.clock());
                    case 1:
                        String strOptjstring = varargs.optjstring(1, "%c");
                        double dTime = varargs.isnumber(2) ? varargs.todouble(2) : OsLib.this.time(null);
                        if (strOptjstring.equals("*t")) {
                            Calendar calendar = Calendar.getInstance();
                            calendar.setTime(new Date((long) (dTime * 1000.0d)));
                            LuaTable luaTableTableOf = LuaValue.tableOf();
                            luaTableTableOf.set("year", LuaValue.valueOf(calendar.get(1)));
                            luaTableTableOf.set("month", LuaValue.valueOf(calendar.get(2) + 1));
                            luaTableTableOf.set("day", LuaValue.valueOf(calendar.get(5)));
                            luaTableTableOf.set("hour", LuaValue.valueOf(calendar.get(11)));
                            luaTableTableOf.set("min", LuaValue.valueOf(calendar.get(12)));
                            luaTableTableOf.set("sec", LuaValue.valueOf(calendar.get(13)));
                            luaTableTableOf.set("wday", LuaValue.valueOf(calendar.get(7)));
                            luaTableTableOf.set("yday", LuaValue.valueOf(calendar.get(6)));
                            luaTableTableOf.set("isdst", LuaValue.valueOf(OsLib.this.isDaylightSavingsTime(calendar)));
                            return luaTableTableOf;
                        }
                        OsLib osLib = OsLib.this;
                        if (dTime == -1.0d) {
                            dTime = osLib.time(null);
                        }
                        return LuaValue.valueOf(osLib.date(strOptjstring, dTime));
                    case 2:
                        return LuaValue.valueOf(OsLib.this.difftime(varargs.checkdouble(1), varargs.checkdouble(2)));
                    case 3:
                        return OsLib.this.execute(varargs.optjstring(1, null));
                    case 4:
                        OsLib.this.exit(varargs.optint(1, 0));
                        return LuaValue.NONE;
                    case 5:
                        String str = OsLib.this.getenv(varargs.checkjstring(1));
                        return str != null ? LuaValue.valueOf(str) : LuaValue.NIL;
                    case 6:
                        OsLib.this.remove(varargs.checkjstring(1));
                        return LuaValue.TRUE;
                    case 7:
                        OsLib.this.rename(varargs.checkjstring(1), varargs.checkjstring(2));
                        return LuaValue.TRUE;
                    case 8:
                        String str2 = OsLib.this.setlocale(varargs.optjstring(1, null), varargs.optjstring(2, "all"));
                        return str2 != null ? LuaValue.valueOf(str2) : LuaValue.NIL;
                    case 9:
                        return LuaValue.valueOf(OsLib.this.time(varargs.opttable(1, null)));
                    case 10:
                        return LuaValue.valueOf(OsLib.this.tmpname());
                    default:
                        return LuaValue.NONE;
                }
            } catch (IOException e) {
                return LuaValue.varargsOf(LuaValue.NIL, LuaValue.valueOf(e.getMessage()));
            }
        }
    }

    public double clock() {
        return (System.currentTimeMillis() - t0) / 1000.0d;
    }

    public String date(String str, double d) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date((long) (d * 1000.0d)));
        if (str.startsWith("!")) {
            d -= (double) timeZoneOffset(calendar);
            calendar.setTime(new Date((long) (1000.0d * d)));
            str = str.substring(1);
        }
        byte[] bytes = str.getBytes();
        int length = bytes.length;
        Buffer buffer = new Buffer(length);
        int i = 0;
        while (i < length) {
            int i2 = i + 1;
            byte b = bytes[i];
            if (b == 10) {
                buffer.append("\n");
            } else if (b != 37) {
                buffer.append(b);
            } else if (i2 < length) {
                i += 2;
                byte b2 = bytes[i2];
                if (b2 == 37) {
                    buffer.append((byte) 37);
                } else if (b2 == 77) {
                    buffer.append(String.valueOf(calendar.get(12) + 100).substring(1));
                } else if (b2 == 83) {
                    buffer.append(String.valueOf(calendar.get(13) + 100).substring(1));
                } else if (b2 == 85) {
                    buffer.append(String.valueOf(weekNumber(calendar, 0)));
                } else if (b2 == 106) {
                    buffer.append(String.valueOf(((int) ((calendar.getTime().getTime() - beginningOfYear(calendar).getTime().getTime()) / 86400000)) + 1001).substring(1));
                } else if (b2 == 109) {
                    buffer.append(String.valueOf(calendar.get(2) + 101).substring(1));
                } else if (b2 == 112) {
                    buffer.append(calendar.get(11) < 12 ? "AM" : "PM");
                } else if (b2 == 65) {
                    buffer.append(WeekdayName[calendar.get(7) - 1]);
                } else if (b2 == 66) {
                    buffer.append(MonthName[calendar.get(2)]);
                } else if (b2 == 72) {
                    buffer.append(String.valueOf(calendar.get(11) + 100).substring(1));
                } else if (b2 == 73) {
                    buffer.append(String.valueOf((calendar.get(11) % 12) + 100).substring(1));
                } else {
                    switch (b2) {
                        case 87:
                            buffer.append(String.valueOf(weekNumber(calendar, 1)));
                            break;
                        case 88:
                            buffer.append(date("%H:%M:%S", d));
                            break;
                        case 89:
                            buffer.append(String.valueOf(calendar.get(1)));
                            break;
                        default:
                            switch (b2) {
                                case fh.H0 /* 97 */:
                                    buffer.append(WeekdayNameAbbrev[calendar.get(7) - 1]);
                                    break;
                                case fh.Q0 /* 98 */:
                                    buffer.append(MonthNameAbbrev[calendar.get(2)]);
                                    break;
                                case fh.R0 /* 99 */:
                                    buffer.append(date("%a %b %d %H:%M:%S %Y", d));
                                    break;
                                case 100:
                                    buffer.append(String.valueOf(calendar.get(5) + 100).substring(1));
                                    break;
                                default:
                                    switch (b2) {
                                        case JSON_ENCODE_ERROR_VALUE:
                                            buffer.append(String.valueOf((calendar.get(7) + 6) % 7));
                                            break;
                                        case 120:
                                            buffer.append(date("%m/%d/%y", d));
                                            break;
                                        case TPAT_ERROR_VALUE:
                                            buffer.append(String.valueOf(calendar.get(1)).substring(2));
                                            break;
                                        case INVALID_ADS_ENDPOINT_VALUE:
                                            int iTimeZoneOffset = timeZoneOffset(calendar) / 60;
                                            int iAbs = Math.abs(iTimeZoneOffset);
                                            String strSubstring = String.valueOf((iAbs / 60) + 100).substring(1);
                                            String strSubstring2 = String.valueOf((iAbs % 60) + 100).substring(1);
                                            StringBuilder sb = new StringBuilder();
                                            sb.append(iTimeZoneOffset >= 0 ? "+" : "-");
                                            sb.append(strSubstring);
                                            sb.append(strSubstring2);
                                            buffer.append(sb.toString());
                                            break;
                                        default:
                                            LuaValue.argerror(1, "invalid conversion specifier '%" + ((int) b2) + "'");
                                            break;
                                    }
                                    break;
                            }
                            break;
                    }
                }
            }
            i = i2;
        }
        return buffer.tojstring();
    }

    private Calendar beginningOfYear(Calendar calendar) {
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTime(calendar.getTime());
        calendar2.set(2, 0);
        calendar2.set(5, 1);
        calendar2.set(11, 0);
        calendar2.set(12, 0);
        calendar2.set(13, 0);
        calendar2.set(14, 0);
        return calendar2;
    }

    private int weekNumber(Calendar calendar, int i) {
        Calendar calendarBeginningOfYear = beginningOfYear(calendar);
        int i2 = i + 8;
        calendarBeginningOfYear.set(5, ((i2 - calendarBeginningOfYear.get(7)) % 7) + 1);
        if (calendarBeginningOfYear.after(calendar)) {
            calendarBeginningOfYear.set(1, calendarBeginningOfYear.get(1) - 1);
            calendarBeginningOfYear.set(5, ((i2 - calendarBeginningOfYear.get(7)) % 7) + 1);
        }
        return ((int) ((calendar.getTime().getTime() - calendarBeginningOfYear.getTime().getTime()) / 604800000)) + 1;
    }

    private int timeZoneOffset(Calendar calendar) {
        return calendar.getTimeZone().getOffset(1, calendar.get(1), calendar.get(2), calendar.get(5), calendar.get(7), (((calendar.get(11) * 3600) + (calendar.get(12) * 60)) + calendar.get(13)) * 1000) / 1000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isDaylightSavingsTime(Calendar calendar) {
        return timeZoneOffset(calendar) != calendar.getTimeZone().getRawOffset() / 1000;
    }

    public Varargs execute(String str) {
        return LuaValue.varargsOf(LuaValue.NIL, LuaValue.valueOf("exit"), LuaValue.ONE);
    }

    public void exit(int i) {
        System.exit(i);
    }

    public String getenv(String str) {
        return System.getProperty(str);
    }

    public void remove(String str) throws IOException {
        throw new IOException("not implemented");
    }

    public void rename(String str, String str2) throws IOException {
        throw new IOException("not implemented");
    }

    public String setlocale(String str, String str2) {
        return "C";
    }

    public double time(LuaTable luaTable) {
        Date time;
        if (luaTable == null) {
            time = new Date();
        } else {
            Calendar calendar = Calendar.getInstance();
            calendar.set(1, luaTable.get("year").checkint());
            calendar.set(2, luaTable.get("month").checkint() - 1);
            calendar.set(5, luaTable.get("day").checkint());
            calendar.set(11, luaTable.get("hour").optint(12));
            calendar.set(12, luaTable.get("min").optint(0));
            calendar.set(13, luaTable.get("sec").optint(0));
            calendar.set(14, 0);
            time = calendar.getTime();
        }
        return time.getTime() / 1000.0d;
    }

    public String tmpname() {
        String string;
        synchronized (OsLib.class) {
            StringBuilder sb = new StringBuilder();
            sb.append(TMP_PREFIX);
            long j = tmpnames;
            tmpnames = 1 + j;
            sb.append(j);
            sb.append(TMP_SUFFIX);
            string = sb.toString();
        }
        return string;
    }
}
