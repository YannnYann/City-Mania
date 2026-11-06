package io.bidmachine.iab.vast.tags;

import android.graphics.Color;
import android.text.TextUtils;
import com.ironsource.C3522b4;
import io.bidmachine.iab.utils.IabElementStyle;
import io.bidmachine.iab.utils.Utils;
import io.bidmachine.iab.vast.VastLog;
import java.io.IOException;
import java.io.Serializable;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes5.dex */
public class VastXmlTag implements Serializable {
    public String a;
    public HashMap b;

    public VastXmlTag() {
    }

    public static String c(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        if (xmlPullParser.next() != 4) {
            return null;
        }
        String text = xmlPullParser.getText();
        if (!TextUtils.isEmpty(text)) {
            text = text.trim();
        }
        xmlPullParser.nextTag();
        return text;
    }

    public static int e(String str) {
        if (str == null) {
            return -1;
        }
        int iIndexOf = str.indexOf(".");
        if (iIndexOf > 0) {
            str = str.substring(0, iIndexOf);
        }
        String[] strArrSplit = str.split(":");
        if (strArrSplit.length <= 2) {
            return -1;
        }
        try {
            return (Integer.parseInt(strArrSplit[0]) * 3600) + (Integer.parseInt(strArrSplit[1]) * 60) + Integer.parseInt(strArrSplit[2]);
        } catch (Exception e) {
            VastLog.e("VastXmlTag", e);
            return -1;
        }
    }

    public static int f(String str) {
        if (str == null) {
            return -1;
        }
        String[] strArrSplit = str.split(":");
        if (strArrSplit.length <= 1) {
            return -1;
        }
        try {
            return (Integer.parseInt(strArrSplit[0]) * 60) + Integer.parseInt(strArrSplit[1]);
        } catch (Exception e) {
            VastLog.e("VastXmlTag", e);
            return -1;
        }
    }

    public static Integer g(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String lowerCase = str.toLowerCase();
        lowerCase.getClass();
        if (lowerCase.equals(C3522b4.i.D)) {
            return 1;
        }
        return !lowerCase.equals(C3522b4.i.C) ? null : 2;
    }

    public static Integer h(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String lowerCase = str.toLowerCase();
        lowerCase.getClass();
        switch (lowerCase) {
            case "center":
                return 1;
            case "left":
                return 3;
            case "right":
                return 5;
            default:
                return null;
        }
    }

    public static Integer i(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String lowerCase = str.toLowerCase();
        lowerCase.getClass();
        switch (lowerCase) {
            case "bottom":
                return 80;
            case "center":
                return 16;
            case "top":
                return 48;
            default:
                return null;
        }
    }

    public static boolean j(String str) {
        if (str != null) {
            return str.equalsIgnoreCase("false") || str.equalsIgnoreCase("0");
        }
        return false;
    }

    public static boolean k(String str) {
        if (str != null) {
            return str.equalsIgnoreCase("true") || str.equalsIgnoreCase("1");
        }
        return false;
    }

    public void a(XmlPullParser xmlPullParser) {
    }

    public final int b(String str) {
        String strA = a(str);
        if (TextUtils.isEmpty(strA)) {
            VastLog.d("VastXmlTag", "Error parse attribute value - %s, by name - %s", strA, str);
            return -1;
        }
        try {
            return Integer.parseInt(strA);
        } catch (Exception unused) {
            VastLog.e("VastXmlTag", "Error parse attribute value - %s, by name - %s", strA, str);
            return -1;
        }
    }

