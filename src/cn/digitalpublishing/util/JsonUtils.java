package cn.digitalpublishing.util;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.SerializerFeature;

/**
 * <h3>JSON工具类</h3>
 */
public class JsonUtils {
    public final static int GSON = 0;
    public final static int FASTJSON = 1;

    /**
     * <b>解析JSONObject</b>
     * 
     * @param json
     * @return
     */
    public static JSONObject parseObject(String json) {
        if (StringUtils.isEmpty(json)) {
            return null;
        }
        try {
            return JSON.parseObject(json);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * <b>解析对象</b>
     * 
     * @param json
     * @param clazz
     * @return
     */
    public static <T> T parseObject(String json, Class<T> clazz) {
        if (StringUtils.isEmpty(json) || clazz == null) {
            return null;
        }
        try {
            return JSON.parseObject(json, clazz);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * <b>解析简单无序MAP</b>
     * 
     * @param json json串
     * 
     * @return HashMap<String, String>
     */
    @SuppressWarnings("unchecked")
    public static HashMap<String, String> parseSimpleMap(String json) {
        if (StringUtils.isEmpty(json)) {
            return null;
        }
        try {
            return JSON.parseObject(json, HashMap.class);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * <b>解析简单有序MAP</b>
     * 
     * @param json json串
     * 
     * @return LinkedHashMap<String, String>
     */
    @SuppressWarnings("unchecked")
    public static LinkedHashMap<String, String> parseSimpleLinkedHashMap(String json) {
        if (StringUtils.isEmpty(json)) {
            return null;
        }
        try {
            return JSON.parseObject(json, LinkedHashMap.class);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * <b>解析无序MAP</b>
     * 
     * @param json json串
     * 
     * @return HashMap<?, ?>
     */
    public static Map<?, ?> parseMap(String json) {
        if (StringUtils.isEmpty(json)) {
            return null;
        }
        try {
            return JSON.parseObject(json, Map.class);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * <b>解析有序MAP</b>
     * 
     * @param json json串
     * 
     * @return LinkedHashMap<?, ?>
     */
    public static LinkedHashMap<?, ?> parseLinkedMap(String json) {
        if (StringUtils.isEmpty(json)) {
            return null;
        }
        try {
            return JSON.parseObject(json, LinkedHashMap.class);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * <b>解析List</b>
     * 
     * @param json
     * @return
     */
    public static List<String> parseSimpleList(String json) {
        if (StringUtils.isEmpty(json)) {
            return null;
        }
        try {
            return JSON.parseArray(json, String.class);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * <b>JSON串转化(泛型- 支持简单数组、简单集合)</b>
     * 
     * @param json json串
     * @param objClass 对象类型
     * @return
     */
    public static <T> List<T> parseList(String json, Class<T> objClass) {
        if (StringUtils.isEmpty(json) || objClass == null) {
            return null;
        }
        try {
            return JSON.parseArray(json, objClass);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * <b>对象转化成JSON</b>
     * 
     * @param obj
     * @return
     */
    public static String toJson(Object obj) {
        if (obj == null) {
            return "";
        }
        try {
            return JSON.toJSONString(obj, SerializerFeature.DisableCircularReferenceDetect, SerializerFeature.WriteNonStringKeyAsString);
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }

    }
}
