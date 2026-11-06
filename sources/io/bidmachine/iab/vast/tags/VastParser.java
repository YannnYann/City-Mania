package io.bidmachine.iab.vast.tags;

import android.text.TextUtils;
import android.util.Xml;
import io.bidmachine.iab.vast.VastLog;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.charset.Charset;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes5.dex */
public class VastParser {
    public static VastTag parseVast(String xmlData) throws Exception {
        ByteArrayInputStream byteArrayInputStream;
        if (TextUtils.isEmpty(xmlData)) {
            throw new Exception();
        }
        ByteArrayInputStream byteArrayInputStream2 = null;
        try {
            try {
                byteArrayInputStream = new ByteArrayInputStream(xmlData.getBytes(Charset.defaultCharset().name()));
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
            byteArrayInputStream = byteArrayInputStream2;
        }
        try {
            VastTag vast = parseVast(byteArrayInputStream);
            try {
                byteArrayInputStream.close();
                return vast;
            } catch (Exception e2) {
                VastLog.e("VastXmlParser", e2);
                return vast;
            }
        } catch (Exception e3) {
            e = e3;
            byteArrayInputStream2 = byteArrayInputStream;
            VastLog.e("VastXmlParser", e);
            throw new Exception();
        } catch (Throwable th2) {
            th = th2;
            if (byteArrayInputStream != null) {
                try {
                    byteArrayInputStream.close();
                } catch (Exception e4) {
                    VastLog.e("VastXmlParser", e4);
                }
            }
            throw th;
        }
    }

    public static VastTag parseVast(InputStream inputStream) throws Exception {
        if (inputStream != null) {
            XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
            xmlPullParserNewPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", false);
            xmlPullParserNewPullParser.setInput(inputStream, null);
            int next = xmlPullParserNewPullParser.next();
            if (next == 1) {
                throw new Exception();
            }
            while (next != 3 && next != 1) {
                if (xmlPullParserNewPullParser.getEventType() != 2) {
                    next = xmlPullParserNewPullParser.next();
                } else {
                    if (VastXmlTag.a(xmlPullParserNewPullParser.getName(), "VAST")) {
                        return new VastTag(xmlPullParserNewPullParser);
                    }
                    next = xmlPullParserNewPullParser.next();
                }
            }
            return null;
        }
        throw new Exception();
    }
}