    public final boolean d(String str) {
        for (String str2 : getSupportedAttributes()) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public final boolean getBooleanAttributeValueByName(String name, boolean defValue) {
        String strA = a(name);
        if (k(strA)) {
            return true;
        }
        if (j(strA)) {
            return false;
        }
        return defValue;
    }

    public String[] getSupportedAttributes() {
        return new String[0];
    }

    public final String getText() {
        return this.a;
    }

    public boolean isTextSupported() {
        return false;
    }

    public void parse(XmlPullParser xmlPullParser) {
        a(a(this, xmlPullParser));
        if (isTextSupported()) {
            setText(c(xmlPullParser));
        }
        a(xmlPullParser);
    }

    public final void setText(String text) {
        this.a = text;
    }

    public VastXmlTag(XmlPullParser xmlPullParser) {
        parse(xmlPullParser);
    }

    public final void a(HashMap map) {
        this.b = map;
    }

    public final String a(String str) {
        HashMap map = this.b;
        if (map != null) {
            return (String) map.get(str);
        }
        return null;
    }

    public static void d(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        if (xmlPullParser.getEventType() != 2) {
            throw new IllegalStateException();
        }
        int i = 1;
        while (i != 0) {
            int next = xmlPullParser.next();
            if (next == 2) {
                i++;
            } else if (next == 3) {
                i--;
            }
        }
    }

    public static HashMap a(VastXmlTag vastXmlTag, XmlPullParser xmlPullParser) {
        if (xmlPullParser.getAttributeCount() <= 0) {
            return null;
        }
        HashMap map = new HashMap();
        for (int i = 0; i < xmlPullParser.getAttributeCount(); i++) {
            if (vastXmlTag.d(xmlPullParser.getAttributeName(i))) {
                map.put(xmlPullParser.getAttributeName(i), xmlPullParser.getAttributeValue(i));
            }
        }
        return map;
    }

    public static Integer c(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return Integer.valueOf(Color.parseColor(str));
        } catch (Exception e) {
            VastLog.e("VastXmlTag", e.getMessage(), new Object[0]);
            return null;
        }
    }

    public static boolean b(XmlPullParser xmlPullParser) {
        return k(c(xmlPullParser));
    }

    public static boolean a(String str, String str2) {
        return str != null && str.equalsIgnoreCase(str2);
    }

    public static void a(XmlPullParser xmlPullParser, IabElementStyle iabElementStyle) {
        for (int i = 0; i < xmlPullParser.getAttributeCount(); i++) {
            String attributeName = xmlPullParser.getAttributeName(i);
            String attributeValue = xmlPullParser.getAttributeValue(i);
            if (!TextUtils.isEmpty(attributeValue)) {
                try {
                    if ("stroke".equals(attributeName)) {
                        iabElementStyle.setStrokeColor(c(attributeValue));
                    } else if ("fill".equals(attributeName)) {
                        iabElementStyle.setFillColor(c(attributeValue));
                    } else if ("outlined".equals(attributeName)) {
                        iabElementStyle.setOutlined(Boolean.valueOf(k(attributeValue)));
                    } else if ("visible".equals(attributeName)) {
                        iabElementStyle.setVisible(Boolean.valueOf(k(attributeValue)));
                    } else if ("x".equals(attributeName)) {
                        iabElementStyle.setHorizontalPosition(h(attributeValue));
                    } else if ("y".equals(attributeName)) {
                        iabElementStyle.setVerticalPosition(i(attributeValue));
                    } else if ("style".equals(attributeName)) {
                        iabElementStyle.setStyle(attributeValue);
                    } else if ("opacity".equals(attributeName)) {
                        iabElementStyle.setOpacity(Float.valueOf(Float.parseFloat(attributeValue)));
                    } else if ("hideafter".equals(attributeName)) {
                        iabElementStyle.setHideAfter(Float.valueOf(Float.parseFloat(attributeValue)));
                    } else if ("padding".equals(attributeName)) {
                        iabElementStyle.setPadding(attributeValue);
                    } else if ("margin".equals(attributeName)) {
                        iabElementStyle.setMargin(attributeValue);
                    } else if ("strokewidth".equals(attributeName)) {
                        iabElementStyle.setStrokeWidth(Utils.convertCssSizeToPx(attributeValue));
                    } else if ("width".equals(attributeName)) {
                        iabElementStyle.setWidth(Utils.convertCssSizeToPx(attributeValue));
                    } else if ("height".equals(attributeName)) {
                        iabElementStyle.setHeight(Utils.convertCssSizeToPx(attributeValue));
                    } else if ("fontstyle".equals(attributeName)) {
                        iabElementStyle.setFontStyle(Integer.valueOf(Integer.parseInt(attributeValue)));
                    } else if ("fontsize".equals(attributeName)) {
                        iabElementStyle.setFontSize(Utils.convertCssSizeToPx(attributeValue));
                    }
                } catch (Throwable th) {
                    VastLog.e("VastXmlTag", th);
                }
            }
        }
        try {
            iabElementStyle.setContent(c(xmlPullParser));
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            xmlPullParser.require(3, null, xmlPullParser.getName());
        } catch (IOException e2) {
            e2.printStackTrace();
        } catch (XmlPullParserException e3) {
            e3.printStackTrace();
        }
    }
}
