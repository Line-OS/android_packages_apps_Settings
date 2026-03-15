.class public Lcom/google/android/settings/external/InlineSettings;
.super Ljava/lang/Object;
.source "InlineSettings.java"


# static fields
.field public static final COLOR_INVERSION_SETTING:Lcom/google/android/settings/external/specialcase/ColorInversionSetting;

.field public static final DATA_SAVER_SETTING:Lcom/google/android/settings/external/specialcase/DataSaverSetting;

.field public static final HOTSPOT_SETTING:Lcom/google/android/settings/external/specialcase/HotspotSetting;

.field public static final LOCATION_SETTING:Lcom/google/android/settings/external/specialcase/LocationSetting;

.field public static final MAGNIFY_GESTURE_SETTING:Lcom/google/android/settings/external/specialcase/MagnificationSetting;

.field public static final MAGNIFY_NAVBAR_SETTING:Lcom/google/android/settings/external/specialcase/MagnificationSetting;

.field public static final MOBILE_DATA_SETTING:Lcom/google/android/settings/external/specialcase/MobileDataSetting;

.field public static final NFC_SETTING:Lcom/google/android/settings/external/specialcase/NfcSetting;

.field public static final NIGHTDISPLAY_SETTING:Lcom/google/android/settings/external/specialcase/NightDisplaySetting;

.field public static final TALKBACK_SETTING:Lcom/google/android/settings/external/specialcase/AccessibilitySetting;

.field public static final WIFI_SETTING:Lcom/google/android/settings/external/specialcase/WifiSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Lcom/google/android/settings/external/specialcase/ColorInversionSetting;

    invoke-direct {v0}, Lcom/google/android/settings/external/specialcase/ColorInversionSetting;-><init>()V

    sput-object v0, Lcom/google/android/settings/external/InlineSettings;->COLOR_INVERSION_SETTING:Lcom/google/android/settings/external/specialcase/ColorInversionSetting;

    .line 21
    new-instance v0, Lcom/google/android/settings/external/specialcase/DataSaverSetting;

    invoke-direct {v0}, Lcom/google/android/settings/external/specialcase/DataSaverSetting;-><init>()V

    sput-object v0, Lcom/google/android/settings/external/InlineSettings;->DATA_SAVER_SETTING:Lcom/google/android/settings/external/specialcase/DataSaverSetting;

    .line 22
    new-instance v0, Lcom/google/android/settings/external/specialcase/HotspotSetting;

    invoke-direct {v0}, Lcom/google/android/settings/external/specialcase/HotspotSetting;-><init>()V

    sput-object v0, Lcom/google/android/settings/external/InlineSettings;->HOTSPOT_SETTING:Lcom/google/android/settings/external/specialcase/HotspotSetting;

    .line 23
    new-instance v0, Lcom/google/android/settings/external/specialcase/LocationSetting;

    invoke-direct {v0}, Lcom/google/android/settings/external/specialcase/LocationSetting;-><init>()V

    sput-object v0, Lcom/google/android/settings/external/InlineSettings;->LOCATION_SETTING:Lcom/google/android/settings/external/specialcase/LocationSetting;

    .line 25
    new-instance v0, Lcom/google/android/settings/external/specialcase/MobileDataSetting;

    invoke-direct {v0}, Lcom/google/android/settings/external/specialcase/MobileDataSetting;-><init>()V

    sput-object v0, Lcom/google/android/settings/external/InlineSettings;->MOBILE_DATA_SETTING:Lcom/google/android/settings/external/specialcase/MobileDataSetting;

    .line 26
    new-instance v0, Lcom/google/android/settings/external/specialcase/NfcSetting;

    invoke-direct {v0}, Lcom/google/android/settings/external/specialcase/NfcSetting;-><init>()V

    sput-object v0, Lcom/google/android/settings/external/InlineSettings;->NFC_SETTING:Lcom/google/android/settings/external/specialcase/NfcSetting;

    .line 27
    new-instance v0, Lcom/google/android/settings/external/specialcase/NightDisplaySetting;

    invoke-direct {v0}, Lcom/google/android/settings/external/specialcase/NightDisplaySetting;-><init>()V

    sput-object v0, Lcom/google/android/settings/external/InlineSettings;->NIGHTDISPLAY_SETTING:Lcom/google/android/settings/external/specialcase/NightDisplaySetting;

    .line 28
    new-instance v0, Lcom/google/android/settings/external/specialcase/AccessibilitySetting;

    const-string v1, "talkback"

    const-string v2, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-direct {v0, v1, v2}, Lcom/google/android/settings/external/specialcase/AccessibilitySetting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/settings/external/InlineSettings;->TALKBACK_SETTING:Lcom/google/android/settings/external/specialcase/AccessibilitySetting;

    .line 32
    new-instance v0, Lcom/google/android/settings/external/specialcase/WifiSetting;

    invoke-direct {v0}, Lcom/google/android/settings/external/specialcase/WifiSetting;-><init>()V

    sput-object v0, Lcom/google/android/settings/external/InlineSettings;->WIFI_SETTING:Lcom/google/android/settings/external/specialcase/WifiSetting;

    .line 33
    new-instance v0, Lcom/google/android/settings/external/specialcase/MagnificationSetting;

    const-string v1, "magnify_gesture"

    const-string v2, "accessibility_display_magnification_enabled"

    invoke-direct {v0, v1, v2}, Lcom/google/android/settings/external/specialcase/MagnificationSetting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/settings/external/InlineSettings;->MAGNIFY_GESTURE_SETTING:Lcom/google/android/settings/external/specialcase/MagnificationSetting;

    .line 36
    new-instance v0, Lcom/google/android/settings/external/specialcase/MagnificationSetting;

    const-string v1, "magnify_navbar"

    const-string v2, "accessibility_display_magnification_navbar_enabled"

    invoke-direct {v0, v1, v2}, Lcom/google/android/settings/external/specialcase/MagnificationSetting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/settings/external/InlineSettings;->MAGNIFY_NAVBAR_SETTING:Lcom/google/android/settings/external/specialcase/MagnificationSetting;

    return-void
.end method
