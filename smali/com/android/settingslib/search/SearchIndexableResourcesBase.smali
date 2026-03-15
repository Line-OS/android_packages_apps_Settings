.class public Lcom/android/settingslib/search/SearchIndexableResourcesBase;
.super Ljava/lang/Object;
.source "SearchIndexableResourcesBase.java"

# interfaces
.implements Lcom/android/settingslib/search/SearchIndexableResources;


# instance fields
.field private final mProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->mProviders:Ljava/util/Set;

    .line 13
    const-class v0, Lcom/android/settings/DateTimeSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 14
    const-class v0, Lcom/android/settings/LegalSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 15
    const-class v0, Lcom/android/settings/TetherSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 16
    const-class v0, Lcom/android/settings/accessibility/AccessibilityControlTimeoutPreferenceFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 17
    const-class v0, Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 18
    const-class v0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 19
    const-class v0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 20
    const-class v0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 21
    const-class v0, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 22
    const-class v0, Lcom/android/settings/accessibility/VibrationSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 23
    const-class v0, Lcom/android/settings/accounts/AccountDashboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 24
    const-class v0, Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 25
    const-class v0, Lcom/android/settings/accounts/ManagedProfileSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 26
    const-class v0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 27
    const-class v0, Lcom/android/settings/applications/assist/ManageAssist;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 28
    const-class v0, Lcom/android/settings/applications/specialaccess/SpecialAccessSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 29
    const-class v0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 30
    const-class v0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 31
    const-class v0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 32
    const-class v0, Lcom/android/settings/applications/specialaccess/vrlistener/VrListenerSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 33
    const-class v0, Lcom/android/settings/backup/BackupSettingsFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 34
    const-class v0, Lcom/android/settings/backup/PrivacySettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 35
    const-class v0, Lcom/android/settings/backup/UserBackupSettingsActivity;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 36
    const-class v0, Lcom/android/settings/biometrics/face/FaceSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 37
    const-class v0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 38
    const-class v0, Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 39
    const-class v0, Lcom/android/settings/datausage/DataSaverSummary;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 40
    const-class v0, Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 41
    const-class v0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 42
    const-class v0, Lcom/android/settings/development/featureflags/FeatureFlagsDashboard;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 43
    const-class v0, Lcom/android/settings/development/gamedriver/GameDriverDashboard;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 44
    const-class v0, Lcom/android/settings/development/qstile/DevelopmentTileConfigFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 45
    const-class v0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 46
    const-class v0, Lcom/android/settings/deviceinfo/StorageSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 47
    const-class v0, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 48
    const-class v0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 49
    const-class v0, Lcom/android/settings/deviceinfo/hardwareinfo/HardwareInfoFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 50
    const-class v0, Lcom/android/settings/display/ColorModePreferenceFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 51
    const-class v0, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 52
    const-class v0, Lcom/android/settings/dream/DreamSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 53
    const-class v0, Lcom/android/settings/enterprise/EnterprisePrivacySettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 54
    const-class v0, Lcom/android/settings/gestures/AssistGestureSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 55
    const-class v0, Lcom/android/settings/gestures/DoubleTapPowerSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 56
    const-class v0, Lcom/android/settings/gestures/DoubleTapScreenSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 57
    const-class v0, Lcom/android/settings/gestures/DoubleTwistGestureSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 58
    const-class v0, Lcom/android/settings/gestures/GestureSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 59
    const-class v0, Lcom/android/settings/gestures/GlobalActionsPanelSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 60
    const-class v0, Lcom/android/settings/gestures/PickupGestureSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 61
    const-class v0, Lcom/android/settings/gestures/PreventRingingGestureSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 62
    const-class v0, Lcom/android/settings/gestures/SwipeToNotificationSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 63
    const-class v0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 64
    const-class v0, Lcom/android/settings/gestures/TapScreenGestureSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 65
    const-class v0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 66
    const-class v0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 67
    const-class v0, Lcom/android/settings/inputmethod/UserDictionaryList;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 68
    const-class v0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 69
    const-class v0, Lcom/android/settings/language/LanguageAndInputSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 70
    const-class v0, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 71
    const-class v0, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 72
    const-class v0, Lcom/android/settings/network/NetworkDashboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 73
    const-class v0, Lcom/android/settings/nfc/PaymentSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 74
    const-class v0, Lcom/android/settings/notification/AppBubbleNotificationSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 75
    const-class v0, Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 76
    const-class v0, Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 77
    const-class v0, Lcom/android/settings/notification/SoundSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 78
    const-class v0, Lcom/android/settings/notification/ZenAccessSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 79
    const-class v0, Lcom/android/settings/notification/ZenModeAutomationSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 80
    const-class v0, Lcom/android/settings/notification/ZenModeBlockedEffectsSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 81
    const-class v0, Lcom/android/settings/notification/ZenModeBypassingAppsSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 82
    const-class v0, Lcom/android/settings/notification/ZenModeCallsSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 83
    const-class v0, Lcom/android/settings/notification/ZenModeMessagesSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 84
    const-class v0, Lcom/android/settings/notification/ZenModeSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 85
    const-class v0, Lcom/android/settings/notification/ZenModeSoundVibrationSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 86
    const-class v0, Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 87
    const-class v0, Lcom/android/settings/privacy/PrivacyDashboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 88
    const-class v0, Lcom/android/settings/security/EncryptionAndCredential;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 89
    const-class v0, Lcom/android/settings/security/LockscreenDashboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 90
    const-class v0, Lcom/android/settings/security/ScreenPinningSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 91
    const-class v0, Lcom/android/settings/security/SecuritySettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 92
    const-class v0, Lcom/android/settings/security/screenlock/ScreenLockSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 93
    const-class v0, Lcom/android/settings/security/trustagent/TrustAgentSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 94
    const-class v0, Lcom/android/settings/sim/SimSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 95
    const-class v0, Lcom/android/settings/support/SupportDashboardActivity;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 96
    const-class v0, Lcom/android/settings/system/ResetDashboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 97
    const-class v0, Lcom/android/settings/system/SystemDashboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 98
    const-class v0, Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 99
    const-class v0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 100
    const-class v0, Lcom/android/settings/users/UserSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 101
    const-class v0, Lcom/android/settings/wallpaper/WallpaperSuggestionActivity;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 102
    const-class v0, Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 103
    const-class v0, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 104
    const-class v0, Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 105
    const-class v0, Lcom/google/android/settings/aware/AwareDisplaySettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 106
    const-class v0, Lcom/google/android/settings/aware/AwareSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 107
    const-class v0, Lcom/google/android/settings/aware/SilenceGestureSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 108
    const-class v0, Lcom/google/android/settings/aware/SkipGestureSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    .line 109
    const-class v0, Lcom/google/android/settings/aware/WakeScreenGestureSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public addIndex(Ljava/lang/Class;)V
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->mProviders:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getProviderValues()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object p0, p0, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->mProviders:Ljava/util/Set;

    return-object p0
.end method
